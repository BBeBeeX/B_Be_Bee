// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_top_music_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioTopMusicListResponseImpl _$$AudioTopMusicListResponseImplFromJson(
        Map json) =>
    $checkedCreate(
      r'_$AudioTopMusicListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioTopMusicListResponseImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : AudioTopMusicData.fromJson(
                      Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioTopMusicListResponseImplToJson(
        _$AudioTopMusicListResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$AudioTopMusicDataImpl _$$AudioTopMusicDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioTopMusicDataImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioTopMusicDataImpl(
          list_id: $checkedConvert('list_id', (v) => (v as num?)?.toInt()),
          version: $checkedConvert('version', (v) => (v as num?)?.toInt()),
          list: $checkedConvert(
              'list',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => AudioTopMusicItem.fromJson(
                          Map<String, dynamic>.from(e as Map)))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioTopMusicDataImplToJson(
        _$AudioTopMusicDataImpl instance) =>
    <String, dynamic>{
      'list_id': instance.list_id,
      'version': instance.version,
      'list': instance.list,
    };

_$AudioTopMusicItemImpl _$$AudioTopMusicItemImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioTopMusicItemImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioTopMusicItemImpl(
          music_id: $checkedConvert('music_id', (v) => v as String?),
          music_title: $checkedConvert('music_title', (v) => v as String?),
          singer: $checkedConvert('singer', (v) => v as String?),
          album: $checkedConvert('album', (v) => v as String?),
          mv_aid: $checkedConvert('mv_aid', (v) => (v as num?)?.toInt()),
          mv_bvid: $checkedConvert('mv_bvid', (v) => v as String?),
          mv_cover: $checkedConvert('mv_cover', (v) => v as String?),
          heat: $checkedConvert('heat', (v) => (v as num?)?.toInt()),
          rank: $checkedConvert('rank', (v) => (v as num?)?.toInt()),
          can_listen: $checkedConvert('can_listen', (v) => v as bool?),
          recommendation:
              $checkedConvert('recommendation', (v) => v as String?),
          creation_aid:
              $checkedConvert('creation_aid', (v) => (v as num?)?.toInt()),
          creation_bvid: $checkedConvert('creation_bvid', (v) => v as String?),
          creation_cover:
              $checkedConvert('creation_cover', (v) => v as String?),
          creation_title:
              $checkedConvert('creation_title', (v) => v as String?),
          creation_up:
              $checkedConvert('creation_up', (v) => (v as num?)?.toInt()),
          creation_nickname:
              $checkedConvert('creation_nickname', (v) => v as String?),
          creation_duration:
              $checkedConvert('creation_duration', (v) => (v as num?)?.toInt()),
          creation_play:
              $checkedConvert('creation_play', (v) => (v as num?)?.toInt()),
          vt: $checkedConvert('vt', (v) => (v as num?)?.toInt()),
          creation_reason:
              $checkedConvert('creation_reason', (v) => v as String?),
          achievements: $checkedConvert('achievements',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          material_id:
              $checkedConvert('material_id', (v) => (v as num?)?.toInt()),
          material_use_num:
              $checkedConvert('material_use_num', (v) => (v as num?)?.toInt()),
          material_duration:
              $checkedConvert('material_duration', (v) => (v as num?)?.toInt()),
          material_show:
              $checkedConvert('material_show', (v) => (v as num?)?.toInt()),
          song_type: $checkedConvert('song_type', (v) => (v as num?)?.toInt()),
          is_vt: $checkedConvert('is_vt', (v) => (v as num?)?.toInt()),
          vt_display: $checkedConvert('vt_display', (v) => v as String?),
          last_rank: $checkedConvert('last_rank', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioTopMusicItemImplToJson(
        _$AudioTopMusicItemImpl instance) =>
    <String, dynamic>{
      'music_id': instance.music_id,
      'music_title': instance.music_title,
      'singer': instance.singer,
      'album': instance.album,
      'mv_aid': instance.mv_aid,
      'mv_bvid': instance.mv_bvid,
      'mv_cover': instance.mv_cover,
      'heat': instance.heat,
      'rank': instance.rank,
      'can_listen': instance.can_listen,
      'recommendation': instance.recommendation,
      'creation_aid': instance.creation_aid,
      'creation_bvid': instance.creation_bvid,
      'creation_cover': instance.creation_cover,
      'creation_title': instance.creation_title,
      'creation_up': instance.creation_up,
      'creation_nickname': instance.creation_nickname,
      'creation_duration': instance.creation_duration,
      'creation_play': instance.creation_play,
      'vt': instance.vt,
      'creation_reason': instance.creation_reason,
      'achievements': instance.achievements,
      'material_id': instance.material_id,
      'material_use_num': instance.material_use_num,
      'material_duration': instance.material_duration,
      'material_show': instance.material_show,
      'song_type': instance.song_type,
      'is_vt': instance.is_vt,
      'vt_display': instance.vt_display,
      'last_rank': instance.last_rank,
    };
