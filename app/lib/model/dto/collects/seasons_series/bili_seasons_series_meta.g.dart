// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_seasons_series_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiliSeasonsSeriesMetaImpl _$$BiliSeasonsSeriesMetaImplFromJson(Map json) =>
    $checkedCreate(
      r'_$BiliSeasonsSeriesMetaImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonsSeriesMetaImpl(
          category: $checkedConvert('category', (v) => (v as num?)?.toInt()),
          cover: $checkedConvert('cover', (v) => v as String?),
          creator: $checkedConvert('creator', (v) => v as String?),
          ctime: $checkedConvert('ctime', (v) => (v as num?)?.toInt()),
          description: $checkedConvert('description', (v) => v as String?),
          keywords: $checkedConvert('keywords',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          last_update_ts:
              $checkedConvert('last_update_ts', (v) => (v as num?)?.toInt()),
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          mtime: $checkedConvert('mtime', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          raw_keywords: $checkedConvert('raw_keywords', (v) => v as String?),
          ptime: $checkedConvert('ptime', (v) => (v as num?)?.toInt()),
          series_id: $checkedConvert('series_id', (v) => (v as num?)?.toInt()),
          season_id: $checkedConvert('season_id', (v) => (v as num?)?.toInt()),
          state: $checkedConvert('state', (v) => (v as num?)?.toInt()),
          total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonsSeriesMetaImplToJson(
        _$BiliSeasonsSeriesMetaImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'cover': instance.cover,
      'creator': instance.creator,
      'ctime': instance.ctime,
      'description': instance.description,
      'keywords': instance.keywords,
      'last_update_ts': instance.last_update_ts,
      'mid': instance.mid,
      'mtime': instance.mtime,
      'name': instance.name,
      'raw_keywords': instance.raw_keywords,
      'ptime': instance.ptime,
      'series_id': instance.series_id,
      'season_id': instance.season_id,
      'state': instance.state,
      'total': instance.total,
    };
