import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_meta.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_serire_page.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_season_response.freezed.dart';
part 'bili_season_response.g.dart';

@freezed
class BiliSeasonResponse with _$BiliSeasonResponse {
  const factory BiliSeasonResponse({
    int? code,
    String? message,
    int? ttl,
    BiliSeasonResponseData? data,
  }) = _BiliSeasonResponse;

  factory BiliSeasonResponse.fromJson(Map<String, Object?> json) =>
      _$BiliSeasonResponseFromJson(json);
}

@freezed
class BiliSeasonResponseData with _$BiliSeasonResponseData {
  const factory BiliSeasonResponseData({
    List<int>? aids,
    List<BiliSeasonsSeriesArchives>? archives,
    BiliSeasonsSeriesMeta? meta,
    BiliSeasonsSerirePage? page,
  }) = _BiliSeasonResponseData;

  factory BiliSeasonResponseData.fromJson(Map<String, Object?> json) => _$BiliSeasonResponseDataFromJson(json);
}


