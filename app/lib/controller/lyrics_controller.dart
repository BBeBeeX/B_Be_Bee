import 'dart:async';

import 'package:b_be_bee_app/model/dto/lyric_line.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/util/lyrics_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LyricsState {
  final List<LyricLine>? lyrics;
  final bool isDragging;
  final bool isScrolling;
  final Duration? draggingPosition;
  final ScrollController scrollController;
  final Timer? autoScrollTimer;
  final int curLine;
  final double itemHeight;

  LyricsState({
    this.lyrics,
    this.isDragging = false,
    this.isScrolling = true,
    this.draggingPosition,
    ScrollController? scrollController,
    this.autoScrollTimer,
    this.curLine = 0,
    this.itemHeight = 60,
  }) : scrollController = scrollController ?? ScrollController();

  LyricsState copyWith({
    List<LyricLine>? lyrics,
    bool? isDragging,
    bool? isScrolling,
    Duration? draggingPosition,
    ScrollController? scrollController,
    Timer? autoScrollTimer,
    int? curLine,
    double? itemHeight,
  }) {
    return LyricsState(
      lyrics: lyrics ?? this.lyrics,
      isDragging: isDragging ?? this.isDragging,
      isScrolling: isScrolling ?? this.isScrolling,
      draggingPosition: draggingPosition,
      scrollController: scrollController ?? this.scrollController,
      autoScrollTimer: autoScrollTimer ?? this.autoScrollTimer,
        curLine: curLine?? this.curLine,
      itemHeight: itemHeight??this.itemHeight
    );
  }
}

class LyricsController extends StateNotifier<LyricsState> {
  static const int visibleLines = 8;
  static const Duration autoScrollDelay = Duration(seconds: 3);

  LyricsController() : super(LyricsState());


  void _startAutoScrollTimer() {
    state.autoScrollTimer?.cancel();
    final timer = Timer(autoScrollDelay, () {
      state = state.copyWith(isScrolling: true);
    });
    state = state.copyWith(autoScrollTimer: timer);
  }

  void startDragging() {
    state.autoScrollTimer?.cancel();
    state = state.copyWith(
      isDragging: true,
      isScrolling: false,
    );
  }

  Future<void> stopDragging() async {
    if (state.isDragging) {
      final currentLineTime = getCurrentLineTime();
      if (currentLineTime != null) {
        await CustomAudioHandler.player.seek(currentLineTime);
      }

      state = state.copyWith(
        isDragging: false,
        draggingPosition: null,
      );

      // 拖动结束后开始检测滚动
      _startAutoScrollTimer();
    }
  }

  void updateDraggingPosition(Duration position) {
    if (state.isDragging) {
      state = state.copyWith(draggingPosition: position);
    }
  }

  Duration? getCurrentLineTime() {
    if (state.lyrics == null) return null;

    final scrollPosition = state.scrollController.hasClients
        ? state.scrollController.offset
        : 0.0;

    final centerIndex = (scrollPosition / state.itemHeight).round() + 1;
    if (centerIndex >= 0 && centerIndex < state.lyrics!.length) {
      return state.lyrics![centerIndex].startTime;
    }
    return null;
  }



  Future<void> setCurLine(int curLine) async{
    await scrollToPosition(curLine,animated: true);
    state = state.copyWith(
      curLine: curLine
    );
  }

  Future<void> scrollToPosition(int lineIndex, {bool animated = true}) async {

    if (state.lyrics == null ) return;
    if (state.isDragging || !state.isScrolling ) return;

    print('scroll');
    if (lineIndex > 0) {
      final targetOffset = (lineIndex -3) * state.itemHeight;
      final maxOffset = (state.lyrics!.length - visibleLines) * state.itemHeight;
      final finalOffset = targetOffset.clamp(0.0, maxOffset);

      if (animated) {
        await state.scrollController.animateTo(
          finalOffset,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        state.scrollController.jumpTo(finalOffset);
      }
    }
  }

  void parseLyrics(String? webvtt) {
    print('webvtt: $webvtt');
    if(webvtt == null){
      print('null');

      state = state.copyWith(lyrics: []);
    }else{
      print('else');

      final lyrics = LyricsUtils.parseWebVTT(webvtt);
      state = state.copyWith(
          lyrics: lyrics,
        itemHeight:  40.0 + 20.0 * lyrics[0].translations.keys.length
      );
    }
  }

  @override
  void dispose() {
    state.autoScrollTimer?.cancel();
    state.scrollController.dispose();
    super.dispose();
  }
}

final lyricsControllerProvider =
StateNotifierProvider<LyricsController, LyricsState>((ref) {
  return LyricsController();
},name: 'lyricsControllerProvider');
