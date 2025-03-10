import 'package:b_be_bee_app/model/dto/collects/collects_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collects_list_all_dto.freezed.dart';
part 'collects_list_all_dto.g.dart';

@freezed
class CollectsListAllDto with _$CollectsListAllDto {
  const factory CollectsListAllDto({
    int? count,
    List<CollectsDataDto>? list,
  }) = _CollectsListAllDto;

  factory CollectsListAllDto.fromJson(Map<String, Object?> json) => _$CollectsListAllDtoFromJson(json);
}
