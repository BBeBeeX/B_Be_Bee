import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upper_notice_dto.freezed.dart';
part 'upper_notice_dto.g.dart';

@freezed
class UpperNoticeDto with _$UpperNoticeDto {
  const factory UpperNoticeDto({
    int? code,
    String? message,
    int? ttl,
    String? data,
  }) = _UpperNoticeDto;

  factory UpperNoticeDto.fromJson(Map<String, Object?> json) =>
      _$UpperNoticeDtoFromJson(json);
}
