import 'package:hive_ce/hive.dart';

part 'fft_params.g.dart';

/// FFT parameters
@HiveType(typeId: 21)
class FftParams {
  ///
  const FftParams({
    this.minBinIndex = 0,
    this.maxBinIndex = 255,
    this.fftSmoothing = 0.93,
  }) : assert(
          minBinIndex >= 0 && maxBinIndex <= 255 && minBinIndex <= maxBinIndex,
          'minBinIndex and maxIndex must be between 0 and 255 and '
          'minBinIndex must be <= maxIndex',
        );

  /// Minimum bin index
  @HiveField(0)
  final int minBinIndex;

  /// Maximum bin index
  @HiveField(1)
  final int maxBinIndex;

  /// Smooth FFT data.
  /// When new data is read and the values are decreasing, the new value will be
  /// decreased with an amplitude between the old and the new value.
  /// This will result on a less shaky visualization.
  ///
  /// [fftSmoothing] must be in the [0.0 ~ 1.0] range.
  /// 0 = no smooth
  /// 1 = full smooth
  @HiveField(2)
  final double fftSmoothing;

  ///
  FftParams copyWith({
    int? minBinIndex,
    int? maxBinIndex,
    double? fftSmoothing,
  }) {
    return FftParams(
      minBinIndex: minBinIndex ?? this.minBinIndex,
      maxBinIndex: maxBinIndex ?? this.maxBinIndex,
      fftSmoothing: fftSmoothing ?? this.fftSmoothing,
    );
  }
}
