

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_seasons_series_meta.freezed.dart';
part 'bili_seasons_series_meta.g.dart';


@freezed
class BiliSeasonsSeriesMeta with _$BiliSeasonsSeriesMeta {
  const factory BiliSeasonsSeriesMeta({
    int? category,
    String? cover,
    String? creator,
    int? ctime,
    String? description,
    List<String>? keywords,
    int? last_update_ts,
    int? mid,
    int? mtime,
    String? name,
    String? raw_keywords,
    int? ptime,
    int? series_id,
    int? season_id,
    int? state,
    int? total,
  }) = _BiliSeasonsSeriesMeta;

  factory BiliSeasonsSeriesMeta.fromJson(Map<String, Object?> json) => _$BiliSeasonsSeriesMetaFromJson(json);
}