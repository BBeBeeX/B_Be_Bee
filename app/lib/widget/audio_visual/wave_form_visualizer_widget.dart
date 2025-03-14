import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

// Container(
//                   height: 50.0,
//                   padding: const EdgeInsets.all(16.0),
//                   width: double.maxFinite,
//                   child: StreamBuilder<VisualizerWaveformCapture>(
//                     stream: _player.visualizerWaveformStream,
//                     builder: (context, snapshot) {
//                       if (snapshot.data == null) return const SizedBox();
//                       return WaveformVisualizerWidget(snapshot.data!);
//                     },
//                   ),
//                 ),

class WaveformVisualizerWidget extends StatelessWidget {
  final VisualizerWaveformCapture capture;
  final Color? color;

  const WaveformVisualizerWidget(this.capture, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: CustomPaint(
        painter: WaveformVisualizerPainter(capture),
      ),
    );
  }
}

class WaveformVisualizerPainter extends CustomPainter {
  final VisualizerWaveformCapture capture;
  final Color? color;

  WaveformVisualizerPainter(this.capture, {this.color});

  @override
  void paint(Canvas canvas, Size size) {
    int getSample(double d) {
      final i = d.toInt();
      if (i >= 0 && i < capture.data.length) {
        return capture.data[i] - 128;
      } else {
        return 0;
      }
    }

    const barCount = 120;
    final barWidth = size.width / barCount;
    for (var barX = 0.0; barX < size.width; barX += barWidth) {
      final sample = getSample(barX);
      final adjustedSample = sample < 0 ? 0 : sample;

      canvas.drawLine(
          Offset(barX.toDouble(), size.height),
          Offset(barX.toDouble(),
              size.height - adjustedSample * size.height / 2 / 128),
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.0
            ..color = color ?? Colors.blue);
    }
  }

  @override
  bool shouldRepaint(covariant WaveformVisualizerPainter oldDelegate) {
    return true;
  }
}
