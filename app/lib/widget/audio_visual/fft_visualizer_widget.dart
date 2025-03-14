import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

//     Container(
//                   height: 50.0,
//                   padding: const EdgeInsets.all(16.0),
//                   width: double.maxFinite,
//                   child: StreamBuilder<VisualizerFftCapture>(
//                     stream: _player.visualizerFftStream,
//                     builder: (context, snapshot) {
//                       if (snapshot.data == null) return const SizedBox();
//                       return FftVisualizerWidget(snapshot.data!);
//                     },
//                   ),
//                 ),

class FftVisualizerWidget extends StatelessWidget {
  final VisualizerFftCapture capture;
  final Color? color;

  const FftVisualizerWidget(this.capture, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: CustomPaint(
        painter: FftVisualizerPainter(capture, color: color),
      ),
    );
  }
}

class FftVisualizerPainter extends CustomPainter {
  final VisualizerFftCapture capture;
  final Color? color;

  FftVisualizerPainter(this.capture, {this.color});

  @override
  void paint(Canvas canvas, Size size) {
    const barCount = 16;
    const minDbThresh = 5;

    final length = capture.length;
    final barWidth = size.width / barCount;
    final barPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = barWidth * 0.8
      ..color = color ?? Colors.blue;
    double log10(num x) => log(x) / ln10;
    for (var i = 0; i < barCount; i++) {
      final magnitude = pow(capture.getMagnitude(i * length ~/ barCount), 2);
      final barX = barWidth * (i + 0.5);
      final db = 10.0 * log10(magnitude);
      // final db = magnitude < 1.0 ? 0.0 : 10.0 * log10(magnitude);
      canvas.drawLine(Offset(barX, size.height),
          Offset(barX, size.height - (db - minDbThresh)), barPaint);
    }
  }

  @override
  bool shouldRepaint(covariant FftVisualizerPainter oldDelegate) {
    return true;
  }
}
