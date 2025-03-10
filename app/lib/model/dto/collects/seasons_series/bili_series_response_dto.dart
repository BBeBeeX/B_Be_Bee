

import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_series_response_dto.freezed.dart';
part 'bili_series_response_dto.g.dart';

@freezed
class BiliSeriesResponseDto with _$BiliSeriesResponseDto {
  const factory BiliSeriesResponseDto({
    int? code,
    String? message,
    int? ttl,
    BiliSeriesResponseDtoData? data,
  }) = _BiliSeriesResponseDto;

  factory BiliSeriesResponseDto.fromJson(Map<String, Object?> json) =>
      _$BiliSeriesResponseDtoFromJson(json);
}

@freezed
class BiliSeriesResponseDtoData with _$BiliSeriesResponseDtoData {
  const factory BiliSeriesResponseDtoData({
    List<int>? aids,
    List<BiliSeasonsSeriesArchives>? archives,
    BiliSeriesResponseDtoPage? page,
  }) = _BiliSeriesResponseDtoData;

  factory BiliSeriesResponseDtoData.fromJson(Map<String, Object?> json) => _$BiliSeriesResponseDtoDataFromJson(json);
}

@freezed
class BiliSeriesResponseDtoPage with _$BiliSeriesResponseDtoPage {
  const factory BiliSeriesResponseDtoPage({
    int? num,
    int? size,
    int? total,
  }) = _BiliSeriesResponseDtoPage;

  factory BiliSeriesResponseDtoPage.fromJson(Map<String, Object?> json) => _$BiliSeriesResponseDtoPageFromJson(json);
}
