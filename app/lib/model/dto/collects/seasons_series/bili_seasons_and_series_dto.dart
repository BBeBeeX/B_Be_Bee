import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_meta.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_serire_page.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_seasons_and_series_dto.freezed.dart';
part 'bili_seasons_and_series_dto.g.dart';

@freezed
class BiliSeasonsAndSeriesDto with _$BiliSeasonsAndSeriesDto {
  const factory BiliSeasonsAndSeriesDto({
    int? code,
    String? message,
    int? ttl,
    BiliSeasonsAndSeriesDtoData? data,
  }) = _BiliSeasonsAndSeriesDto;

  factory BiliSeasonsAndSeriesDto.fromJson(Map<String, Object?> json) =>
      _$BiliSeasonsAndSeriesDtoFromJson(json);
}

@freezed
class BiliSeasonsAndSeriesDtoData with _$BiliSeasonsAndSeriesDtoData {
  const factory BiliSeasonsAndSeriesDtoData({
    BiliSeasonsAndSeriesDtoItemsLists? items_lists,
  }) = _BiliSeasonsAndSeriesDtoData;

  factory BiliSeasonsAndSeriesDtoData.fromJson(Map<String, Object?> json) => _$BiliSeasonsAndSeriesDtoDataFromJson(json);
}

@freezed
class BiliSeasonsAndSeriesDtoItemsLists with _$BiliSeasonsAndSeriesDtoItemsLists {
  const factory BiliSeasonsAndSeriesDtoItemsLists({
    BiliSeasonsSerirePage? page,
    List<BiliSeasonsList>? seasons_list,
    List<BiliSeriesList>? series_list,
  }) = _BiliSeasonsAndSeriesDtoItemsLists;

  factory BiliSeasonsAndSeriesDtoItemsLists.fromJson(Map<String, Object?> json) =>
      _$BiliSeasonsAndSeriesDtoItemsListsFromJson(json);
}

@freezed
class BiliSeasonsList with _$BiliSeasonsList {
  const factory BiliSeasonsList({
    List<BiliSeasonsSeriesArchives>? archives,
    BiliSeasonsSeriesMeta? meta,
    List<int>? recent_aids,
  }) = _BiliSeasonsList;

  factory BiliSeasonsList.fromJson(Map<String, Object?> json) =>
      _$BiliSeasonsListFromJson(json);
}

@freezed
class BiliSeriesList with _$BiliSeriesList {
  const factory BiliSeriesList({
    List<BiliSeasonsSeriesArchives>? archives,
    BiliSeasonsSeriesMeta? meta,
    List<int>? recent_aids,
  }) = _BiliSeriesList;

  factory BiliSeriesList.fromJson(Map<String, Object?> json) =>
      _$BiliSeriesListFromJson(json);
}



