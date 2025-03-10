// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collects_bili_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectsBiliMediaDtoImpl _$$CollectsBiliMediaDtoImplFromJson(Map json) =>
    $checkedCreate(
      r'_$CollectsBiliMediaDtoImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectsBiliMediaDtoImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          cover: $checkedConvert('cover', (v) => v as String?),
          intro: $checkedConvert('intro', (v) => v as String?),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
          upper: $checkedConvert(
              'upper',
              (v) => v == null
                  ? null
                  : CollectsUpperDto.fromJson(
                      Map<String, Object?>.from(v as Map))),
          attr: $checkedConvert('attr', (v) => (v as num?)?.toInt()),
          cnt_info: $checkedConvert(
              'cnt_info',
              (v) => v == null
                  ? null
                  : BiliMediaInfo.fromJson(
                      Map<String, Object?>.from(v as Map))),
          link: $checkedConvert('link', (v) => v as String?),
          ctime: $checkedConvert('ctime', (v) => (v as num?)?.toInt()),
          pubtime: $checkedConvert('pubtime', (v) => (v as num?)?.toInt()),
          fav_time: $checkedConvert('fav_time', (v) => (v as num?)?.toInt()),
          bv_id: $checkedConvert('bv_id', (v) => v as String?),
          bvid: $checkedConvert('bvid', (v) => v as String?),
          ugc: $checkedConvert(
              'ugc',
              (v) => v == null
                  ? null
                  : BiliMediaUgc.fromJson(Map<String, Object?>.from(v as Map))),
          media_list_link:
              $checkedConvert('media_list_link', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectsBiliMediaDtoImplToJson(
        _$CollectsBiliMediaDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'cover': instance.cover,
      'intro': instance.intro,
      'page': instance.page,
      'duration': instance.duration,
      'upper': instance.upper,
      'attr': instance.attr,
      'cnt_info': instance.cnt_info,
      'link': instance.link,
      'ctime': instance.ctime,
      'pubtime': instance.pubtime,
      'fav_time': instance.fav_time,
      'bv_id': instance.bv_id,
      'bvid': instance.bvid,
      'ugc': instance.ugc,
      'media_list_link': instance.media_list_link,
    };

_$BiliMediaInfoImpl _$$BiliMediaInfoImplFromJson(Map json) => $checkedCreate(
      r'_$BiliMediaInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliMediaInfoImpl(
          collect: $checkedConvert('collect', (v) => (v as num?)?.toInt()),
          play: $checkedConvert('play', (v) => (v as num?)?.toInt()),
          thumb_up: $checkedConvert('thumb_up', (v) => (v as num?)?.toInt()),
          share: $checkedConvert('share', (v) => (v as num?)?.toInt()),
          danmaku: $checkedConvert('danmaku', (v) => (v as num?)?.toInt()),
          vt: $checkedConvert('vt', (v) => (v as num?)?.toInt()),
          play_switch:
              $checkedConvert('play_switch', (v) => (v as num?)?.toInt()),
          reply: $checkedConvert('reply', (v) => (v as num?)?.toInt()),
          view_text1: $checkedConvert('view_text1', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliMediaInfoImplToJson(_$BiliMediaInfoImpl instance) =>
    <String, dynamic>{
      'collect': instance.collect,
      'play': instance.play,
      'thumb_up': instance.thumb_up,
      'share': instance.share,
      'danmaku': instance.danmaku,
      'vt': instance.vt,
      'play_switch': instance.play_switch,
      'reply': instance.reply,
      'view_text1': instance.view_text1,
    };

_$BiliMediaUgcImpl _$$BiliMediaUgcImplFromJson(Map json) => $checkedCreate(
      r'_$BiliMediaUgcImpl',
      json,
      ($checkedConvert) {
        final val = _$BiliMediaUgcImpl(
          first_cid: $checkedConvert('first_cid', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BiliMediaUgcImplToJson(_$BiliMediaUgcImpl instance) =>
    <String, dynamic>{
      'first_cid': instance.first_cid,
    };
