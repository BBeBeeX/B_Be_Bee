import 'package:freezed_annotation/freezed_annotation.dart';
part 'collects_cnt_dto.freezed.dart';
part 'collects_cnt_dto.g.dart';

@freezed
class CollectsCntDto with _$CollectsCntDto {
  const factory CollectsCntDto({
    int? collect,
    int? play,
    int? thumb_up,
    int? share,
  }) = _CollectsCntDto;

  factory CollectsCntDto.fromJson(Map<String, Object?> json) =>
      _$CollectsCntDtoFromJson(json);
}