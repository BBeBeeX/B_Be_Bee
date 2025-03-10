import 'package:b_be_bee_app/controller/sleep_time_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';

class SleepTimerWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sleepTimerState = ref.watch(sleepTimerProvider);
    final sleepTimerController = ref.read(sleepTimerProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sleepTimerState.isTimerActive
                    ? t.widget.sleepTimerTime(minute: sleepTimerState.remainingTime.inMinutes)
                    : t.widget.setSleepTimer,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          ...[5, 10, 15, 30, 45, 60].map((minutes) {
            return InkWell(
              onTap: () {
                sleepTimerController.startTimer(minutes);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(t.utils.toMinute(minute: minutes),
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          }),

          if (sleepTimerState.isTimerActive)
            InkWell(
              onTap: () {
                sleepTimerController.cancelTimer();
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  t.widget.closeSleepTimer,
                  style: const TextStyle(fontSize: 16, color: Colors.red),
                ),
              ),
            ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
