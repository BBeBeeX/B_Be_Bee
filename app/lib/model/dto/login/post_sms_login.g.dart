// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_sms_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSmsLoginResponseImpl _$$PostSmsLoginResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$PostSmsLoginResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PostSmsLoginResponseImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => PostSmsLoginResponseData.fromJson(
                  Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostSmsLoginResponseImplToJson(
        _$PostSmsLoginResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$PostSmsLoginResponseDataImpl _$$PostSmsLoginResponseDataImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$PostSmsLoginResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$PostSmsLoginResponseDataImpl(
          is_new: $checkedConvert('is_new', (v) => v as bool),
          status: $checkedConvert('status', (v) => (v as num).toInt()),
          url: $checkedConvert('url', (v) => v as String),
          refresh_token: $checkedConvert('refresh_token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostSmsLoginResponseDataImplToJson(
        _$PostSmsLoginResponseDataImpl instance) =>
    <String, dynamic>{
      'is_new': instance.is_new,
      'status': instance.status,
      'url': instance.url,
      'refresh_token': instance.refresh_token,
    };
