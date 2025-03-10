// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResultImpl _$$LoginResultImplFromJson(Map json) => $checkedCreate(
      r'_$LoginResultImpl',
      json,
      ($checkedConvert) {
        final val = _$LoginResultImpl(
          success: $checkedConvert('success', (v) => v as bool),
          errorMessage: $checkedConvert('errorMessage', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LoginResultImplToJson(_$LoginResultImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errorMessage': instance.errorMessage,
      'token': instance.token,
    };
