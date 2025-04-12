import 'package:b_be_bee_app/util/native/channel/macos_channel.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:windows_taskbar/windows_taskbar.dart';

import '../../config/init.dart';
import '../../controller/playlist_controller.dart';
import '../../provider/logging/common_logs_provider.dart';

enum TaskbarIcon { regular, error, success }

class TaskbarHelper {
  static final _isMacos = checkPlatform([TargetPlatform.macOS]);


  static Future<void> setTaskbarIcon(TaskbarIcon icon) async {
    if (_isMacos) {
      await setDockIcon(icon);
    }
  }

  static void enableThumbnailToolbar(Ref ref) {
    try{
      WindowsTaskbar.setThumbnailToolbar(
        [
          ThumbnailToolbarButton(
            ThumbnailToolbarAssetIcon('assets/icons/previous_icon.ico'),
            'previous',
                () async {
              await ref.read(playlistControllerProvider.notifier).skipToPrevious();
            },
          ),
          ThumbnailToolbarButton(
            ThumbnailToolbarAssetIcon('assets/icons/pause_icon.ico'),
            'pause',
                () async {
              await ref.read(playlistControllerProvider.notifier).pause();
            },
          ),
          ThumbnailToolbarButton(
            ThumbnailToolbarAssetIcon('assets/icons/next_icon.ico'),
            'next',
                () async {
              await ref.read(playlistControllerProvider.notifier).skipToNext();
            },
          ),
        ],
      );
    }catch(e){
      container.read(commonLoggerProvider.notifier)
          .addLog('TaskbarHelper enableThumbnailToolbar error: $e');
    }
  }

  static void pauseThumbnailToolbar(Ref ref) {
    try{
      WindowsTaskbar.setThumbnailToolbar(
        [
          ThumbnailToolbarButton(
            ThumbnailToolbarAssetIcon('assets/icons/previous_icon.ico'),
            'previous',
                () async {
              await ref.read(playlistControllerProvider.notifier).skipToPrevious();
            },
          ),
          ThumbnailToolbarButton(
            ThumbnailToolbarAssetIcon('assets/icons/play_icon.ico'),
            'play',
                () async {
              await ref.read(playlistControllerProvider.notifier).play();
            },
          ),
          ThumbnailToolbarButton(
            ThumbnailToolbarAssetIcon('assets/icons/next_icon.ico'),
            'next',
                () async {
              await ref.read(playlistControllerProvider.notifier).skipToNext();
            },
          ),
        ],
      );
    }catch(e){
      container.read(commonLoggerProvider.notifier)
          .addLog('TaskbarHelper pauseThumbnailToolbar error: $e');
    }
  }
}

