import 'dart:convert';

import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/share_utils.dart';
import '../../dao/audio_info.dart';
import '../../enum/share_type_enum.dart';

part 'share_dto.freezed.dart';
part 'share_dto.g.dart';

@freezed
class ShareDto with _$ShareDto {
  const factory ShareDto({
    String? id,
    required ShareTypeEnum type,
    String? urlCover,
    String? title,
    List<String>? songListString,
    Upper? upper,
    int? duration,
    int? cid,
  }) = _ShareDto;

  factory ShareDto.fromJson(Map<String, dynamic> json) =>
      _$ShareDtoFromJson(json);

  factory ShareDto.fromBase64(String base64String) {
    try {
      final jsonString = utf8.decode(base64Decode(base64String));
      final Map<String, dynamic> json = jsonDecode(jsonString);
      if (json.containsKey('type')) {
        return ShareDto.fromJson(json);
      } else {
        throw FormatException("Missing required fields in JSON.");
      }
    } catch (e) {
      print("Error decoding base64 or JSON: $e");
      throw FormatException("Missing required fields in JSON.");
    }
  }

  static String toBase64(ShareDto? shareDto) {
    if (shareDto == null) {
      return '';
    }
    final jsonString = jsonEncode(shareDto.toJson());
    return base64Encode(utf8.encode(jsonString));
  }

  static List<AudioInfo> base64ToAudioList(List<String>? base64List) {
    if (base64List == null || base64List.isEmpty) return [];

    return base64List
        .map((base64String) async {
          try {
            final shareDto = ShareDto.fromBase64(base64String);
            return ShareUtils.parseShareDtoToAudioInfo(shareDto);
          } catch (e) {
            await Future.microtask(() {
              container
                  .read(commonLoggerProvider.notifier)
                  .addLog('Error decoding Base64 to AudioInfo: $e');
            });
          }
        })
        .whereType<AudioInfo>()
        .toList();
  }

  static ShareDto collectToBase64(CollectPlaylist? collectPlaylist) {
    return ShareDto(
        songListString: (collectPlaylist?.songs ?? [])
            .where((song) => song.audioSourceType != AudioSourceTypeEnum.local)
            .map((song) =>
                ShareDto.toBase64(ShareDto.fromAudioInfo(audioInfo: song)))
            .toList(),
        type: ShareTypeEnum.local,
        urlCover: collectPlaylist?.cover,
        title: collectPlaylist?.title,
        upper: collectPlaylist?.upper);
  }

  static ShareDto? fromAudioInfo({
    required AudioInfo? audioInfo,
  }) {
    if (audioInfo?.audioSourceType == null) {
      return null;
    }
    switch (audioInfo!.audioSourceType) {
      case AudioSourceTypeEnum.local:
        ToastUtil.show('本地音频文件暂时无法分享');
        return null;
      case AudioSourceTypeEnum.bili:
      case AudioSourceTypeEnum.bili_music:
        return ShareDto(
          id: audioInfo.onlineId.toString(),
          type: ShareTypeEnum.bili_audio,
        );
    }
  }

  //只在分享列表时使用,减少请求api次数和时间
  static ShareDto? fromAudioInfoDetail({
    required AudioInfo? audioInfo,
  }) {
    if (audioInfo?.audioSourceType == null) {
      return null;
    }
    switch (audioInfo!.audioSourceType) {
      case AudioSourceTypeEnum.local:
        ToastUtil.show('本地音频文件暂时无法分享');
        return null;
      case AudioSourceTypeEnum.bili:
      case AudioSourceTypeEnum.bili_music:
        return ShareDto(
            id: audioInfo.onlineId.toString(),
            type: ShareTypeEnum.bili_audio,
            title: audioInfo.title,
            duration: audioInfo.duration,
            cid: audioInfo.biliCid,
            upper: audioInfo.upper,
            urlCover: audioInfo.coverWebUrl);
    }
  }

  static ShareDto? fromCollectPlaylist({
    required CollectPlaylist collectPlaylist,
  }) {
    switch (collectPlaylist.collectSourceType) {
      case CollectTypeEnum.biliCollect:
        return ShareDto(
          id: collectPlaylist.onlineId ?? '0',
          type: ShareTypeEnum.bili_collect,
        );
      case CollectTypeEnum.biliSeason:
        return ShareDto(
          id: collectPlaylist.onlineId ?? '0',
          type: ShareTypeEnum.bili_season,
        );
      case CollectTypeEnum.biliUpper:
        return ShareDto(
            id: collectPlaylist.onlineId ?? '0',
            type: ShareTypeEnum.bili_upper,
            urlCover: collectPlaylist.cover,
            title: collectPlaylist.title,
            upper: collectPlaylist.upper);
      case CollectTypeEnum.biliSeries:
        return ShareDto(
            id: collectPlaylist.onlineId ?? '0',
            type: ShareTypeEnum.bili_series,
            urlCover: collectPlaylist.cover,
            title: collectPlaylist.title,
            upper: collectPlaylist.upper);
      case CollectTypeEnum.playlist:
      case CollectTypeEnum.local:
        return ShareDto.collectToBase64(collectPlaylist);
      case CollectTypeEnum.localAudios:
        ToastUtil.show('本地音乐暂时无法分享');
    }
    return null;
  }
}
