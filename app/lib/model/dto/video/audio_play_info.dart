
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_play_info.freezed.dart';
part 'audio_play_info.g.dart';

@freezed
class AudioPlayInfo with _$AudioPlayInfo {
  const factory AudioPlayInfo({
    @Default([]) List<AudioQuality> supportAudioQualities,
    @Default([]) List<AudioPlayItem> audios,
  }) = _AudioPlayInfo;

  factory AudioPlayInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioPlayInfoFromJson(json);

  // 通过bili源创建实例
  factory AudioPlayInfo.fromBili({
    required List<AudioQuality> supportAudioQualities,
    required List<AudioPlayItem> audios,
  }) {
    return AudioPlayInfo(
      supportAudioQualities: supportAudioQualities,
      audios: audios,
    );
  }
}

extension VideoPlayInfoMethods on AudioPlayInfo {

  AudioPlayItem? findBestAudioPlayItemByQuality( AudioQuality targetQuality) {

    final sortedAudios = List.from(audios)
      ..sort((a, b) => b.quality.index.compareTo(a.quality.index));

    for (var item in sortedAudios) {
      if (item.quality.index <= targetQuality.index) {
        return item;
      }
    }

    return null;
  }
}
