import 'dart:math';

import '../params/model_params.dart';
import 'package:flutter/material.dart';

class BarsPainter extends CustomPainter{
  final List<double> audioData;
  final ModelParams params;
  const BarsPainter(this.audioData ,this.params);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    final width = size.width;
    final height = size.height;
    final centerY = height / 2;

    // Calculate number of bars to display
    final barCount = min(audioData.length, 64);
    final barWidth = width / barCount - 2;

    // Group samples to fit the number of bars
    final samplesPerBar = audioData.length ~/ barCount;

    for (int i = 0; i < barCount; i++) {
      // Calculate average amplitude for this bar
      double sum = 0;
      int count = 0;
      for (int j = 0; j < samplesPerBar; j++) {
        int index = i * samplesPerBar + j;
        if (index < audioData.length) {
          sum += audioData[index].abs();
          count++;
        }
      }

      final amplitude = count > 0 ? sum / count : 0;
      final barHeight = amplitude * centerY * 1.5;

      // Draw the bar
      final left = i * (barWidth + 2);
      final right = left + barWidth;

      print('left:$left   left2:${centerY - barHeight}'
          'right:$right   right2:${centerY + barHeight}');
      canvas.drawRect(
        Rect.fromLTRB(
            left,
            centerY - barHeight,
            right,
            centerY + barHeight
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(BarsPainter oldDelegate) {
    return oldDelegate.audioData != audioData;
  }
}