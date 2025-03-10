// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upper_notice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpperNoticeDtoImpl _$$UpperNoticeDtoImplFromJson(Map json) => $checkedCreate(
      r'_$UpperNoticeDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$UpperNoticeDtoImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert('data', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpperNoticeDtoImplToJson(
        _$UpperNoticeDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };
