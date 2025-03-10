import 'package:freezed_annotation/freezed_annotation.dart';
part 'audio_top_music_list_dto.freezed.dart';
part 'audio_top_music_list_dto.g.dart';

@freezed
class AudioTopMusicListResponse with _$AudioTopMusicListResponse {
  const factory AudioTopMusicListResponse({
    int? code,
    String? message,
    int? ttl,
    AudioTopMusicData? data,
  }) = _AudioTopMusicListResponse;

  factory AudioTopMusicListResponse.fromJson(Map<String, dynamic> json) =>
      _$AudioTopMusicListResponseFromJson(json);
}

@freezed
class AudioTopMusicData with _$AudioTopMusicData {
  const factory AudioTopMusicData({
    int? list_id,
    int? version,
    @Default([]) List<AudioTopMusicItem> list,
  }) = _AudioTopMusicData;

  factory AudioTopMusicData.fromJson(Map<String, dynamic> json) =>
      _$AudioTopMusicDataFromJson(json);
}

@freezed
class AudioTopMusicItem with _$AudioTopMusicItem {
  const factory AudioTopMusicItem({
     String? music_id,
     String? music_title,
     String? singer,
     String? album,
     int? mv_aid,
     String? mv_bvid,
     String? mv_cover,
     int? heat,
     int? rank,
     bool? can_listen,
     String? recommendation,
     int? creation_aid,
     String? creation_bvid,
     String? creation_cover,
     String? creation_title,
     int? creation_up,
     String? creation_nickname,
     int? creation_duration,
     int? creation_play,
     int? vt,
     String? creation_reason,
     List<String>? achievements,
     int? material_id,
     int? material_use_num,
     int? material_duration,
     int? material_show,
     int? song_type,
     int? is_vt,
     String? vt_display,
     int? last_rank,
  }) = _AudioTopMusicItem;

  factory AudioTopMusicItem.fromJson(Map<String, dynamic> json) =>
      _$AudioTopMusicItemFromJson(json);
}


