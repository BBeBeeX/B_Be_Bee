// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_upper_all_videos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiliUpperAllVideosDtoImpl _$$BiliUpperAllVideosDtoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$BiliUpperAllVideosDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliUpperAllVideosDtoImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BiliUpperAllVideosDtoData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliUpperAllVideosDtoImplToJson(
        _$BiliUpperAllVideosDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$BiliUpperAllVideosDtoDataImpl _$$BiliUpperAllVideosDtoDataImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliUpperAllVideosDtoDataImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliUpperAllVideosDtoDataImpl(
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
                  : BiliUpperAllVideosDtoPage.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliUpperAllVideosDtoDataImplToJson(
        _$BiliUpperAllVideosDtoDataImpl instance) =>
    <String, dynamic>{
      'archives': instance.archives,
      'page': instance.page,
    };

_$BiliUpperAllVideosDtoPageImpl _$$BiliUpperAllVideosDtoPageImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliUpperAllVideosDtoPageImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliUpperAllVideosDtoPageImpl(
          num: $checkedConvert('num', (v) => (v as num?)?.toInt()),
          size: $checkedConvert('size', (v) => (v as num?)?.toInt()),
          total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliUpperAllVideosDtoPageImplToJson(
        _$BiliUpperAllVideosDtoPageImpl instance) =>
    <String, dynamic>{
      'num': instance.num,
      'size': instance.size,
      'total': instance.total,
    };
