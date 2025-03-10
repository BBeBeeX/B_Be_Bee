// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectsDataDtoImpl _$$CollectsDataDtoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectsDataDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsDataDtoImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          fid: $checkedConvert('fid', (v) => (v as num?)?.toInt()),
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          attr: $checkedConvert('attr', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          cover: $checkedConvert('cover', (v) => v as String?),
          upper: $checkedConvert(
              'upper',
              (v) => v == null
                  ? null
                  : CollectsUpperDto.fromJson(
                      Map<String, Object?>.from(v as Map))),
          cover_type:
              $checkedConvert('cover_type', (v) => (v as num?)?.toInt()),
          cnt_info: $checkedConvert(
              'cnt_info',
              (v) => v == null
                  ? null
                  : CollectsCntDto.fromJson(
                      Map<String, Object?>.from(v as Map))),
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          intro: $checkedConvert('intro', (v) => v as String?),
          ctime: $checkedConvert('ctime', (v) => (v as num?)?.toInt()),
          mtime: $checkedConvert('mtime', (v) => (v as num?)?.toInt()),
          state: $checkedConvert('state', (v) => (v as num?)?.toInt()),
          fav_state: $checkedConvert('fav_state', (v) => (v as num?)?.toInt()),
          like_state:
              $checkedConvert('like_state', (v) => (v as num?)?.toInt()),
          media_count:
              $checkedConvert('media_count', (v) => (v as num?)?.toInt()),
          is_top: $checkedConvert('is_top', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsDataDtoImplToJson(
        _$CollectsDataDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fid': instance.fid,
      'mid': instance.mid,
      'attr': instance.attr,
      'title': instance.title,
      'cover': instance.cover,
      'upper': instance.upper,
      'cover_type': instance.cover_type,
      'cnt_info': instance.cnt_info,
      'type': instance.type,
      'intro': instance.intro,
      'ctime': instance.ctime,
      'mtime': instance.mtime,
      'state': instance.state,
      'fav_state': instance.fav_state,
      'like_state': instance.like_state,
      'media_count': instance.media_count,
      'is_top': instance.is_top,
    };
