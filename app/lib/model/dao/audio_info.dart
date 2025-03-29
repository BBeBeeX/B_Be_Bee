import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_bili_media_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'audio_info.freezed.dart';
part 'audio_info.g.dart';

@freezed
class AudioInfo with _$AudioInfo {
  @HiveType(typeId: 9)
  const factory AudioInfo({
    ///bili 'bili_$bid'
    @HiveField(0) required String id,
    @HiveField(1) @Default('') String title,
    @HiveField(2) @Default(0) int duration,
    @HiveField(3) String? music_title,
    @HiveField(4) String? music_singer,
    @HiveField(5) String? music_album,
    @HiveField(6)
    @Default(AudioSourceTypeEnum.bili)
    AudioSourceTypeEnum audioCurrentType, //视频当前类型
    @HiveField(7)
    @Default(AudioSourceTypeEnum.bili)
    AudioSourceTypeEnum audioSourceType, //视频最初类型
    @HiveField(8) @Default(Upper()) Upper upper,
    @HiveField(9) String? lyrics, //webvtt 格式字幕

    //本地源设置
    @HiveField(10) @Default('') String localPath,
    @HiveField(11) @Default('') String coverLocalUrl,

    //bili源设置bvid和cid
    @HiveField(12) @Default('') String onlineId, //bili 为 bvid
    @HiveField(13) @Default(0) int biliCid,
    @HiveField(14) @Default('') String coverWebUrl,
  }) = _AudioInfo;

  factory AudioInfo.fromJson(Map<String, dynamic> json) =>
      _$AudioInfoFromJson(json);
  // 通过bili源创建实例
  factory AudioInfo.fromBili({
    required String title,
    String? coverWebUrl,
    required int duration,
    required String bvid,
    required int cid,
    required String upperId,
    required String upperName,
    String? upperFace,
  }) {
    return AudioInfo(
      id: 'bili_video_$bvid',
      title: title,
      upper: Upper(id: upperId, name: upperName, face: upperFace ?? ''),
      coverWebUrl: coverWebUrl ?? Constants.bili_video_default_cover,
      duration: duration,
      onlineId: bvid,
      biliCid: cid,
      audioCurrentType: AudioSourceTypeEnum.bili,
      audioSourceType: AudioSourceTypeEnum.bili,
    );
  }

  factory AudioInfo.fromBiliMedia({
    required CollectsBiliMediaDto media,
  }) {
    return AudioInfo(
      id: 'bili_video_${media.bvid}',
      title: media.title ?? '',
      upper: Upper(
        id: media.upper?.mid.toString() ?? '',
        name: media.upper?.name ?? '',
      ),
      coverWebUrl: media.cover ?? Constants.bili_video_default_cover,
      duration: media.duration ?? 0,
      onlineId: media.bvid ?? '',
      biliCid: media.ugc?.first_cid ?? 0,
      audioCurrentType: AudioSourceTypeEnum.bili,
      audioSourceType: AudioSourceTypeEnum.bili,
    );
  }

  factory AudioInfo.fromBiliSeasonResponseArchives({
    required BiliSeasonsSeriesArchives archives,
  }) {
    return AudioInfo(
      id: 'bili_video_${archives.bvid}',
      title: archives.title ?? '',
      coverWebUrl: archives.pic ?? Constants.bili_video_default_cover,
      duration: archives.duration ?? 0,
      onlineId: archives.bvid ?? '',
      audioCurrentType: AudioSourceTypeEnum.bili,
      audioSourceType: AudioSourceTypeEnum.bili,
    );
  }

  //TODO 走音频流
  // factory AudioInfo.fromBiliMusic({
  //   required AudioTopMusicItem item,
  // }) {
  // return AudioInfo(
  //   id: 'bili_music_${item.music_id}',
  //   bvid: item.creation_bvid ?? '',
  //   duration: item.creation_duration ?? 0,
  //   title: item.music_title ?? '',
  //   author: item.singer ?? '',
  //   coverWebUrl: item.mv_cover ?? Constants.bili_video_default_cover,
  //   audioCurrentType: AudioSourceType.bili_music,
  //   audioSourceType: AudioSourceType.bili_music,
  // );
  // }

  static List<AudioInfo> convertBiliMediaListToAudioInfoList(
      List<CollectsBiliMediaDto>? biliMediaList) {
    if (biliMediaList == null || biliMediaList.isEmpty) {
      return [];
    }
    return biliMediaList
        .map((media) => AudioInfo.fromBiliMedia(media: media))
        .toList();
  }

  static List<AudioInfo> convertBiliSeasonResponseArchivesToAudioInfoList(
      List<BiliSeasonsSeriesArchives>? SeasonResponseArchivesList) {
    if (SeasonResponseArchivesList == null ||
        SeasonResponseArchivesList.isEmpty) {
      return [];
    }
    return SeasonResponseArchivesList.map((archive) =>
        AudioInfo.fromBiliSeasonResponseArchives(archives: archive)).toList();
  }
}
