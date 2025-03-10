// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cookie_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCookieInfoImpl _$$GetCookieInfoImplFromJson(Map json) => $checkedCreate(
      r'_$GetCookieInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$GetCookieInfoImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : Data.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$GetCookieInfoImplToJson(_$GetCookieInfoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map json) => $checkedCreate(
      r'_$DataImpl',
      json,
      ($checkedConvert) {
        final val = _$DataImpl(
          refresh: $checkedConvert('refresh', (v) => v as bool),
          timestamp: $checkedConvert('timestamp', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'timestamp': instance.timestamp,
    };
