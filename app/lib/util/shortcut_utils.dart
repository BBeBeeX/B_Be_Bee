import 'dart:io';

import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../controller/collects_controller.dart';
import '../controller/main_page_controller.dart';
import '../controller/playlist_controller.dart';
import '../gen/strings.g.dart';
import '../model/enum/collect_type_enum.dart';
import '../model/enum/main_tab_enum.dart';
import '../pages/settings/settings_page.dart';
import '../widget/dialogs/input_new_collects_dialog.dart';

class ShortcutUtils {
  static handleShortcut(BuildContext context, WidgetRef ref,
      String value) async {
    switch (value) {
      case 'new_playlist':
        await ref.read(collectsProvider.notifier).createPlaylist(
          title: t.utils.newCollect,
            collectCurrentType: CollectTypeEnum.local,
            collectSourceType: CollectTypeEnum.local,
        );
        break;
    // case 'new_playlist_file':
    //   break;
      case 'quit':
        exit(0);
        break;
      case 'stop':
         ref.read(playlistControllerProvider.notifier).togglePlay();
        break;
      case 'skip':
        await ref.read(playlistControllerProvider.notifier).skipToNext(
            isCutSong: true);
        break;
      case 'previous':
        await ref.read(playlistControllerProvider.notifier).skipToPrevious(
            isCutSong: true);
        break;
      case 'cycle_repeat_mode':
        await ref.read(playlistControllerProvider.notifier).cycleRepeatMode();
        break;
      case 'volume_up':
        await ref.read(playlistControllerProvider.notifier).addVolume();
        break;
      case 'volume_down':
        await ref.read(playlistControllerProvider.notifier).subVolume();
        break;
      case 'setting':
        await context.push(()=>const SettingsPage(hasBackIcon:false));
        break;
      case 'about':
        break;
      default:
        break;
    }
  }
}