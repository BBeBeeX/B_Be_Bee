// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_seasons_and_series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiliSeasonsAndSeriesDtoImpl _$$BiliSeasonsAndSeriesDtoImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliSeasonsAndSeriesDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonsAndSeriesDtoImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BiliSeasonsAndSeriesDtoData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonsAndSeriesDtoImplToJson(
        _$BiliSeasonsAndSeriesDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$BiliSeasonsAndSeriesDtoDataImpl _$$BiliSeasonsAndSeriesDtoDataImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliSeasonsAndSeriesDtoDataImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonsAndSeriesDtoDataImpl(
          items_lists: $checkedConvert(
              'items_lists',
              (v) => v == null
                  ? null
                  : BiliSeasonsAndSeriesDtoItemsLists.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonsAndSeriesDtoDataImplToJson(
        _$BiliSeasonsAndSeriesDtoDataImpl instance) =>
    <String, dynamic>{
      'items_lists': instance.items_lists,
    };

_$BiliSeasonsAndSeriesDtoItemsListsImpl
    _$$BiliSeasonsAndSeriesDtoItemsListsImplFromJson(Map json) =>
        $checkedCreate(
          r'_$BiliSeasonsAndSeriesDtoItemsListsImpl',
          json,
          ($checkedConvert) {
            final val = _$BiliSeasonsAndSeriesDtoItemsListsImpl(
              page: $checkedConvert(
                  'page',
                  (v) => v == null
                      ? null
                      : BiliSeasonsSerirePage.fromJson(
                          Map<String, Object?>.from(v as Map))),
              seasons_list: $checkedConvert(
                  'seasons_list',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) => BiliSeasonsList.fromJson(
                          Map<String, Object?>.from(e as Map)))
                      .toList()),
              series_list: $checkedConvert(
                  'series_list',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) => BiliSeriesList.fromJson(
                          Map<String, Object?>.from(e as Map)))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$$BiliSeasonsAndSeriesDtoItemsListsImplToJson(
        _$BiliSeasonsAndSeriesDtoItemsListsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'seasons_list': instance.seasons_list,
      'series_list': instance.series_list,
    };

_$BiliSeasonsListImpl _$$BiliSeasonsListImplFromJson(Map json) =>
    $checkedCreate(
      r'_$BiliSeasonsListImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonsListImpl(
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
          recent_aids: $checkedConvert(
              'recent_aids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonsListImplToJson(
        _$BiliSeasonsListImpl instance) =>
    <String, dynamic>{
      'archives': instance.archives,
      'meta': instance.meta,
      'recent_aids': instance.recent_aids,
    };

_$BiliSeriesListImpl _$$BiliSeriesListImplFromJson(Map json) => $checkedCreate(
      r'_$BiliSeriesListImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeriesListImpl(
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
          recent_aids: $checkedConvert(
              'recent_aids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeriesListImplToJson(
        _$BiliSeriesListImpl instance) =>
    <String, dynamic>{
      'archives': instance.archives,
      'meta': instance.meta,
      'recent_aids': instance.recent_aids,
    };
