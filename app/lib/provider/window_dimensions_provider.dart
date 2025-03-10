import 'dart:ui';

import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screen_retriever/screen_retriever.dart';
import 'package:window_manager/window_manager.dart';

import '../config/init.dart';
import 'logging/common_logs_provider.dart';

//TODO 桌面版最小值修改
const Size _minimalSize = Size(400, 500);
const Size _defaultSize = Size(900, 600);

class WindowDimensions {
  final Offset position;
  final Size size;

  WindowDimensions({
    required this.position,
    required this.size,
  });
}

final windowDimensionProvider = Provider<WindowDimensionsController>((ref) {
  return WindowDimensionsController();
});

class WindowDimensionsController {

  WindowDimensionsController();

  Future<void> initDimensionsConfiguration() async {

    final useSavedPlacement = HiveHelper.getSaveWindowPlacement();
    final persistedDimensions = HiveHelper.getWindowLastDimensions();
    Size initSize = _defaultSize;
    Offset position = Offset(0, 0);

    if (useSavedPlacement && persistedDimensions != null && await isInScreenBounds(persistedDimensions.position, persistedDimensions.size)) {
      initSize = persistedDimensions.size;
      position = persistedDimensions.position;
    } else {
      final primaryDisplay = await ScreenRetriever.instance.getPrimaryDisplay();
      final hasEnoughWidthForDefaultSize = primaryDisplay.digestedSize.width >= 1200;
      initSize = hasEnoughWidthForDefaultSize ? _defaultSize : _minimalSize;
    }

    await Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog('start: hidden in Tray');
    });
    doWhenWindowReady(() {
      appWindow.minSize = _minimalSize;
      appWindow.size = initSize;
      appWindow.alignment = Alignment.center;
      appWindow.position = position;
      appWindow.show();
    });
  }

  Future<bool> isInScreenBounds(Offset windowPosition, [Size? windowSize]) async {
    final displays = await ScreenRetriever.instance.getAllDisplays();
    final sumWidth = displays.fold(0.0, (previousValue, element) => previousValue + element.digestedSize.width);
    final maxHeight = displays.fold(
      0.0,
      (previousValue, element) => previousValue > element.digestedSize.height ? previousValue : element.digestedSize.height,
    );
    final minX = displays.fold(0.0, (previousValue, element) {
      final currX = element.visiblePosition?.dx ?? 0;
      return currX < previousValue ? currX : previousValue;
    });
    final minY = displays.fold(0.0, (previousValue, element) {
      final currY = element.visiblePosition?.dy ?? 0;
      return currY < previousValue ? currY : previousValue;
    });
    final checkX = windowPosition.dx >= minX && windowPosition.dx + (windowSize?.width ?? 0) <= sumWidth;
    final checkY = windowPosition.dy >= minY && windowPosition.dy + (windowSize?.height ?? 0) <= maxHeight;

    return checkX && checkY;
  }

  Future<void> storeDimensions({
    required Offset windowOffset,
    required Size windowSize,
  }) async {
    if (await isInScreenBounds(windowOffset)) {
      await HiveHelper.setWindowOffsetX(windowOffset.dx);
      await HiveHelper.setWindowOffsetY(windowOffset.dy);
      await HiveHelper.setWindowHeight(windowSize.height);
      await HiveHelper.setWindowWidth(windowSize.width);
    }
  }

  Future<void> storePosition({required Offset windowOffset}) async {
    if (await isInScreenBounds(windowOffset)) {
      await HiveHelper.setWindowOffsetX(windowOffset.dx);
      await HiveHelper.setWindowOffsetY(windowOffset.dy);
    }
  }

  Future<void> storeSize({required Size windowSize}) async {
    await HiveHelper.setWindowHeight(windowSize.height);
    await HiveHelper.setWindowWidth(windowSize.width);
  }
}

extension on Display {
  Size get digestedSize => visibleSize ?? size;
}
