import 'dart:io';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/pages/about/about_page.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:routerino/routerino.dart';
import '../config/init.dart';
import '../gen/strings.g.dart';
import '../model/dao/audio_info.dart';
import '../model/dao/collect_playlist.dart';
import '../model/enum/collect_type_enum.dart';
import '../pages/collects_playlist_page.dart';
import '../provider/logging/common_logs_provider.dart';
import '../util/ffmpeg_utils.dart';
import '../util/native/directories.dart';
import '../util/native/permission_helper.dart';

class FolderInfo {
  final String path;
  final bool canDelete;

  const FolderInfo({
    required this.path,
    this.canDelete = true,
  });
}

class LocalAudioBrowserState {
  final bool isLoading;
  final List<FolderInfo> folders;
  final String? error;

  const LocalAudioBrowserState({
    this.isLoading = false,
    this.folders = const [],
    this.error,
  });

  LocalAudioBrowserState copyWith({
    bool? isLoading,
    List<FolderInfo>? folders,
    String? error,
  }) {
    return LocalAudioBrowserState(
      isLoading: isLoading ?? this.isLoading,
      folders: folders ?? this.folders,
      error: error,
    );
  }
}

final localAudioBrowserProvider = StateNotifierProvider<LocalAudioBrowserController, LocalAudioBrowserState>((ref) {
  return LocalAudioBrowserController(ref);
},name: 'localAudioBrowserProvider');

class LocalAudioBrowserController extends StateNotifier<LocalAudioBrowserState> {
  Ref ref;

  LocalAudioBrowserController(this.ref) : super(const LocalAudioBrowserState()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      state = state.copyWith(isLoading: true, error: null);
      await getFilePermission();

      final defaultFolders = [
        FolderInfo(
          path: await getDefaultDestinationDirectory(),
          canDelete: false,
        ),
        FolderInfo(
          path: path.join(ref.read(settingsProvider).destination, 'audio'),
          canDelete: false,
        ),
        FolderInfo(
          path: (await getTemporaryDirectory()).path,
          canDelete: false,
        ),
      ];

      state = state.copyWith(
        isLoading: false,
        folders: defaultFolders,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: '${t.controller.loadFolderFail}: $e',
      );
    }
  }

  Future<void> addFolder(String folderPath) async {
    if (!state.folders.any((f) => f.path == folderPath)) {
      final folders = [
        ...state.folders,
        FolderInfo(path: folderPath, canDelete: true),
      ];
      state = state.copyWith(folders: folders);
    }
  }

  Future<void> removeFolder(String folderPath) async {
    final folderInfo = state.folders.firstWhere(
      (f) => f.path == folderPath,
      orElse: () => FolderInfo(path: folderPath),
    );
    
    if (folderInfo.canDelete) {
      final folders = [...state.folders];
      folders.removeWhere((f) => f.path == folderPath);
      state = state.copyWith(folders: folders);
    }
  }

  Future<void> toCollectPage(BuildContext context,Directory folder) async {
    try {
      state = state.copyWith(isLoading: true);
      final audioList = await folder.list().toList();

      final files = audioList.where((entity) {
        return entity is File && _isAudioFile(entity.path);
      }).toList();

      if (files.isEmpty) {
        await ToastUtil.show(t.localPage.noAudioFiles);
      }else{
        final folderPath = path.basename(folder.path);

        final audioList = await Future.wait(files.map((file) async {
          try{
            return await FfmpegUtils.getLocalAudioMetaData(file);
          }catch(e){
            await Future.microtask(() {
              container.read(commonLoggerProvider.notifier).addLog('$folderPath load error:${e.toString()}');
            });
            return null;
          }
        }).toList());
        final validAudioList = audioList.whereType<AudioInfo>().toList();

        if(validAudioList.isNotEmpty){
          state = state.copyWith(isLoading: false);

          await context.push(() => CollectsPlaylistPage(
            collectPlaylist: CollectPlaylist(
              id: 'local_audios_$folderPath',
                title: folderPath,
                cover: validAudioList
                    .map((song) => song.coverLocalUrl)
                    .firstWhere((cover) => cover.isNotEmpty,orElse:()=> '') ,
                songIds: validAudioList.map((song) => song.id).toList(),
                songs: validAudioList,
                createTime: DateTime.now().second,
                collectCurrentType:CollectTypeEnum.localAudios,
                collectSourceType:CollectTypeEnum.localAudios,
            ),
          ));
        }else {
          await ToastUtil.show(t.localPage.noAudioFiles);
        }
      }
    } catch (e) {
      print('load local audio error: $e');
    }
    state = state.copyWith(isLoading: false);

  }

  bool _isAudioFile(String path) {
    final extension = path.toLowerCase();
    return extension.endsWith('.mp3') ||
        extension.endsWith('.m4a') ||
        extension.endsWith('.wav') ||
        extension.endsWith('.aac') ||
        extension.endsWith('.m4s') ||
        extension.endsWith('.flac') ||
        extension.endsWith('.mp4') ||
        extension.endsWith('.ogg');
  }
} 