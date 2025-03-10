import 'package:b_be_bee_app/model/dto/collects/collects_data_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_list.freezed.dart';
part 'created_list.g.dart';

@freezed
class CreatedList with _$CreatedList {
  const factory CreatedList({
    int? code,
    String? message,
    int? ttl,
    CreatedListData? data,
  }) = _CreatedsList;

  factory CreatedList.fromJson(Map<String, Object?> json) =>
      _$CreatedListFromJson(json);
}

@freezed
class CreatedListData with _$CreatedListData {
  const factory CreatedListData({
    int? count,
    List<CollectsDataDto>? list,
    bool? hasMore,
  }) = _CreatedListData;

  factory CreatedListData.fromJson(Map<String, Object?> json) => _$CreatedListDataFromJson(json);
}

