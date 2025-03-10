// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCollectsInfoImpl _$$ResponseCollectsInfoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$ResponseCollectsInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$ResponseCollectsInfoImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CollectsDataDto.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ResponseCollectsInfoImplToJson(
        _$ResponseCollectsInfoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };
