import 'package:hive_ce/hive.dart';

part 'fft_painter_params.g.dart';

/// FFT painter params
@HiveType(typeId: 22)
class FftPainterParams {
  const FftPainterParams({
    this.shrinkTo = 256,
    this.barSpacingScale = 0,
  });

  /// Shrink the FFT to this number of bars regardless the FftParams min and
  /// max bins values, but not less than min(maxBinIndex - minBinIndex + 1).
  @HiveField(0)
  final int shrinkTo;

  /// Bar spacing scale
  @HiveField(1)
  final double barSpacingScale;

  ///
  FftPainterParams copyWith({
    int? shrinkTo,
    double? barSpacingScale,
  }) {
    return FftPainterParams(
      shrinkTo: shrinkTo ?? this.shrinkTo,
      barSpacingScale: barSpacingScale ?? this.barSpacingScale,
    );
  }
}
