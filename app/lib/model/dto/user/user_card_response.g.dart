// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCardResponseImpl _$$UserCardResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$UserCardResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$UserCardResponseImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => UserCardResponseData.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserCardResponseImplToJson(
        _$UserCardResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$UserCardResponseDataImpl _$$UserCardResponseDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$UserCardResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$UserCardResponseDataImpl(
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          face: $checkedConvert('face', (v) => v as String?),
          sign: $checkedConvert('sign', (v) => v as String?),
          rank: $checkedConvert('rank', (v) => (v as num?)?.toInt()),
          level: $checkedConvert('level', (v) => (v as num?)?.toInt()),
          silence: $checkedConvert('silence', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserCardResponseDataImplToJson(
        _$UserCardResponseDataImpl instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'name': instance.name,
      'face': instance.face,
      'sign': instance.sign,
      'rank': instance.rank,
      'level': instance.level,
      'silence': instance.silence,
    };
