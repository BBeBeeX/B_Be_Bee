// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_season_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiliSeasonResponseImpl _$$BiliSeasonResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$BiliSeasonResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonResponseImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BiliSeasonResponseData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonResponseImplToJson(
        _$BiliSeasonResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$BiliSeasonResponseDataImpl _$$BiliSeasonResponseDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$BiliSeasonResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonResponseDataImpl(
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
          meta: $checkedConvert(
              'meta',
              (v) => v == null
                  ? null
                  : BiliSeasonsSeriesMeta.fromJson(
                      Map<String, Object?>.from(v as Map))),
          page: $checkedConvert(
              'page',
              (v) => v == null
                  ? null
                  : BiliSeasonsSerirePage.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonResponseDataImplToJson(
        _$BiliSeasonResponseDataImpl instance) =>
    <String, dynamic>{
      'aids': instance.aids,
      'archives': instance.archives,
      'meta': instance.meta,
      'page': instance.page,
    };
