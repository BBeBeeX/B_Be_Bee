// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_list_all_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectsListAllDtoImpl _$$CollectsListAllDtoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectsListAllDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsListAllDtoImpl(
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          list: $checkedConvert(
              'list',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CollectsDataDto.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsListAllDtoImplToJson(
        _$CollectsListAllDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };
