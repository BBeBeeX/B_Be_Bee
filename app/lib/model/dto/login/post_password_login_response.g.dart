// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_password_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPasswordLoginResponseImpl _$$PostPasswordLoginResponseImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$PostPasswordLoginResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PostPasswordLoginResponseImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => PostPasswordLoginResponseData.fromJson(
                  Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostPasswordLoginResponseImplToJson(
        _$PostPasswordLoginResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$PostPasswordLoginResponseDataImpl
    _$$PostPasswordLoginResponseDataImplFromJson(Map json) => $checkedCreate(
          r'_$PostPasswordLoginResponseDataImpl',
          json,
          ($checkedConvert) {
            final val = _$PostPasswordLoginResponseDataImpl(
              status: $checkedConvert('status', (v) => (v as num).toInt()),
              refresh_token:
                  $checkedConvert('refresh_token', (v) => v as String),
              message: $checkedConvert('message', (v) => v as String),
              timestamp:
                  $checkedConvert('timestamp', (v) => (v as num).toInt()),
              url: $checkedConvert('url', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$$PostPasswordLoginResponseDataImplToJson(
        _$PostPasswordLoginResponseDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'refresh_token': instance.refresh_token,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'url': instance.url,
    };
