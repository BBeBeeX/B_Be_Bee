// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaptchaResultModelImpl _$$CaptchaResultModelImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CaptchaResultModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CaptchaResultModelImpl(
          validate: $checkedConvert('validate', (v) => v as String?),
          seccode: $checkedConvert('seccode', (v) => v as String?),
          captchaData: $checkedConvert(
              'captchaData',
              (v) => v == null
                  ? null
                  : CaptchaDataResponse.fromJson(
                      Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CaptchaResultModelImplToJson(
        _$CaptchaResultModelImpl instance) =>
    <String, dynamic>{
      'validate': instance.validate,
      'seccode': instance.seccode,
      'captchaData': instance.captchaData,
    };

_$CaptchaDataResponseImpl _$$CaptchaDataResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CaptchaDataResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$CaptchaDataResponseImpl(
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          message: $checkedConvert('message', (v) => v as String),
          ttl: $checkedConvert('ttl', (v) => (v as num).toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CaptchaDataResponseData.fromJson(
                      Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CaptchaDataResponseImplToJson(
        _$CaptchaDataResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$CaptchaDataResponseDataImpl _$$CaptchaDataResponseDataImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$CaptchaDataResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$CaptchaDataResponseDataImpl(
          type: $checkedConvert('type', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
          geetest: $checkedConvert('geetest',
              (v) => Geetest.fromJson(Map<String, dynamic>.from(v as Map))),
          tencent: $checkedConvert('tencent',
              (v) => Tencent.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CaptchaDataResponseDataImplToJson(
        _$CaptchaDataResponseDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'token': instance.token,
      'geetest': instance.geetest,
      'tencent': instance.tencent,
    };

_$GeetestImpl _$$GeetestImplFromJson(Map json) => $checkedCreate(
      r'_$GeetestImpl',
      json,
      ($checkedConvert) {
        final val = _$GeetestImpl(
          challenge: $checkedConvert('challenge', (v) => v as String),
          gt: $checkedConvert('gt', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$GeetestImplToJson(_$GeetestImpl instance) =>
    <String, dynamic>{
      'challenge': instance.challenge,
      'gt': instance.gt,
    };

_$TencentImpl _$$TencentImplFromJson(Map json) => $checkedCreate(
      r'_$TencentImpl',
      json,
      ($checkedConvert) {
        final val = _$TencentImpl(
          appid: $checkedConvert('appid', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TencentImplToJson(_$TencentImpl instance) =>
    <String, dynamic>{
      'appid': instance.appid,
    };
