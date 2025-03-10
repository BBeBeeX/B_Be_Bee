
import 'package:b_be_bee_app/model/dto/collects/collects_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collects_info.freezed.dart';
part 'collects_info.g.dart';

@freezed
class ResponseCollectsInfo with _$ResponseCollectsInfo {
  const factory ResponseCollectsInfo({
    int? code,
    String? message,
    int? ttl,
    CollectsDataDto? data,
  }) = _ResponseCollectsInfo;

  factory ResponseCollectsInfo.fromJson(Map<String, Object?> json) =>
      _$ResponseCollectsInfoFromJson(json);
}






