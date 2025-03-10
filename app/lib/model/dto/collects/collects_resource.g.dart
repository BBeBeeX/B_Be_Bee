// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectsResourceImpl _$$CollectsResourceImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectsResourceImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsResourceImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CollectsResourceData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsResourceImplToJson(
        _$CollectsResourceImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$CollectsResourceDataImpl _$$CollectsResourceDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectsResourceDataImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsResourceDataImpl(
          info: $checkedConvert(
              'info',
              (v) => v == null
                  ? null
                  : CollectsDataDto.fromJson(
                      Map<String, Object?>.from(v as Map))),
          medias: $checkedConvert(
              'medias',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CollectsBiliMediaDto.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          has_more: $checkedConvert('has_more', (v) => v as bool?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsResourceDataImplToJson(
        _$CollectsResourceDataImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'medias': instance.medias,
      'has_more': instance.has_more,
      'ttl': instance.ttl,
    };
