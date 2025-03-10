
import 'package:b_be_bee_app/model/dto/collects/collects_cnt_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_upper_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collects_data_dto.freezed.dart';
part 'collects_data_dto.g.dart';

@freezed
class CollectsDataDto with _$CollectsDataDto {
  const factory CollectsDataDto({
    int? id,
    int? fid,
    int? mid,
    int? attr, //属性	0：正常  1：失效
    String? title,
    String? cover,
    CollectsUpperDto? upper,
    int? cover_type,
    CollectsCntDto? cnt_info,
    int? type,
    String? intro,
    int? ctime,
    int? mtime,
    int? state,
    int? fav_state,
    int? like_state,
    int? media_count,
    bool? is_top,
  }) = _CollectsDataDto;

  factory CollectsDataDto.fromJson(Map<String, Object?> json) => _$CollectsDataDtoFromJson(json);
}