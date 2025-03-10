import 'dart:async';

import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';

class SleepTimerState {
  final bool isTimerActive;
  final Duration remainingTime;

  SleepTimerState({
    this.isTimerActive = false,
    this.remainingTime = const Duration(),
  });

  SleepTimerState copyWith({
    bool? isTimerActive,
    Duration? remainingTime,
  }) {
    return SleepTimerState(
      isTimerActive: isTimerActive ?? this.isTimerActive,
      remainingTime: remainingTime ?? this.remainingTime,
    );
  }
}

class SleepTimerController extends StateNotifier<SleepTimerState> {
  Timer? _timer;
  Timer? _updateTimer;
  final Ref ref;


  SleepTimerController(this.ref) : super(SleepTimerState());

  void startTimer(int minutes) {
    final totalDuration = Duration(minutes: minutes);
    state = state.copyWith(isTimerActive: true, remainingTime: totalDuration);

    _timer = Timer(totalDuration, () async {
      await ref.watch(playlistControllerProvider.notifier).pause();
      await ToastUtil.show( t.controller.timerExpiresStopMusic);
      cancelTimer();
    });

  }

  void cancelTimer() {
    _timer?.cancel();
    _updateTimer?.cancel();
    state = state.copyWith(isTimerActive: false, remainingTime: const Duration());  }


  @override
  void dispose() {
    cancelTimer();
    super.dispose();
  }
}

final sleepTimerProvider = StateNotifierProvider<SleepTimerController, SleepTimerState>((ref) {
  return SleepTimerController(ref);
},name: 'sleepTimerProvider');