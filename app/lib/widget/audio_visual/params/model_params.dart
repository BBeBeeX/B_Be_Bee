import 'package:b_be_bee_app/widget/audio_visual/params/shader_params.dart';
import 'package:b_be_bee_app/widget/audio_visual/params/waveform_painter_params.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';

import '../utils/painter_data_manager.dart';
import 'fft_painter_params.dart';
import 'fft_params.dart';

part 'model_params.g.dart';

/// The parameters used to configure the AudioFlux widget.
@HiveType(typeId: 20)
class ModelParams {
  ///
  const ModelParams({
    this.backgroundColor = Colors.transparent,
    this.backgroundGradient,
    this.barColor = Colors.yellow,
    this.barGradient,
    this.audioScale = 1,
    this.fftParams = const FftParams(),
    this.fftPainterParams = const FftPainterParams(),
    this.waveformParams = const WaveformPainterParams(),
    this.shaderParams = const ShaderParams(),
  });

  /// The data manager used to store the waveform data displayed
  /// in CustomPainter.
  PainterDataManager get dataManager =>
      _internalDataManager ??= PainterDataManager();

  /// Internal data manager
  static PainterDataManager? _internalDataManager;

  /// The background color of the waveform.
  @HiveField(0)
  final Color backgroundColor;

  /// The color of the waveform bars.
  @HiveField(1)
  final Color barColor;

  /// The gradient of the waveform background. If provided, this will
  /// override [backgroundColor].
  @HiveField(2)
  final Gradient? backgroundGradient;

  /// The gradient of the waveform bars. If provided, this will
  /// override [barColor].
  @HiveField(3)
  final Gradient? barGradient;

  /// The scale of the audio data. This is used to scale the bars height.
  /// This should be > 0.
  @HiveField(4)
  final double audioScale;

  /// The parameters for the FFT.
  @HiveField(5)
  final FftParams fftParams;

  /// The parameters for the FFT. It displays only the bars between
  /// minBinIndex and maxBinIndex.
  @HiveField(6)
  final FftPainterParams fftPainterParams;

  /// The parameters for the waveform.
  @HiveField(7)
  final WaveformPainterParams waveformParams;

  /// The parameters for the shader.
  @HiveField(8)
  final ShaderParams shaderParams;

  ///
  ModelParams copyWith({
    Color? backgroundColor,
    Color? barColor,
    Gradient? backgroundGradient,
    Gradient? barGradient,
    double? audioScale,
    FftParams? fftParams,
    FftPainterParams? fftPainterParams,
    WaveformPainterParams? waveformParams,
    ShaderParams? shaderParams,
  }) {
    return ModelParams(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      barColor: barColor ?? this.barColor,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      barGradient: barGradient ?? this.barGradient,
      audioScale: audioScale ?? this.audioScale,
      fftParams: fftParams ?? this.fftParams,
      fftPainterParams: fftPainterParams ?? this.fftPainterParams,
      waveformParams: waveformParams ?? this.waveformParams,
      shaderParams: shaderParams ?? this.shaderParams,
    );
  }
}
