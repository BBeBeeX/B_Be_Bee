// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_cnt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectsCntDtoImpl _$$CollectsCntDtoImplFromJson(Map json) => $checkedCreate(
      r'_$CollectsCntDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsCntDtoImpl(
          collect: $checkedConvert('collect', (v) => (v as num?)?.toInt()),
          play: $checkedConvert('play', (v) => (v as num?)?.toInt()),
          thumb_up: $checkedConvert('thumb_up', (v) => (v as num?)?.toInt()),
          share: $checkedConvert('share', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsCntDtoImplToJson(
        _$CollectsCntDtoImpl instance) =>
    <String, dynamic>{
      'collect': instance.collect,
      'play': instance.play,
      'thumb_up': instance.thumb_up,
      'share': instance.share,
    };
