import 'dart:io';

import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../widget/dialogs/about_custom_dialog.dart';

class ShortcutUtils {
  static handleShortcut(
      BuildContext context, WidgetRef ref, String value) async {
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
        await ref
            .read(playlistControllerProvider.notifier)
            .skipToNext(isCutSong: true);
        break;
      case 'previous':
        await ref
            .read(playlistControllerProvider.notifier)
            .skipToPrevious(isCutSong: true);
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
        await context.push(() => const SettingsPage(hasBackIcon: false));
        break;
      case 'about':
        await AboutCustomDialog.open();
        break;
      default:
        break;
    }
  }
}
