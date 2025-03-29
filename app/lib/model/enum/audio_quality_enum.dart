import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:hive_ce/hive.dart';

part 'audio_quality_enum.g.dart';

@HiveType(typeId: 10)
enum AudioQuality {
  @HiveField(0)
  unknown,

  @HiveField(1)
  low,

  @HiveField(2)
  standard,

  @HiveField(3)
  high,

  @HiveField(4)
  dolby,

  @HiveField(5)
  hiRes;

  factory AudioQuality.fromJson(String json) => values.byName(json);
  String toJson() => name;

  String getLabel() {
    switch (this) {
      case AudioQuality.unknown:
        return t.model.unknown;
      case AudioQuality.low:
        return t.model.lowQuality;
      case AudioQuality.standard:
        return t.model.standardQuality;
      case AudioQuality.high:
        return t.model.highQuality;
      case AudioQuality.dolby:
        return t.model.dolby;
      case AudioQuality.hiRes:
        return t.model.hiRes;
    }
  }
}

extension AudioQualityCode on AudioQuality {
  static final List<int> _codeList = [
    -1,
    30216,
    30232,
    30280,
    30250,
    30251,
  ];

  static AudioQuality fromCode(int code) {
    var index = _codeList.indexOf(code);
    if (index == -1) {
      return AudioQuality.unknown;
    }
    return AudioQuality.values[index];
  }

  get code => _codeList[index];
}
