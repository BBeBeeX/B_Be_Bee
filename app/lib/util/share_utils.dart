
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../common/api/bili/bili_video_play_api.dart';
import '../controller/playlist_controller.dart';
import '../model/dao/audio_info.dart';
import '../model/dto/share/share_dto.dart';
import '../model/dto/video/audio_info_response.dart';
import '../model/enum/share_type_enum.dart';
import '../pages/audio_player_page.dart';

class ShareUtils{
  static Future<void> analyzeShareDto(BuildContext context, WidgetRef ref,ShareDto shareDto) async {
    switch(shareDto.type) {
      case ShareTypeEnum.bili_audio:
        final AudioInfoResponseData audioInfoResponseData = await BiliVideoPlayApi.getVideoInfo(shareDto.id);
        final audio = AudioInfo.fromBili(title: audioInfoResponseData.title??'',
            duration: audioInfoResponseData.duration??0,
            bvid: shareDto.id,
            cid: audioInfoResponseData.cid ??0,
            upperId: audioInfoResponseData.owner?.mid.toString() ?? '',
            upperName: audioInfoResponseData.owner!.name.toString() ??'',
            upperFace: audioInfoResponseData.owner!.face.toString() ??'',
            coverWebUrl:audioInfoResponseData.pic
        );
        await ref.read(playlistControllerProvider.notifier).setPlaylist([audio], null);
        await context.push(() => AudioPlayerPage());
      case ShareTypeEnum.bili_season:
      // TODO: Handle this case.
    }
  }
}