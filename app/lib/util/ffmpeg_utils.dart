import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:ffmpeg_helper/ffmpeg_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:routerino/routerino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../config/init.dart';
import '../gen/strings.g.dart';
import '../model/dao/audio_info.dart';
import '../model/dao/upper.dart';
import '../model/enum/audio_source_type_enum.dart';
import '../provider/logging/common_logs_provider.dart';
import '../widget/dialogs/download_ffmpeg_linux_dialog.dart';
import '../widget/dialogs/download_ffmpeg_windows_dialog.dart';
import 'package:crypto/crypto.dart';

class FfmpegUtils {

  static Future<AudioInfo?> getLocalAudioMetaData(FileSystemEntity file) async {

    final coverPath = await _saveCover(file);

    MediaInformation? res = await FFMpegHelper.instance.runProbe(file.path);
    if (res != null) {
      final tags = res.getFormatProperty('tags');
      return AudioInfo(
        title: tags['title'] ?? file.uri.pathSegments.last?? 'Unknown song',
        id: 'local_audios_${tags['title'] ?? file.hashCode}',
        duration: double.parse(res.getDuration() ?? '0').toInt(),
        audioCurrentType: AudioSourceTypeEnum.local,
        audioSourceType: AudioSourceTypeEnum.local,
        localPath: file.path,
        upper: Upper(name: tags['artist'] ?? ''),
        coverLocalUrl: coverPath ?? '',
          lyrics: tags['lyrics']
      );
    } else {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('ffprobe null');
      });
    }
    return null;
  }

  static Future<void> downloadFFMpeg() async {
    if (Platform.isWindows) {
      await ToastUtil.show('${t.utils.downloading} ffmpeg...');

      await DownloadFfmpegWindowsDialog.open(Routerino.context);

      Future<bool> isSuccess = FFMpegHelper.instance.setupFFMpegOnWindows(
        onProgress: (FFMpegProgress progress) {
          downloadFFmpegProgress.value = progress;
          print('progress ${progress.downloaded}');
        },
      );

      bool ffmpegPresent = await isSuccess;

      Navigator.of(Routerino.context).pop();

      if (ffmpegPresent) {
        await ToastUtil.show(t.utils.downloadFFmpegSuccess);

        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog('Download: download ffmpeg : success');
        });
      } else {
        await ToastUtil.show(t.utils.downloadFFmpegFailed);

        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog(
              'Download: download ffmpeg : fail');
        });
      }


    } else if (Platform.isLinux) {
      await DownloadFfmpegLinuxDialog.open(Routerino.context);

      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Download: linux system not present ffmpeg');
      });
    }
  }

  static Future<bool> checkDesktopFFmpeg() async{
    final isPresent = await FFMpegHelper.instance.isFFMpegPresent();

    if(!isPresent){
      await FfmpegUtils.downloadFFMpeg();
    }
    return await FFMpegHelper.instance.isFFMpegPresent();
  }


  static Future<String?> _saveCover(FileSystemEntity file) async {
    final fileName = file.uri.pathSegments.last;
    final directory = await getTemporaryDirectory();
    final saveCoverPath = path.join(directory.path, '${getMd5Hash(fileName)}.jpg');

    if (File(saveCoverPath).existsSync()) {
      return saveCoverPath;
    }

    try{
      FFMpegCommand cliCommand = FFMpegCommand(
        inputs: [
          FFMpegInput.asset(file.path),
        ],
        args: [
          CustomArgument(['-y']),
          CustomArgument(['-vframes', '1']),
        ],
        outputFilepath: saveCoverPath,
      );
      FFMpegHelperSession? session = await FFMpegHelper.instance.runAsync(
        cliCommand,
      );
      int? exitCode = await session.windowSession?.exitCode;
      ReturnCode? exitCodem = await session.nonWindowSession?.getReturnCode();
      while (exitCode == null && exitCodem == null) {
        exitCode = await session.windowSession?.exitCode;
        exitCodem = await session.nonWindowSession?.getReturnCode();
        await Future.delayed(Duration(milliseconds: 50));
      }

      if(exitCode == ReturnCode.success || (exitCodem?.isValueSuccess() ??false)){
        return saveCoverPath;
      }
    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('_saveCover error : ${e.toString()}');
      });
    }
    return null;

  }

  static String getMd5Hash(String input) {
    final bytes = utf8.encode(input);
    final hash = md5.convert(bytes);
    return hash.toString();
  }

}

ValueNotifier<FFMpegProgress> downloadFFmpegProgress =
ValueNotifier<FFMpegProgress>(FFMpegProgress(
  downloaded: 0,
  fileSize: 0,
  phase: FFMpegProgressPhase.inactive,
));