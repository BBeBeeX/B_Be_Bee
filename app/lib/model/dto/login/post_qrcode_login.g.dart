// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_qrcode_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostQrcodeLoginImpl _$$PostQrcodeLoginImplFromJson(Map json) =>
    $checkedCreate(
      r'_$PostQrcodeLoginImpl',
      json,
      ($checkedConvert) {
        final val = _$PostQrcodeLoginImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => PostQrcodeLoginData.fromJson(
                  Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostQrcodeLoginImplToJson(
        _$PostQrcodeLoginImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$PostQrcodeLoginDataImpl _$$PostQrcodeLoginDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$PostQrcodeLoginDataImpl',
      json,
      ($checkedConvert) {
        final val = _$PostQrcodeLoginDataImpl(
          url: $checkedConvert('url', (v) => v as String?),
          refresh_token: $checkedConvert('refresh_token', (v) => v as String?),
          timestamp: $checkedConvert('timestamp', (v) => (v as num?)?.toInt()),
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostQrcodeLoginDataImplToJson(
        _$PostQrcodeLoginDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'refresh_token': instance.refresh_token,
      'timestamp': instance.timestamp,
      'code': instance.code,
      'message': instance.message,
    };
