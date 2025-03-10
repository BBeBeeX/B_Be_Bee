import 'package:hive_ce/hive.dart';

part 'audio_source_type_enum.g.dart';

@HiveType(typeId: 6)
enum AudioSourceTypeEnum {
  @HiveField(0)
  local,    // 本地音频文件

  @HiveField(1)
  bili,   // b站

  @HiveField(2)
  bili_music // b站音乐
}