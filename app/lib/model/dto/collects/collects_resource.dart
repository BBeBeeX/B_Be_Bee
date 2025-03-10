import 'package:b_be_bee_app/model/dto/collects/collects_bili_media_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collects_resource.freezed.dart';
part 'collects_resource.g.dart';

//根对象
@freezed
class CollectsResource with _$CollectsResource {
  const factory CollectsResource({
    int? code,
    String? message,
    int? ttl,
    CollectsResourceData? data,
  }) = _CollectsResource;

  factory CollectsResource.fromJson(Map<String, Object?> json) =>
      _$CollectsResourceFromJson(json);
}

//收藏夹分页
@freezed
class CollectsResourceData with _$CollectsResourceData {
  const factory CollectsResourceData({
    CollectsDataDto? info,
    List<CollectsBiliMediaDto>? medias,
    bool? has_more,
    int? ttl,
  }) = _CollectsResourceData;

  factory CollectsResourceData.fromJson(Map<String, Object?> json) => _$CollectsResourceDataFromJson(json);
}



