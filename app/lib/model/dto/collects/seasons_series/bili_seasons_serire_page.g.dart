// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_seasons_serire_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonResponsePageImpl _$$SeasonResponsePageImplFromJson(Map json) =>
    $checkedCreate(
      r'_$SeasonResponsePageImpl',
      json,
      ($checkedConvert) {
        final val = _$SeasonResponsePageImpl(
          page_num: $checkedConvert('page_num', (v) => (v as num?)?.toInt()),
          page_size: $checkedConvert('page_size', (v) => (v as num?)?.toInt()),
          total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SeasonResponsePageImplToJson(
        _$SeasonResponsePageImpl instance) =>
    <String, dynamic>{
      'page_num': instance.page_num,
      'page_size': instance.page_size,
      'total': instance.total,
    };
