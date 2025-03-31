import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:text_scroll/text_scroll.dart';

class MarqueeCustom extends ConsumerWidget {
  final String text;
  final TextStyle style;
  final TextScrollMode mode;
  final Velocity velocity;
  final Duration delayBefore;
  final int numberOfReps;
  final Duration pauseBetween;
  final TextAlign textAlign;
  final bool selectable;

  const MarqueeCustom({
    required this.text,
    this.style = const TextStyle(fontWeight: FontWeight.bold),
    this.mode = TextScrollMode.endless,
    this.velocity = const Velocity(pixelsPerSecond: Offset(50, 0)),
    this.delayBefore = const Duration(milliseconds: 1000),
    this.numberOfReps = 5,
    this.pauseBetween = const Duration(milliseconds: 1000),
    this.textAlign = TextAlign.right,
    this.selectable = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextScroll(
      text,
      mode: mode,
      velocity: velocity,
      delayBefore: delayBefore,
      numberOfReps: numberOfReps,
      pauseBetween: pauseBetween,
      style: style,
      textAlign: textAlign,
      selectable: selectable,
    );
  }
}
