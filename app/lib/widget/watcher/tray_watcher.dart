import 'dart:io';

import 'package:b_be_bee_app/pages/player_page/audio_player_page.dart';
import 'package:b_be_bee_app/pages/settings/settings_page.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/util/native/tray_helper.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';
import 'package:tray_manager/tray_manager.dart';

import '../../controller/playlist_controller.dart';

class TrayWatcher extends ConsumerStatefulWidget {
  final Widget child;

  const TrayWatcher({required this.child, super.key});

  @override
  ConsumerState<TrayWatcher> createState() => _TrayWatcherState();
}

class _TrayWatcherState extends ConsumerState<TrayWatcher> with TrayListener {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    trayManager.addListener(this);
  }

  @override
  void dispose() {
    trayManager.removeListener(this);
    super.dispose();
  }

  @override
  void onTrayIconMouseDown() async {
    if (checkPlatform([TargetPlatform.macOS])) {
      await trayManager.popUpContextMenu();
    } else {
      await showFromTray();
    }
  }

  @override
  void onTrayIconRightMouseDown() async {
    await trayManager.popUpContextMenu();
  }

  @override
  void onTrayMenuItemClick(MenuItem menuItem) async {
    final entry = TrayEntry.values.firstWhereOrNull((e) => e.name == menuItem.key);
    switch (entry) {
      case TrayEntry.song:
        Routerino.context.push(()=>AudioPlayerPage());
        break;
      case TrayEntry.togglePlay:
        ref.read(playlistControllerProvider.notifier).togglePlay();
        break;
      case TrayEntry.previous:
        ref.read(playlistControllerProvider.notifier).skipToPrevious();
        break;
      case TrayEntry.next:
        ref.read(playlistControllerProvider.notifier).skipToNext();
        break;
      case TrayEntry.settings:
        Routerino.context.push(()=>SettingsPage());
        break;
      case TrayEntry.open:
        await showFromTray();
        break;
      case TrayEntry.close:
        exit(0);
      default:
    }
  }
}
