import 'dart:async';

import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AudioPlayerPageState {
  final int pageId;
  final bool isHeadVisible;
  final bool hasInit;
  final Color? fontColor;

  const AudioPlayerPageState(
      {this.pageId = 0,
      this.isHeadVisible = false,
      this.hasInit = false,
      this.fontColor});

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
  final PageController pageController;
  Timer? _headHideTimer;

  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Curve animationCurve = Curves.easeInOut;

  AudioPlayerPageController()
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
  return AudioPlayerPageController();
}, name: 'audioPlayerPageControllerProvider');
