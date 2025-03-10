import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_upper_all_videos_dto.freezed.dart';
part 'bili_upper_all_videos_dto.g.dart';

@freezed
class BiliUpperAllVideosDto with _$BiliUpperAllVideosDto {
  const factory BiliUpperAllVideosDto({
    int? code,
    String? message,
    int? ttl,
    BiliUpperAllVideosDtoData? data,
  }) = _BiliUpperAllVideosDto;

  factory BiliUpperAllVideosDto.fromJson(Map<String, Object?> json) =>
      _$BiliUpperAllVideosDtoFromJson(json);
}

@freezed
class BiliUpperAllVideosDtoData with _$BiliUpperAllVideosDtoData {
  const factory BiliUpperAllVideosDtoData({
    List<BiliSeasonsSeriesArchives>? archives,
    BiliUpperAllVideosDtoPage? page,
  }) = _BiliUpperAllVideosDtoData;

  factory BiliUpperAllVideosDtoData.fromJson(Map<String, Object?> json) => _$BiliUpperAllVideosDtoDataFromJson(json);
}

@freezed
class BiliUpperAllVideosDtoPage with _$BiliUpperAllVideosDtoPage {
  const factory BiliUpperAllVideosDtoPage({
    int? num,
    int? size,
    int? total,
  }) = _BiliUpperAllVideosDtoPage;

  factory BiliUpperAllVideosDtoPage.fromJson(Map<String, Object?> json) => _$BiliUpperAllVideosDtoPageFromJson(json);
}
