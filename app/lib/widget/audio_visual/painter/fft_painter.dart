import 'dart:math';

import '../audio_visual.dart';
import '../params/model_params.dart';
import 'package:flutter/material.dart';

class FFTPainter extends CustomPainter{
  final List<double> audioData;
  final ModelParams params;
  const FFTPainter(this.audioData ,this.params);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill;

    final width = size.width;
    final height = size.height;

    // Simple FFT-like visualization (approximation)
    // For real FFT, you would need to implement FFT algorithm or use a library

    // We'll create a frequency-domain-like visualization
    final barCount = min(audioData.length ~/ 2, 64);
    final barWidth = width / barCount - 2;

    for (int i = 0; i < barCount; i++) {
      // The height increases with frequency to simulate FFT output
      final magnitude = audioData[i];
      final barHeight = magnitude * height * 0.8;

      final left = i * (barWidth + 2);
      final right = left + barWidth;

      canvas.drawRect(
        Rect.fromLTRB(
            left,
            height - barHeight,
            right,
            height
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(FFTPainter oldDelegate) {
    return oldDelegate.audioData != audioData;
  }
}