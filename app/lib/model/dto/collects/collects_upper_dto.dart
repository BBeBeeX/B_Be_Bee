
import 'package:freezed_annotation/freezed_annotation.dart';
part 'collects_upper_dto.freezed.dart';
part 'collects_upper_dto.g.dart';

@freezed
class CollectsUpperDto with _$CollectsUpperDto {
  const factory CollectsUpperDto({
    int? mid,
    String? name,
    String? face,
    bool? followed,
    int? vip_type,
    int? vip_statue,
  }) = _CollectsUpperDto;

  factory CollectsUpperDto.fromJson(Map<String, Object?> json) => _$CollectsUpperDtoFromJson(json);
}