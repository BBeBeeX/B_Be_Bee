// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_pagelist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioPagelistImpl _$$AudioPagelistImplFromJson(Map json) => $checkedCreate(
      r'_$AudioPagelistImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioPagelistImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => AudioPagelistData.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioPagelistImplToJson(_$AudioPagelistImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$AudioPagelistDataImpl _$$AudioPagelistDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioPagelistDataImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioPagelistDataImpl(
          cid: $checkedConvert('cid', (v) => (v as num?)?.toInt()),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          from: $checkedConvert('from', (v) => v as String?),
          part_property: $checkedConvert('part_property', (v) => v as String?),
          duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
          vid: $checkedConvert('vid', (v) => v as String?),
          weblink: $checkedConvert('weblink', (v) => v as String?),
          dimension: $checkedConvert(
              'dimension',
              (v) => v == null
                  ? null
                  : Dimension.fromJson(Map<String, Object?>.from(v as Map))),
          first_frame: $checkedConvert('first_frame', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioPagelistDataImplToJson(
        _$AudioPagelistDataImpl instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'page': instance.page,
      'from': instance.from,
      'part_property': instance.part_property,
      'duration': instance.duration,
      'vid': instance.vid,
      'weblink': instance.weblink,
      'dimension': instance.dimension,
      'first_frame': instance.first_frame,
    };

_$DimensionImpl _$$DimensionImplFromJson(Map json) => $checkedCreate(
      r'_$DimensionImpl',
      json,
      ($checkedConvert) {
        final val = _$DimensionImpl(
          width: $checkedConvert('width', (v) => (v as num?)?.toInt()),
          height: $checkedConvert('height', (v) => (v as num?)?.toInt()),
          rotate: $checkedConvert('rotate', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DimensionImplToJson(_$DimensionImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'rotate': instance.rotate,
    };
