import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/seek_dragging_provider.dart';

class CustomSlider extends ConsumerWidget {
  final double value;
  final double max;
  final ValueChanged<double> onChanged;
  final bool isColumn;
  final Color? fontColor;

  const CustomSlider({
    required this.value,
    required this.max,
    required this.onChanged,
    required this.isColumn,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isColumn) {
      return SliderTheme(
          data: SliderThemeData(
            trackHeight: 8.0,
            thumbShape: SliderComponentShape.noThumb,
            activeTrackColor: fontColor?.withOpacity(0.8) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.8),
            inactiveTrackColor: fontColor?.withOpacity(0.3) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.3),
            overlayShape: SliderComponentShape.noOverlay,
            thumbColor: Colors.transparent, // 去掉滑块的颜色
          ),
          child: slider(ref));
    } else {
      return SliderTheme(
          data: SliderThemeData(
            trackHeight: 2.0,
            thumbShape: SliderComponentShape.noOverlay,
            activeTrackColor: fontColor?.withOpacity(0.9) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.9),
            inactiveTrackColor: fontColor?.withOpacity(0.3) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.3),
            overlayShape: SliderComponentShape.noThumb,
            thumbColor: Colors.transparent, // 去掉滑块的颜色
          ),
          child: slider(ref));
    }
  }

  Widget slider(WidgetRef ref) {
    final draggingValue = ref.watch(seekDragingProvider);

    final displayValue = draggingValue ?? value;
    final beginValue = displayValue <= 0 ? 0.0 : displayValue;
    final endValue = displayValue + 1 > max ? max : displayValue + 1;

    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: beginValue, end: endValue),
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
      builder: (context, animatedValue, child) {
        return Slider(
          value: animatedValue.clamp(0.0, max+1),
          min: 0.0,
          max: max + 1,
          onChanged: (value) {
            ref.read(seekDragingProvider.notifier).startDragging(value);
          },
          onChangeStart: (startValue) {
            ref.read(seekDragingProvider.notifier).startDragging(startValue);
          },
          onChangeEnd: (endValue) {
            onChanged(endValue);
            ref.read(seekDragingProvider.notifier).endDragging();
          },
        );
      },
    );
  }
}
