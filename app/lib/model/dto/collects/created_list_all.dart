import 'package:b_be_bee_app/model/dto/collects/collects_list_all_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_list_all.freezed.dart';
part 'created_list_all.g.dart';

@freezed
class CreatedListAll with _$CreatedListAll {
  const factory CreatedListAll({
    int? code,
    String? message,
    int? ttl,
    CollectsListAllDto? data,
  }) = _CreatedListAll;

  factory CreatedListAll.fromJson(Map<String, Object?> json) =>
      _$CreatedListAllFromJson(json);
}



