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
          id: $checkedConvert('id', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$ShareTypeEnumEnumMap, v)),
          urlCover: $checkedConvert('urlCover', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          songListString: $checkedConvert('songListString',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          upper: $checkedConvert(
              'upper',
              (v) => v == null
                  ? null
                  : Upper.fromJson(Map<String, dynamic>.from(v as Map))),
          duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
          cid: $checkedConvert('cid', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ShareDtoImplToJson(_$ShareDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ShareTypeEnumEnumMap[instance.type]!,
      'urlCover': instance.urlCover,
      'title': instance.title,
      'songListString': instance.songListString,
      'upper': instance.upper,
      'duration': instance.duration,
      'cid': instance.cid,
    };

const _$ShareTypeEnumEnumMap = {
  ShareTypeEnum.bili_audio: 'bili_audio',
  ShareTypeEnum.bili_season: 'bili_season',
  ShareTypeEnum.bili_collect: 'bili_collect',
  ShareTypeEnum.bili_series: 'bili_series',
  ShareTypeEnum.bili_upper: 'bili_upper',
  ShareTypeEnum.local: 'local',
};
