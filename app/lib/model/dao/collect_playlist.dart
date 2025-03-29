import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../enum/collect_type_enum.dart';
import 'audio_info.dart';

part 'collect_playlist.freezed.dart';
part 'collect_playlist.g.dart';

@HiveType(typeId: 1)
@freezed
class CollectPlaylist with _$CollectPlaylist {
  const CollectPlaylist._();

  const factory CollectPlaylist({
    //bili_season_id 先判断songs是否为空再请求
    //bili_collect_id
    //bili_series_id
    //bili_upper_id 先判断songs是否为空再请求
    //local_audios_folderPath
    @HiveField(0) @Default('') String id,
    @HiveField(1) @Default('') String title,
    @HiveField(2) String? cover,
    @HiveField(3) @Default(false) bool isTop,
    @HiveField(4) @Default([]) List<String> songIds,
    List<AudioInfo>? songs,
    @HiveField(5) @Default(false) bool isDefault,
    @HiveField(6) @Default(0) int createTime,
    @HiveField(7) required CollectTypeEnum collectCurrentType,
    @HiveField(8) required CollectTypeEnum collectSourceType,
    @HiveField(9) Upper? upper,
    @HiveField(10) String? onlineId,
  }) = _CollectPlaylist;

  factory CollectPlaylist.fromJson(Map<String, dynamic> json) =>
      _$CollectPlaylistFromJson(json);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CollectPlaylist &&
        other.id == id &&
        other.title == title &&
        other.cover == cover &&
        other.isTop == isTop &&
        other.upper == upper &&
        other.isDefault == isDefault &&
        other.onlineId == onlineId &&
        _listEquals(other.songIds, songIds) &&
        _listEquals(other.songs!, songs!);
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      title,
      cover,
      isTop,
      upper,
      isDefault,
      onlineId,
      Object.hashAll(songIds),
      Object.hashAll(songs!),
    );
  }

  bool _listEquals<T>(List<T> list1, List<T> list2) {
    if (list1.length != list2.length) return false;
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) return false;
    }
    return true;
  }
}
