import 'package:b_be_bee_app/widget/audio_visual/params/model_params.dart';
import 'package:flutter/material.dart';

class Waveform extends StatelessWidget {
  ///
  const Waveform({
    required this.params,
    required this.waveData,
    super.key,
  });


  final ModelParams params;
  final List<double> waveData;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: CustomPaint(
        painter: WavePainter(
          params: params,
          waveData: waveData
        ),
      ),
    );
  }
}

/// Custom painter to draw the wave data.
class WavePainter extends CustomPainter {
  ///
  WavePainter({
    required this.params,
    required this.waveData,
  });

  final List<double> waveData;
  /// The model parameters.
  final ModelParams params;

  void processWaveData(List<double> currentWaveData) {
    final buffer = params.dataManager.data;

    final chunkSize = params.waveformParams.chunkSize;
    final processedLength = currentWaveData.length ~/ chunkSize;

    // Shift existing data to the left
    for (var i = 0; i < buffer.length - processedLength; i++) {
      buffer[i] = buffer[i + processedLength];
    }

    // Process data in chunks and store at the end
    for (var i = 0; i < processedLength; i++) {
      var sum = 0.0;
      final startIdx = i * chunkSize;

      // Calculate average for this chunk
      var j = 0;
      for (j = 0;
          j < chunkSize && (startIdx + j) < currentWaveData.length;
          j++) {
        sum += currentWaveData[startIdx + j];
      }

      // Store at the end of the array
      final id = buffer.length - processedLength + i;
      if (id >= 0 && id < buffer.length) {
        buffer[id] = sum / j;
      }
    }
  }

  int _calculateEffectiveBarCount(double width) {
    return (width / params.waveformParams.barsWidth).floor();
  }

  @override
  void paint(Canvas canvas, Size size) {
    final effectiveBarCount = _calculateEffectiveBarCount(size.width);

    if (waveData.isNotEmpty) {
      processWaveData(waveData);
    }

    // Draw the background
    final backgroundPaint = Paint();
    if (params.backgroundGradient != null) {
      backgroundPaint.shader = params.backgroundGradient!.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      );
    } else {
      backgroundPaint.color = params.backgroundColor;
    }
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      backgroundPaint,
    );

    final paint = Paint();

    // Set up the bar paint
    if (params.barGradient != null) {
      paint.shader = params.barGradient!.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      );
    } else {
      paint.color = params.barColor;
    }

    // Draw the bars
    final barWidth = params.waveformParams.barsWidth.toDouble();
    for (var i = 0; i < effectiveBarCount; i++) {
      final value = params.dataManager.data[i];
      final barHeight = size.height * value * 2 * params.audioScale;
      final barX = i * barWidth;

      canvas.drawRect(
        Rect.fromLTWH(
          barX,
          (size.height - barHeight) * 0.5,
          barWidth * (1.0 - params.waveformParams.barSpacingScale),
          barHeight,
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(WavePainter oldDelegate) {
    return true;
  }
}
