import 'dart:io';

import 'package:b_be_bee_app/common/api/bili/bili_video_play_api.dart';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/download_state.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/download_file_format_enum.dart';
import 'package:b_be_bee_app/model/enum/download_status_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/ffmpeg_utils.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/lyrics_utils.dart';
import 'package:b_be_bee_app/util/native/permission_helper.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:ffmpeg_helper/ffmpeg_helper.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

// 临时文件 (await getTemporaryDirectory()).path + task.id
// audio文件 ref.read(settingsProvider).destination, 'audio', '${task.id}.${format.label}
// image ref.read(settingsProvider).destination, 'image', '${task.id}${path.extension(imagePath)}

final downloadControllerProvider =
    StateNotifierProvider<DownloadController, DownloadState>((ref) {
  return DownloadController(ref);
},name: 'downloadControllerProvider');

class DownloadController extends StateNotifier<DownloadState> {
  Ref ref;
  DownloadController(this.ref) : super(const DownloadState()) {
    _loadFromStorage();
  }

  Future<void> _loadFromStorage() async {
    final savedState = HiveHelper.getDownloadState();
    if (savedState != null) {
      state = savedState;
      await _resumeUnfinishedTasks();
    }
  }

  Future<void> _saveToStorage() async {
    await HiveHelper.setDownloadState(state);
  }

  Future<void> _resumeUnfinishedTasks() async {
    for (final task in state.tasks.values) {
      if (task.status == DownloadStatusEnum.downloading ||
          task.status == DownloadStatusEnum.pending) {
        await _startDownload(task.id);
      }
    }
  }

  Future<AudioPlayItem?> _getBiliAudio(AudioInfo audioInfo,AudioQuality targetQuality) async {
    final videoInfo = await BiliVideoPlayApi.getVideoInfo(audioInfo.onlineId);

    final video = await BiliVideoPlayApi.getVideoPlay(
        bvid: videoInfo.bvid ?? '',
        cid: videoInfo.cid ?? 0,
        isVip: ref.read(biliUserProvider.notifier).isVip()
    );
    final audioPlayItem = video
        .findBestAudioPlayItemByQuality(targetQuality)
    ?.copyWith(audioType: AudioSourceTypeEnum.bili);

    return audioPlayItem;
  }

  Future<void> addDownloads(List<AudioInfo> audioInfos) async {
    for (var audio in audioInfos) {
       await addDownload(audio);
    }
  }


  Future<void> addDownload(AudioInfo audioInfo) async {
    await getFilePermission();
    bool isPresentFFmpeg = await FfmpegUtils.checkDesktopFFmpeg();

    await Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog('Download: check ${isPresentFFmpeg? 'present':'not present'} ffmpeg');
    });
    if(!isPresentFFmpeg){
      await ToastUtil.show('not install ffmpeg');
      return;
    }

    AudioPlayItem? audioPlayItem = await getAudioPlayItemFromAudioInfo(audioInfo);

    if(audioPlayItem == null){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('get source type error: ${audioInfo.id}');
      });
      final task = DownloadTask(
        id: audioInfo.id,
        audioInfo: audioInfo,
        status: DownloadStatusEnum.error,
      );
      state = state.copyWith(
        tasks: {...state.tasks, audioInfo.id: task},
        downloadQueue: [...state.downloadQueue, audioInfo.id],
      );

    }else{
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('start downloading: ${audioInfo.id}');
      });

      final task = DownloadTask(
        id: audioInfo.id,
        audioInfo: audioInfo,
        audioItem: audioPlayItem,
        status: DownloadStatusEnum.pending,
      );

      state = state.copyWith(
        tasks: {...state.tasks, audioInfo.id: task},
        downloadQueue: [...state.downloadQueue, audioInfo.id],
      );

      if (!state.isPaused) {
        await _startDownload(audioInfo.id);
      }
    }

    await _saveToStorage();
  }

  // 开始下载
  Future<void> _startDownload(String id) async {

    final task = state.tasks[id];
    if (task == null || task.audioItem == null) return;

    if(task.status.isBefore(DownloadStatusEnum.downloadSuccess)){
      final tempFile = await _downloadFile(task);
      if (tempFile == null) {
        return;
      }
    }

    String? lyrics;
    if(task.status.isBefore(DownloadStatusEnum.lyricsSuccess)){
      lyrics = await _downloadLyrics(task);
    }

    bool hasImage = false;
    if(task.status.isBefore(DownloadStatusEnum.imageSuccess)) {
      hasImage = await _downloadImage(task);
    }

    if(task.status.isBefore(DownloadStatusEnum.convertSuccess)) {
       await _convertFileFormat(task,hasImage,lyrics);
    }
  }

  // 暂停所有下载
  Future<void> pauseAll() async {
    state = state.copyWith(isPaused: true);
    for (final task in state.tasks.values) {
      await _downloadStatusToPaused(task);
    }
  }

  Future<void> resumeAll() async {
    state = state.copyWith(isPaused: false);
    for (final task in state.tasks.values) {
      if (task.status.isPaused()) {
        await _pausedToDownloadStatus(task);
      }
    }
  }

  Future<void> cancelDownload(String id) async {
    final task = state.tasks[id];
    if (task == null) return;

    // 从队列中移除
    final newQueue = List<String>.from(state.downloadQueue)..remove(id);
    
    // 从任务列表中移除
    final newTasks = Map<String, DownloadTask>.from(state.tasks)..remove(id);

    state = state.copyWith(
      tasks: newTasks,
      downloadQueue: newQueue,
    );
    await _saveToStorage();
  }

  Future<void> retryDownload(String id) async {
    final task = state.tasks[id];
    if (task == null) return;

    await _updateTask(
      id,
      status: DownloadStatusEnum.pending,
      progress: 0.0,
      error: null
    );

    if (!state.isPaused) {
      await _startDownload(id);
    }
  }

  Future<void> clearCompleted() async {
    final newTasks = Map<String, DownloadTask>.from(state.tasks)
      ..removeWhere((_, task) => task.status == DownloadStatusEnum.completed);
    
    state = state.copyWith(tasks: newTasks);
    await _saveToStorage();
  }

  Future<void> clearAll() async {
    state = const DownloadState();
    await _saveToStorage();
  }

  Future<File?> _downloadFile(DownloadTask task) async {
    try {
      await _updateTask(task.id,status: DownloadStatusEnum.downloading);

      final tempPath = await _getTempFilePath(task.id);
      await _deleteFile(tempPath);
      final tempFile = File(tempPath);
      await _ensureDirectoryExists(tempPath);

      switch(task.audioItem!.audioType){
        case AudioSourceTypeEnum.local:
          break;
        case AudioSourceTypeEnum.bili_music:
        case AudioSourceTypeEnum.bili:
          await RhttpUtils().downloadBiliAudio(
            url: task.audioItem!.urls.first,
            onSendProgress: (progress) {
              _updateTask(task.id, progress: progress);
            },
            id: task.id,
            tempPath: tempPath
          );
          break;
      }
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: download success ${task.id}');
      });
      await _updateTask(task.id,status: DownloadStatusEnum.downloadSuccess);
      return tempFile;

    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: download fail ${task.id}\n${e.toString()}');
      });

      await _updateTask(task.id,status: DownloadStatusEnum.error,error: e.toString());
      return null;
    }
  }

  Future<bool> _convertFileFormat(DownloadTask task,bool hasImage,String? lyrics) async {
    try {
      await _updateTask(task.id, status: DownloadStatusEnum.converting);

      final tempFilePath = await _getTempFilePath(task.id) ;
      final destinationPath = await _getAudioFilePath(task.id);
      await _deleteFile(destinationPath);
      await _ensureDirectoryExists(destinationPath);
      final imageSavePath = await _getImageFilePath(task.id,task.audioInfo.coverWebUrl);

      await _convertFileFormatDetail(task,tempFilePath,hasImage,imageSavePath,lyrics,destinationPath);

    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: convert file failure : ${e.toString()}');
      });
      await _updateTask(task.id, status: DownloadStatusEnum.error,error: t.controller.fileFormatConversionError);
    }
    return false;
  }

  Future<bool> _convertFileFormatDetail(DownloadTask task,
      String tempFilePath,
      bool hasImage,
      String imageSavePath,
      String? lyrics,
      String destinationPath)async{
    try{

      final ac = switch(ref.read(settingsProvider).downloadFileFormat) {
        DownloadFileFormatEnum.mp4 =>
            CustomArgument(['-c:a', 'copy', '-f', 'mp4']),
        DownloadFileFormatEnum.flac =>
            CustomArgument(['-c:a', 'flac']),
      };
      FFMpegCommand cliCommand = FFMpegCommand(
        inputs: [
          FFMpegInput.asset(tempFilePath),
          if(hasImage)
            FFMpegInput.asset(imageSavePath),
        ],
        args: [
          CustomArgument(['-y']),
          CustomArgument(['-map', '0:a']),
          if(hasImage)
            CustomArgument(['-map', '1:v']),
          if(hasImage)
            CustomArgument(['-c:v', 'libx264', '-tune', 'stillimage']),
          if(hasImage)
            CustomArgument(['-vf', 'scale=trunc(iw/2)*2:trunc(ih/2)*2,format=yuv420p']),
          ac,
          CustomArgument(['-metadata', 'title="${task.audioInfo.title.replaceAll('\'', '"')}"']),
          CustomArgument(['-metadata', 'artist="${task.audioInfo.upper.name.replaceAll('\'', '"')}"']),
          CustomArgument(['-metadata', 'duration=${task.audioInfo.duration}']),
          if(lyrics!=null)
            CustomArgument(['-metadata', 'LYRICS="${lyrics.replaceAll('\'', '"')}"']),
          if(hasImage)
            CustomArgument(['-disposition:v:1', 'attached_pic']),
        ],
        outputFilepath: destinationPath,
      );

      print(cliCommand.toCli());
      FFMpegHelperSession session = await FFMpegHelper.instance.runAsync(
          cliCommand,
          onComplete: (File? file) async {
            if (file!=null) {
              await _deleteFile(tempFilePath);
              await _updateTask(task.id, status: DownloadStatusEnum.convertSuccess);

              await Future.microtask(() {
                container.read(commonLoggerProvider.notifier).addLog('Download: has convert audio type ${task.id}');
              });

              await _complete(task,hasImage);
              return true;
            } else {
              await Future.microtask(() {
                container.read(commonLoggerProvider.notifier).addLog('Download: convert file failure');
              });

              await _updateTask(task.id, status: DownloadStatusEnum.error,error: t.controller.fileFormatConversionError);
            }
          }
      );

    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: convert file failure : ${e.toString()}');
      });
      await _updateTask(task.id, status: DownloadStatusEnum.error,error: t.controller.fileFormatConversionError);
    }
    return false;
  }

  Future<String?> _downloadLyrics(DownloadTask task) async{

    try{
      if(!ref.read(settingsProvider).isDownloadLyrics){
        await _updateTask(task.id, status: DownloadStatusEnum.lyricsSuccess);
      }

      await _updateTask(task.id, status: DownloadStatusEnum.lyrics);
      final lyrics =await LyricsUtils.getAudioLyrics(ref,task.audioInfo);
      await _updateTask(task.id, status: DownloadStatusEnum.lyricsSuccess);
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: download lyrics success ${task.id}');
      });
      return lyrics;
    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: download lyrics error : ${e.toString()}');
      });
    }
    return null;
  }

  Future<bool> _downloadImage(DownloadTask task) async {

    try{
      if(!ref.read(settingsProvider).isDownloadCover){
        await _updateTask(task.id, status: DownloadStatusEnum.imageSuccess);
      }

      await _updateTask(task.id, status: DownloadStatusEnum.image);

      final imagePath = task.audioInfo.coverWebUrl;
      final imageSavePath = await _getImageFilePath(task.id,imagePath);
      await _deleteFile(imageSavePath);
      await _ensureDirectoryExists(imageSavePath);

      final imageBits = await RhttpUtils.downloadFile( url: imagePath, savePath: imageSavePath);

      if(imageBits != null){
        await _updateTask(task.id, status: DownloadStatusEnum.imageSuccess);

        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog('Download: download cover success ${task.id}');
        });
        return true;
      }else{
        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog('Download: download image : download cover error');
        });
      }
    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: download image : ${e.toString()}');
      });
    }
    return false;
  }

  Future<File?> _complete(DownloadTask task,bool hasImage) async{
    final audioPath = await _getAudioFilePath(task.id);
    final imagePath = task.audioInfo.coverWebUrl;
    final imageSavePath = await _getImageFilePath(task.id,imagePath);

    final audios = task.audioItem?.copyWith(
        urls: [audioPath],
        audioType: AudioSourceTypeEnum.local
    );

    final audioInfo = task.audioInfo.copyWith(
        audioCurrentType: AudioSourceTypeEnum.local,
        localPath: audioPath,
        coverLocalUrl: hasImage?imageSavePath:''
    );

    await HiveHelper.saveAudioInfo(audioInfo);

    await _updateTask(
      task.id,
      status: DownloadStatusEnum.completed,
      audioInfo: audioInfo,
      audioItem: audios
    );
    return null;
  }

  Future<void> cancelTask(String taskId) async {
    final task = state.tasks[taskId];
    if (task == null) return;

    await _updateTask(taskId, status: DownloadStatusEnum.canceled);
    RhttpUtils().cancelRequests(taskId);
  }

  Future<void> deleteTask(String taskId) async {
    final task = state.tasks[taskId];
    if (task == null) return;

    // 如果任务正在进行，先取消
    if (task.status == DownloadStatusEnum.downloading ||
        task.status == DownloadStatusEnum.converting) {
      await cancelTask(taskId);
    }

    // 删除文件
    final tempFile = File(await _getTempFilePath(task.id));
    if (await tempFile.exists()) {
      await tempFile.delete();
    }
    final coverFile = File(task.audioInfo.coverLocalUrl);
    if (await coverFile.exists()) {
      await coverFile.delete();
    }
    final audioFile = File(task.audioItem!.urls.first);
    if (await audioFile.exists()) {
      await audioFile.delete();
    }

    final audioInfo = task.audioInfo.copyWith(
        audioCurrentType: task.audioInfo.audioSourceType,
        localPath: '',
        coverLocalUrl: ''
    );
    await HiveHelper.saveAudioInfo(audioInfo);

    final newTasks = Map<String, DownloadTask>.from(state.tasks);
    newTasks.remove(taskId);
    state = state.copyWith(tasks: newTasks);
  }

  Future<void> _updateTask(
      String taskId, {
        DownloadStatusEnum? status,
        double? progress,
        String? error,
        String? localPath,
        AudioInfo? audioInfo,
        AudioPlayItem? audioItem,
      }) async {
    final task = state.tasks[taskId];
    if (task == null) return;

    final updatedTask = task.copyWith(
      status: status ?? task.status,
      progress: progress ?? task.progress,
      error: error ?? task.error,
      localPath: localPath ?? task.localPath,
        audioInfo: audioInfo?? task.audioInfo,
        audioItem: audioItem ?? task.audioItem
    );

    state = state.copyWith(
      tasks: {...state.tasks, taskId: updatedTask},
    );

    await _saveToStorage();
  }

  Future<void> _deleteFile(String path) async {
    final tempFile = File(path);

    if(await tempFile.exists()){
    await tempFile.delete();
    }
  }

  Future<void> _downloadStatusToPaused(DownloadTask task)async {
    switch(task.status) {
      case DownloadStatusEnum.error:
      case DownloadStatusEnum.canceled:
      case DownloadStatusEnum.pending:
      case DownloadStatusEnum.downloadPaused:
      case DownloadStatusEnum.convertPaused:
      case DownloadStatusEnum.imagePaused:
      case DownloadStatusEnum.completed:
      case DownloadStatusEnum.completedPaused:
      case DownloadStatusEnum.lyricsPaused:
        break;
      case DownloadStatusEnum.downloading:
        await _updateTask(task.id, status: DownloadStatusEnum.downloadPaused);
        break;
      case DownloadStatusEnum.downloadSuccess:
      case DownloadStatusEnum.lyrics:
        await _updateTask(task.id, status: DownloadStatusEnum.lyricsPaused);
        break;
      case DownloadStatusEnum.lyricsSuccess:
      case DownloadStatusEnum.image:
        await _updateTask(task.id, status: DownloadStatusEnum.imagePaused);
        break;
      case DownloadStatusEnum.imageSuccess:
      case DownloadStatusEnum.converting:
        await _updateTask(task.id, status: DownloadStatusEnum.convertPaused);
        break;
      case DownloadStatusEnum.convertSuccess:
        await _updateTask(task.id, status: DownloadStatusEnum.completedPaused);
        break;
    }
  }

  Future<void> _pausedToDownloadStatus(DownloadTask task) async {
    switch(task.status) {
      case DownloadStatusEnum.error:
      case DownloadStatusEnum.canceled:
      case DownloadStatusEnum.pending:
      case DownloadStatusEnum.completed:
      case DownloadStatusEnum.downloading:
      case DownloadStatusEnum.downloadSuccess:
      case DownloadStatusEnum.converting:
      case DownloadStatusEnum.convertSuccess:
      case DownloadStatusEnum.image:
      case DownloadStatusEnum.imageSuccess:
      case DownloadStatusEnum.downloadPaused:
      case DownloadStatusEnum.lyrics:
      case DownloadStatusEnum.lyricsSuccess:
        await _updateTask(task.id, status: DownloadStatusEnum.downloading);
        break;
      case DownloadStatusEnum.completedPaused:
        await _updateTask(task.id, status: DownloadStatusEnum.imageSuccess);
        break;
      case DownloadStatusEnum.imagePaused:
        await _updateTask(task.id, status: DownloadStatusEnum.image);
        break;
      case DownloadStatusEnum.convertPaused:
        await _updateTask(task.id, status: DownloadStatusEnum.converting);
        break;
      case DownloadStatusEnum.lyricsPaused:
        await _updateTask(task.id, status: DownloadStatusEnum.lyrics);
    }
  }

  Future<String> _getTempFilePath(String id) async {
    return path.join((await getTemporaryDirectory()).path, 'b_be_bee', id);
  }

  Future<String> _getAudioFilePath(String id) async {
    final format = ref.read(settingsProvider).downloadFileFormat;
    return path.join(ref.read(settingsProvider).destination, 'audio', '$id.${format.label}');
  }

  Future<String> _getImageFilePath(String id,String imagePath) async {
    return path.join(ref.read(settingsProvider).destination, 'image', '$id${path.extension(imagePath)}');
  }

  Future<void> _clearTempFiles() async {
    final tempPath = path.join((await getTemporaryDirectory()).path, 'b_be_bee');
    final directory = Directory(tempPath);

    if (await directory.exists()) {
      try {
        var files = directory.listSync();

        for (var file in files) {
          if (file is File) {
            await file.delete();
            await Future.microtask(() {
              container.read(commonLoggerProvider.notifier).addLog('clean temp file ${file.path}');
            });
          }
        }
        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog('All files deleted in tempPath: $tempPath');
        });
      } catch (e) {

        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog('clean temp file error: $e');
        });
      }
    } else {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('temp directory not exist');
      });
    }
  }

  Future<void> _ensureDirectoryExists(String filePath)async {
    String parentDir = path.dirname(filePath);
    Directory directory = Directory(parentDir);
    bool exists = await directory.exists();

    if (!exists) {
      await directory.create(recursive: true);
      ref.read(commonLoggerProvider.notifier).addLog('create dir: ${directory.path}');
    }
  }

  Future<AudioPlayItem?> getAudioPlayItemFromAudioInfo(AudioInfo audioInfo)async{
    AudioPlayItem? audioPlayItem;
    final needAudioQuality = ref.read(settingsProvider).downloadQuality;

    switch(audioInfo.audioCurrentType){
      case AudioSourceTypeEnum.local:
        break;
      case AudioSourceTypeEnum.bili_music:
      case AudioSourceTypeEnum.bili:
        audioPlayItem = await _getBiliAudio(audioInfo,needAudioQuality);
        break;
    }

    if(audioPlayItem == null){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('get current type error: ${audioInfo.id}');
      });

      switch(audioInfo.audioSourceType){
        case AudioSourceTypeEnum.local:
          break;
        case AudioSourceTypeEnum.bili_music:
        case AudioSourceTypeEnum.bili:
          audioPlayItem = await _getBiliAudio(audioInfo,needAudioQuality);
          break;
      }
    }

    return audioPlayItem;
  }

  bool checkFileExists(String id) {
    final song = HiveHelper.getAudioInfo(id);
    if (song == null) return false;

    try{
      if (!File(song.localPath).existsSync()) {
        return false;
      }

      return true;
    }catch(e){
      Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('download controller checkFileExists id: $id error :${e.toString()}');
      });
      return false;
    }
  }

  ///暂时只支持安卓
  Future<void> setAndroidRingtone(AudioInfo audioInfo) async {
    await ToastUtil.show(t.controller.setRingtone);

    await getFilePermission();

    String ringtonePath;
    String format;

    if(audioInfo.audioSourceType == AudioSourceTypeEnum.local){
      final audioFile = File(audioInfo.localPath);
      if (!(await audioFile.exists())) {
        return;
      }
      format = path.extension(audioFile.path); // 获取文件后缀名
      ringtonePath = '${Directory('/storage/emulated/0/Ringtones/').path}${audioInfo.title}.$format';
      await _ensureDirectoryExists(ringtonePath);
      await _deleteFile(ringtonePath);
      await audioFile.copy(ringtonePath);
    }else{
      await addDownload(audioInfo);
      final audioFile = File(await _getAudioFilePath(audioInfo.id));
      if (!(await audioFile.exists())) {
        return;
      }
      format = ref.read(settingsProvider).downloadFileFormat.label;
      ringtonePath = '${Directory('/storage/emulated/0/Ringtones/').path}${audioInfo.title}.$format';
      await _ensureDirectoryExists(ringtonePath);
      await _deleteFile(ringtonePath);
      await audioFile.copy(ringtonePath);
    }

    try{
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('copy ringtone file success');
      });

    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog("copy ringtone file error: '${e.toString()}'.");
      });
      await ToastUtil.show(t.controller.setRingtoneFailedForCopyingFileError);
      return;
    }

    try {
      const MethodChannel ringtoneChannel = MethodChannel(Constants.channelId);
      await ringtoneChannel.invokeMethod(
          'setRingtone',
          {'audioFilePath': ringtonePath,
            'format': format,
            'title':audioInfo.title,
          });
      await ToastUtil.show(t.controller.setRingtoneSuccess);

    } on PlatformException catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog("Failed to set ringtone: '${e.message}'.");
      });
      await ToastUtil.show(t.controller.setRingtoneFailed);
    }
  }

}

