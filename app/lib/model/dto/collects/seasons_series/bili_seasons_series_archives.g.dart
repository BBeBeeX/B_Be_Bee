// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bili_seasons_series_archives.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiliSeasonsSeriesArchivesImpl _$$BiliSeasonsSeriesArchivesImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$BiliSeasonsSeriesArchivesImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliSeasonsSeriesArchivesImpl(
          aid: $checkedConvert('aid', (v) => (v as num?)?.toInt()),
          bvid: $checkedConvert('bvid', (v) => v as String?),
          ctime: $checkedConvert('ctime', (v) => (v as num?)?.toInt()),
          duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
          interactive_video:
              $checkedConvert('interactive_video', (v) => v as bool?),
          pic: $checkedConvert('pic', (v) => v as String?),
          playback_position:
              $checkedConvert('playback_position', (v) => (v as num?)?.toInt()),
          pubdate: $checkedConvert('pubdate', (v) => (v as num?)?.toInt()),
          stat: $checkedConvert(
              'stat',
              (v) => v == null
                  ? null
                  : BiliSeasonsSeriesArchivesStat.fromJson(
                      Map<String, Object?>.from(v as Map))),
          state: $checkedConvert('state', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          ugc_pay: $checkedConvert('ugc_pay', (v) => (v as num?)?.toInt()),
          vt_display: $checkedConvert('vt_display', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliSeasonsSeriesArchivesImplToJson(
        _$BiliSeasonsSeriesArchivesImpl instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'bvid': instance.bvid,
      'ctime': instance.ctime,
      'duration': instance.duration,
      'interactive_video': instance.interactive_video,
      'pic': instance.pic,
      'playback_position': instance.playback_position,
      'pubdate': instance.pubdate,
      'stat': instance.stat,
      'state': instance.state,
      'title': instance.title,
      'ugc_pay': instance.ugc_pay,
      'vt_display': instance.vt_display,
    };

_$BiliSeasonsSeriesArchivesStatImpl
    _$$BiliSeasonsSeriesArchivesStatImplFromJson(Map json) => $checkedCreate(
          r'_$BiliSeasonsSeriesArchivesStatImpl',
          json,
          ($checkedConvert) {
            final val = _$BiliSeasonsSeriesArchivesStatImpl(
              view: $checkedConvert('view', (v) => (v as num?)?.toInt()),
              vt: $checkedConvert('vt', (v) => (v as num?)?.toInt()),
            );
            return val;
          },
        );

Map<String, dynamic> _$$BiliSeasonsSeriesArchivesStatImplToJson(
        _$BiliSeasonsSeriesArchivesStatImpl instance) =>
    <String, dynamic>{
      'view': instance.view,
      'vt': instance.vt,
    };
