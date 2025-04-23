import 'dart:math';

import '../audio_visual.dart';
import '../params/model_params.dart';
import 'package:flutter/material.dart';

class SpectrumPainter extends CustomPainter{
  final List<double> audioData;
  final ModelParams params;
  const SpectrumPainter(this.audioData ,this.params);

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    // Create frequency-domain data similar to FFT
    final barCount = min(audioData.length ~/ 2, 128);
    final barWidth = width / barCount;

    // Draw each frequency bin with a color gradient
    for (int i = 0; i < barCount; i++) {
      final magnitude = audioData[i];
      final barHeight = magnitude * height * 0.9;

      // Create a gradient color based on frequency
      // Lower frequencies are red/orange, higher frequencies are blue/purple
      final hue = 240 - (240 * i / barCount); // From blue (240) to red (0)
      final saturation = 0.8;
      final value = 0.9;

      final paint = Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            HSVColor.fromAHSV(1.0, hue, saturation, value).toColor(),
            HSVColor.fromAHSV(1.0, hue, saturation, value * 0.5).toColor(),
          ],
        ).createShader(Rect.fromLTWH(0, height - barHeight, barWidth, barHeight));

      final left = i * barWidth;

      // Draw rectangle for each frequency bin
      canvas.drawRect(
        Rect.fromLTWH(
            left,
            height - barHeight,
            barWidth - 1, // Small gap between bars
            barHeight
        ),
        paint,
      );

      // Add a highlight at the top of each bar
      final highlightPaint = Paint()
        ..color = Colors.white.withOpacity(0.8)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2;

      canvas.drawLine(
        Offset(left, height - barHeight),
        Offset(left + barWidth - 1, height - barHeight),
        highlightPaint,
      );
    }
  }

  @override
  bool shouldRepaint(SpectrumPainter oldDelegate) {
    return oldDelegate.audioData != audioData;
  }
}