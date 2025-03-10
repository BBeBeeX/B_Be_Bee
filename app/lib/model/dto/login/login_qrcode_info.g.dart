// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_qrcode_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginQRcodeImpl _$$LoginQRcodeImplFromJson(Map json) => $checkedCreate(
      r'_$LoginQRcodeImpl',
      json,
      ($checkedConvert) {
        final val = _$LoginQRcodeImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => LoginQRcodeInfo.fromJson(
                  Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LoginQRcodeImplToJson(_$LoginQRcodeImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$LoginQRcodeInfoImpl _$$LoginQRcodeInfoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$LoginQRcodeInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$LoginQRcodeInfoImpl(
          url: $checkedConvert('url', (v) => v as String?),
          qrcode_key: $checkedConvert('qrcode_key', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LoginQRcodeInfoImplToJson(
        _$LoginQRcodeInfoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'qrcode_key': instance.qrcode_key,
    };
