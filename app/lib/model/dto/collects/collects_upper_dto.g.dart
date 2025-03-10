// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_upper_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectsUpperDtoImpl _$$CollectsUpperDtoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectsUpperDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsUpperDtoImpl(
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          face: $checkedConvert('face', (v) => v as String?),
          followed: $checkedConvert('followed', (v) => v as bool?),
          vip_type: $checkedConvert('vip_type', (v) => (v as num?)?.toInt()),
          vip_statue:
              $checkedConvert('vip_statue', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsUpperDtoImplToJson(
        _$CollectsUpperDtoImpl instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'name': instance.name,
      'face': instance.face,
      'followed': instance.followed,
      'vip_type': instance.vip_type,
      'vip_statue': instance.vip_statue,
    };
