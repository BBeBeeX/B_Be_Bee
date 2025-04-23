import 'package:flutter/material.dart';

import '../params/model_params.dart';

class WaveFromPainter extends CustomPainter{
  final List<double> audioData;
  final ModelParams params;
  const WaveFromPainter(this.audioData ,this.params);

  @override
  void paint(Canvas canvas, Size size) {
    if (audioData.isEmpty) return;

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    final width = size.width;
    final height = size.height;
    final centerY = height / 2;
    final step = width / (audioData.length - 1);

    // Draw the waveform
    path.moveTo(0, centerY + audioData[0] * centerY * 0.8);
    for (int i = 1; i < audioData.length; i++) {
      path.lineTo(i * step, centerY + audioData[i] * centerY * 0.8);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WaveFromPainter oldDelegate) {
    return oldDelegate.audioData != audioData;
  }

}