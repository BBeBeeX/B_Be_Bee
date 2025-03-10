// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatedsListImpl _$$CreatedsListImplFromJson(Map json) => $checkedCreate(
      r'_$CreatedsListImpl',
      json,
      ($checkedConvert) {
        final val = _$CreatedsListImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : CreatedListData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreatedsListImplToJson(_$CreatedsListImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$CreatedListDataImpl _$$CreatedListDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CreatedListDataImpl',
      json,
      ($checkedConvert) {
        final val = _$CreatedListDataImpl(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          list: $checkedConvert(
              'list',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CollectsDataDto.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          hasMore: $checkedConvert('hasMore', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreatedListDataImplToJson(
        _$CreatedListDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
      'hasMore': instance.hasMore,
    };
