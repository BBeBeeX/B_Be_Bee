import 'dart:async';

import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/model/enum/contrast_color_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../provider/image_color_provider.dart';
import '../util/color_utils.dart';

class AudioPlayerPageState {
  final int pageId;
  final bool isHeadVisible;
  final bool hasInit;
  final Color fontColor;

  const AudioPlayerPageState({
    this.pageId = 0,
    this.isHeadVisible = false,
    this.hasInit = false,
    this.fontColor = Colors.white,
  });

  AudioPlayerPageState copyWith(
      {int? pageId, bool? isHeadVisible, bool? hasInit, Color? fontColor}) {
    return AudioPlayerPageState(
      pageId: pageId ?? this.pageId,
      isHeadVisible: isHeadVisible ?? this.isHeadVisible,
      hasInit: hasInit ?? this.hasInit,
      fontColor: fontColor ?? this.fontColor,
    );
  }
}

class AudioPlayerPageController extends StateNotifier<AudioPlayerPageState> {
  Ref ref;
  final PageController pageController;
  Timer? _headHideTimer;

  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Curve animationCurve = Curves.easeInOut;

  AudioPlayerPageController(this.ref)
      : pageController = PageController(initialPage: 0),
        super(AudioPlayerPageState()) {
    if (checkPlatform([TargetPlatform.android, TargetPlatform.iOS])) {
      state = state.copyWith(
        isHeadVisible: true,
      );
    }
  }

  Future<void> switchPage(int page) async {
    if (state.pageId != page) {
      state = state.copyWith(pageId: page);
      if (pageController.hasClients) {
        await pageController.animateToPage(
          page,
          duration: animationDuration,
          curve: animationCurve,
        );
      }
    }
  }

  Future<void> setFontColor(String coverUrl) async {
    if (!state.hasInit) {
      final mainColor = ref.watch(imageColorProvider(coverUrl));
      final playPageFontColorMode =
          ref.watch(settingsProvider).playPageFontColorMode;
      Color fontColor =
          Theme.of(Routerino.context).textTheme.bodyMedium?.color ??
              Colors.white;

      mainColor.whenData((color) {
        Future.microtask(() async {
          container
              .read(commonLoggerProvider.notifier)
              .addLog('player page get barckground color: $color');
        });

        if (color == null) {
          return Colors.grey;
        } else {
          if (playPageFontColorMode == ContrastColorEnum.blackAndWhite) {
            fontColor =
                color.computeLuminance() <= 0.5 ? Colors.white : Colors.black;
          } else if (playPageFontColorMode == ContrastColorEnum.opposite) {
            fontColor = ColorUtils.getContrastColor(color);
          }
          return color;
        }
      });

      Future.microtask(() async {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('player page set font color: $fontColor');
      });
      state = state.copyWith(
        hasInit: true,
        fontColor: fontColor,
      );
    }
  }

  void setHeadUnVisible() {
    _headHideTimer?.cancel();
    _headHideTimer = Timer(const Duration(seconds: 3), () {
      state = state.copyWith(isHeadVisible: false);
    });
  }

  void setHeadVisible() {
    state = state.copyWith(isHeadVisible: true);
    _headHideTimer?.cancel();
  }

  @override
  void dispose() {
    pageController.dispose();
    _headHideTimer?.cancel();
    super.dispose();
  }
}

final audioPlayerPageControllerProvider =
    StateNotifierProvider<AudioPlayerPageController, AudioPlayerPageState>(
        (ref) {
  return AudioPlayerPageController(ref);
}, name: 'audioPlayerPageControllerProvider');
