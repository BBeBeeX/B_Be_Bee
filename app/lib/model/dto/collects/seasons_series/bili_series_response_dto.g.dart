// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_series_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiliSeriesResponseDtoImpl _$$BiliSeriesResponseDtoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$BiliSeriesResponseDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeriesResponseDtoImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BiliSeriesResponseDtoData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeriesResponseDtoImplToJson(
        _$BiliSeriesResponseDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$BiliSeriesResponseDtoDataImpl _$$BiliSeriesResponseDtoDataImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliSeriesResponseDtoDataImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeriesResponseDtoDataImpl(
          aids: $checkedConvert(
              'aids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          archives: $checkedConvert(
              'archives',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => BiliSeasonsSeriesArchives.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          page: $checkedConvert(
              'page',
              (v) => v == null
                  ? null
                  : BiliSeriesResponseDtoPage.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeriesResponseDtoDataImplToJson(
        _$BiliSeriesResponseDtoDataImpl instance) =>
    <String, dynamic>{
      'aids': instance.aids,
      'archives': instance.archives,
      'page': instance.page,
    };

_$BiliSeriesResponseDtoPageImpl _$$BiliSeriesResponseDtoPageImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliSeriesResponseDtoPageImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeriesResponseDtoPageImpl(
          num: $checkedConvert('num', (v) => (v as num?)?.toInt()),
          size: $checkedConvert('size', (v) => (v as num?)?.toInt()),
          total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeriesResponseDtoPageImplToJson(
        _$BiliSeriesResponseDtoPageImpl instance) =>
    <String, dynamic>{
      'num': instance.num,
      'size': instance.size,
      'total': instance.total,
    };
