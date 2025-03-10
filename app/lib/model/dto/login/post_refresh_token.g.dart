// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_refresh_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostRefreshTokenImpl _$$PostRefreshTokenImplFromJson(Map json) =>
    $checkedCreate(
      r'_$PostRefreshTokenImpl',
      json,
      ($checkedConvert) {
        final val = _$PostRefreshTokenImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          ttl: $checkedConvert('ttl', (v) => (v as num).toInt()),
          data: $checkedConvert(
              'data',
              (v) => PostRefreshTokenData.fromJson(
                  Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostRefreshTokenImplToJson(
        _$PostRefreshTokenImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$PostRefreshTokenDataImpl _$$PostRefreshTokenDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$PostRefreshTokenDataImpl',
      json,
      ($checkedConvert) {
        final val = _$PostRefreshTokenDataImpl(
          status: $checkedConvert('status', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          refresh_token: $checkedConvert('refresh_token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostRefreshTokenDataImplToJson(
        _$PostRefreshTokenDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'refresh_token': instance.refresh_token,
    };
