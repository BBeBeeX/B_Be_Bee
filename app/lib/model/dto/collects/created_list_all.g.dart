// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_list_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatedListAllImpl _$$CreatedListAllImplFromJson(Map json) => $checkedCreate(
      r'_$CreatedListAllImpl',
      json,
      ($checkedConvert) {
        final val = _$CreatedListAllImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CollectsListAllDto.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreatedListAllImplToJson(
        _$CreatedListAllImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };
