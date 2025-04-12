import 'dart:io';

import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/gen/assets.gen.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/provider/animation_provider.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:tray_manager/tray_manager.dart' as tm;
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

final _logger = Logger('TrayHelper');

enum TrayEntry {
  open,
  song,
  togglePlay,
  previous,
  next,
  settings,
  close,
}

Future<void> initTray() async {
  if (!checkPlatformHasTray()) {
    return;
  }
  try {
    if (checkPlatform([TargetPlatform.windows])) {
      await tm.trayManager.setIcon(Assets.img.logo);
    } else if (checkPlatform([TargetPlatform.macOS])) {
      // The menu bar icon will created in AppDelegate.swift
      return;
    } else if (checkPlatform([TargetPlatform.linux])) {
      String icon;
      if (await File('/.flatpak-info').exists()) {
        // Icon for Flatpak, which must exist in /app/share/icons/hicolor/*x*/apps.
        icon = 'com.b_be_bee.b_be_bee_app-tray';
      } else {
        icon = Assets.img.logo32White.path;
      }
      _logger.info('Using "$icon" as path of system tray icon');
      await tm.trayManager.setIcon(icon);
    } else {
      await tm.trayManager.setIcon(Assets.img.logo32.path);
    }

    await setTray();

    if (!checkPlatform([TargetPlatform.linux])) {
      await tm.trayManager.setToolTip(t.appName);
    }
  } catch (e) {
    _logger.warning('Failed to init tray', e);
  }
}

Future<void> setTray({String? songName,bool isPlaying = false})async{
  final items = [

    if(songName!=null)
    tm.MenuItem(
      key: TrayEntry.song.name,
      label: songName,
    ),

    MenuItem.separator(),

    tm.MenuItem(
      key: TrayEntry.previous.name,
      label: '上一首',
    ),

    tm.MenuItem(
      key: TrayEntry.togglePlay.name,
      label: isPlaying?'暂停':'播放',
    ),

    tm.MenuItem(
      key: TrayEntry.next.name,
      label: '下一首',
    ),

    MenuItem.separator(),

    tm.MenuItem(
      key: TrayEntry.settings.name,
      label: '设置',
    ),

    MenuItem.separator(),

    tm.MenuItem(
      key: TrayEntry.close.name,
      label: defaultTargetPlatform == TargetPlatform.windows ? t.tray.closeWindows : t.tray.close,
    ),
  ];
  await tm.trayManager.setContextMenu(tm.Menu(items: items));
}

Future<void> hideToTray() async {
  await windowManager.hide();
  if (checkPlatform([TargetPlatform.macOS])) {
    await windowManager.setSkipTaskbar(true);
  }

  container.read(sleepProvider.notifier).toTrue();
}

Future<void> showFromTray() async {
  await windowManager.show();
  await windowManager.focus();
  if (checkPlatform([TargetPlatform.macOS])) {
    await windowManager.setSkipTaskbar(false);
  }

  container.read(sleepProvider.notifier).toFalse();
}

Future<void> destroyTray() async {
  if (!checkPlatform([TargetPlatform.linux])) {
    await tm.trayManager.destroy();
  }
}
