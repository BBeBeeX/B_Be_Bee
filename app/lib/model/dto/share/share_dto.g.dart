// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShareDtoImpl _$$ShareDtoImplFromJson(Map json) => $checkedCreate(
      r'_$ShareDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$ShareDtoImpl(
          id: $checkedConvert('id', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$ShareTypeEnumEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ShareDtoImplToJson(_$ShareDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ShareTypeEnumEnumMap[instance.type]!,
    };

const _$ShareTypeEnumEnumMap = {
  ShareTypeEnum.bili_audio: 'bili_audio',
  ShareTypeEnum.bili_season: 'bili_season',
};
