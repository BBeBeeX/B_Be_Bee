import 'dart:math';

import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsEqualizerControlWidget extends ConsumerWidget {
  const SettingsEqualizerControlWidget({
    super.key,
  });

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => const Dialog(
        child: SettingsEqualizerControlWidget(),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eqValue = ref.watch(settingsProvider).equalizerValue;

    Future<void> updateEqualizerValue(int index, double value) async {
      final newValue = List<double>.from(eqValue);
      newValue[index] = value;
      ref.read(settingsProvider.notifier).setEqualizerValue(newValue);
    }

    final hz = ['60 Hz', '230 Hz', '910 Hz', '3600 Hz', '14000 Hz'];

    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '动态效果器',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 400,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  for (int i = 0; i < 5; i++)
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: VerticalSlider(
                              min: -1.5,
                              max: 1.5,
                              value: eqValue[i],
                              onChanged: (value) {
                                updateEqualizerValue(i, value);
                              },
                            ),
                          ),
                          Text(hz[i]),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VerticalSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final ValueChanged<double>? onChanged;

  const VerticalSlider({
    super.key,
    required this.value,
    this.min = 0.0,
    this.max = 1.0,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      alignment: Alignment.bottomCenter,
      child: Transform.rotate(
        angle: -pi / 2,
        child: Container(
          width: 400.0,
          height: 400.0,
          alignment: Alignment.center,
          child: Slider(
            value: value.clamp(min, max),
            min: min,
            max: max,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
