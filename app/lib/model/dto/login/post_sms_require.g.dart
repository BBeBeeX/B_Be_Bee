// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_sms_require.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSmsRequireResponseImpl _$$PostSmsRequireResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$PostSmsRequireResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PostSmsRequireResponseImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : PostSmsRequireResponseData.fromJson(
                      Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostSmsRequireResponseImplToJson(
        _$PostSmsRequireResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$PostSmsRequireResponseDataImpl _$$PostSmsRequireResponseDataImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$PostSmsRequireResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$PostSmsRequireResponseDataImpl(
          captcha_key: $checkedConvert('captcha_key', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostSmsRequireResponseDataImplToJson(
        _$PostSmsRequireResponseDataImpl instance) =>
    <String, dynamic>{
      'captcha_key': instance.captcha_key,
    };
