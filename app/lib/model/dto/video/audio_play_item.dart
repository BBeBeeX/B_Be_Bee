import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'audio_play_item.freezed.dart';
part 'audio_play_item.g.dart';

@freezed
class AudioPlayItem with _$AudioPlayItem {
  @HiveType(typeId: 8)
  const factory AudioPlayItem({
    @HiveField(0) @Default([]) List<String> urls, // 视频流地址或本地文件路径
    @HiveField(1) @Default(AudioQuality.unknown) AudioQuality quality, // 音频质量
    @HiveField(2) @Default(0) int bandWidth, // 带宽
    @HiveField(3) @Default('') String codecs, // 编码
    @HiveField(4) @Default(AudioSourceTypeEnum.bili) AudioSourceTypeEnum audioType, // 源
  }) = _AudioPlayItem;

  const AudioPlayItem._();

  factory AudioPlayItem.fromJson(Map<String, dynamic> json) =>
      _$AudioPlayItemFromJson(json);

  // 添加 getter
  bool get isLocal => audioType == AudioSourceTypeEnum.local;
  bool get isStream => audioType == AudioSourceTypeEnum.bili;

  static const empty = AudioPlayItem();

  //从本地文件创建
  static AudioPlayItem fromLocalFile({
    required String filePath,
  }) {
    return AudioPlayItem(
      audioType: AudioSourceTypeEnum.local,
      urls: [filePath],
    );
  }

  //getVideoPlay 设置每一个AudioPlayItem的值
  static AudioPlayItem fromStream({
    required List<String> urls,
    required AudioQuality quality,
    required int bandWidth,
    required String codecs,
  }) {
    return AudioPlayItem(
      urls: urls,
      quality: quality,
      bandWidth: bandWidth,
      codecs: codecs,
      audioType: AudioSourceTypeEnum.bili,
    );
  }
}