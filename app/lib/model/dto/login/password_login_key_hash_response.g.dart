// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_login_key_hash_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PasswordLoginKeyHashResponseImpl _$$PasswordLoginKeyHashResponseImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$PasswordLoginKeyHashResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PasswordLoginKeyHashResponseImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          ttl: $checkedConvert('ttl', (v) => (v as num).toInt()),
          data: $checkedConvert(
              'data',
              (v) => PasswordLoginKeyHashResponseData.fromJson(
                  Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PasswordLoginKeyHashResponseImplToJson(
        _$PasswordLoginKeyHashResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$PasswordLoginKeyHashResponseDataImpl
    _$$PasswordLoginKeyHashResponseDataImplFromJson(Map json) => $checkedCreate(
          r'_$PasswordLoginKeyHashResponseDataImpl',
          json,
          ($checkedConvert) {
            final val = _$PasswordLoginKeyHashResponseDataImpl(
              hash: $checkedConvert('hash', (v) => v as String),
              key: $checkedConvert('key', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$$PasswordLoginKeyHashResponseDataImplToJson(
        _$PasswordLoginKeyHashResponseDataImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'key': instance.key,
    };
