import 'dart:convert';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dao/audio_info.dart';
import '../../enum/share_type_enum.dart';

part 'share_dto.freezed.dart';
part 'share_dto.g.dart';

@freezed
class ShareDto with _$ShareDto {
  const factory ShareDto({
    required String id,
    required ShareTypeEnum type,
  }) = _ShareDto;

  factory ShareDto.fromJson(Map<String, dynamic> json) => _$ShareDtoFromJson(json);

  factory ShareDto.fromBase64(String base64String) {
    try {
      final jsonString = utf8.decode(base64Decode(base64String));
      final Map<String, dynamic> json = jsonDecode(jsonString);
      if (json.containsKey('id') && json.containsKey('type')) {
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
    if(shareDto == null){
      return '';
    }
    final jsonString = jsonEncode(shareDto.toJson());
    return base64Encode(utf8.encode(jsonString));
  }

  static ShareDto? fromAudioInfo({
    required AudioInfo audioInfo,
  }) {
    switch(audioInfo.audioCurrentType) {
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

  //因为b站api权限问题，可能没法很好做到分享，暂时先不做
  // static Future<ShareDto?> fromCollectPlaylist({
  //   required CollectPlaylist collectPlaylist,
  // }) async {
  //   switch(collectPlaylist.collectSourceType) {
  //     case CollectTypeEnum.biliCollect:
  //       // TODO: Handle this case.
  //     case CollectTypeEnum.biliSeason:
  //       // TODO: Handle this case.
  //     case CollectTypeEnum.biliSeries:
  //       // TODO: Handle this case.
  //     case CollectTypeEnum.biliUpper:
  //       // TODO: Handle this case.
  //     case CollectTypeEnum.playlist:
  //       // TODO: Handle this case.
  //     case CollectTypeEnum.local:
  //       // TODO: Handle this case.
  //     case CollectTypeEnum.localAudios:
  //       // TODO: Handle this case.
  //   }
  // }
}
