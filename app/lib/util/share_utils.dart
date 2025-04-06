import 'package:b_be_bee_app/common/api/bili/bili_collects_api.dart';
import 'package:b_be_bee_app/common/api/bili/bili_upper_api.dart';
import 'package:b_be_bee_app/common/api/bili/bili_video_play_api.dart';
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/dto/share/share_dto.dart';
import 'package:b_be_bee_app/model/dto/video/audio_info_response.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/model/enum/share_type_enum.dart';
import 'package:b_be_bee_app/observer/route_observer.dart';
import 'package:b_be_bee_app/pages/player_page/audio_player_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class ShareUtils {
  static Future<void> analyzeShareDto(
      BuildContext context, WidgetRef ref, ShareDto shareDto) async {
    switch (shareDto.type) {
      case ShareTypeEnum.bili_audio:
        final AudioInfoResponseData audioInfoResponseData =
            await BiliVideoPlayApi.getVideoInfo(shareDto.id ?? '');
        final audio = AudioInfo.fromBili(
            title: audioInfoResponseData.title ?? '',
            duration: audioInfoResponseData.duration ?? 0,
            bvid: shareDto.id ?? '',
            cid: audioInfoResponseData.cid ?? 0,
            upperId: audioInfoResponseData.owner?.mid.toString() ?? '',
            upperName: audioInfoResponseData.owner!.name.toString() ?? '',
            upperFace: audioInfoResponseData.owner!.face.toString() ?? '',
            coverWebUrl: audioInfoResponseData.pic);
        await ref
            .read(playlistControllerProvider.notifier)
            .setPlaylist([audio], null);
        await context.push(() => AudioPlayerPage());
        break;

      case ShareTypeEnum.bili_season:
        if (shareDto.id != null) {
          final collect =
              await BiliCollectsApi.getSeasons(int.parse(shareDto.id!));
          createPlaylist(context, ref, collect);
        }
        break;

      case ShareTypeEnum.bili_collect:
        if (shareDto.id != null) {
          final collect = await BiliCollectsApi.getAllCollectsResource(
              int.parse(shareDto.id!));
          createPlaylist(context, ref, collect);
        }
        break;

      case ShareTypeEnum.bili_series:
        if (shareDto.id != null) {
          List<String> parts = shareDto.id!.split('#');
          final songList =
              await BiliCollectsApi.getAllSeries(parts[0], int.parse(parts[1]));
          final collect = CollectPlaylist(
            collectCurrentType: CollectTypeEnum.local,
            collectSourceType: CollectTypeEnum.biliSeries,
            id: 'bili_series_${parts[1]}',
            title: shareDto.title ?? '',
            cover: shareDto.urlCover,
            songs: songList,
            createTime: DateTime.now().second,
            onlineId: shareDto.id,
            upper: shareDto.upper,
          );
          createPlaylist(context, ref, collect);
        }
        break;

      case ShareTypeEnum.bili_upper:
        if (shareDto.id != null) {
          final songList =
              await BiliUpperApi.getUpperAllVideosByUid(shareDto.id!);
          final collect = CollectPlaylist(
            collectCurrentType: CollectTypeEnum.local,
            collectSourceType: CollectTypeEnum.biliUpper,
            id: 'bili_upper_${shareDto.id}',
            title: shareDto.title ?? '',
            cover: shareDto.urlCover,
            songs: songList,
            createTime: DateTime.now().second,
            onlineId: shareDto.id,
            upper: shareDto.upper,
          );
          createPlaylist(context, ref, collect);
        }
        break;

      case ShareTypeEnum.local:
        if (shareDto.songListString != null) {
          final songList = ShareDto.base64ToAudioList(shareDto.songListString);
          final collect = CollectPlaylist(
            collectCurrentType: CollectTypeEnum.local,
            collectSourceType: CollectTypeEnum.local,
            // id: 'bili_upper_${shareDto.id}',
            title: shareDto.title ?? '',
            cover: shareDto.urlCover,
            songs: songList,
            createTime: DateTime.now().second,
            upper: shareDto.upper,
          );
          createPlaylist(context, ref, collect);
        }
        break;
    }
  }

  static Future<void> createPlaylist(BuildContext context, WidgetRef ref,
      CollectPlaylist? collectPlaylist) async {
    if (collectPlaylist != null) {
      final isExist = ref
              .read(collectsProvider.notifier)
              .getCollectsPlaylist(collectPlaylist.id) !=
          null;

      if (!isExist ||
          collectPlaylist.collectSourceType == CollectTypeEnum.local) {
        final id = await ref.read(collectsProvider.notifier).createPlaylist(
            title: collectPlaylist.title,
            collectCurrentType: collectPlaylist.collectCurrentType,
            collectSourceType: collectPlaylist.collectSourceType,
            playlistId:
                collectPlaylist.collectSourceType != CollectTypeEnum.local
                    ? collectPlaylist.id
                    : null,
            cover: collectPlaylist.cover,
            onlineId: collectPlaylist.onlineId);

        context.pop();
        await Future.microtask(() {
          context.pushToPlaylist(
            ref.read(collectsProvider.notifier).getCollectsPlaylist(id)!,
          );
        });
      } else {
        context.pop();
        await Future.microtask(() {
          context.pushToPlaylist(
            ref
                .read(collectsProvider.notifier)
                .getCollectsPlaylist(collectPlaylist.id)!,
          );
        });
      }
    }
  }

  static AudioInfo? parseShareDtoToAudioInfo(ShareDto shareDto) {
    switch (shareDto.type) {
      case ShareTypeEnum.bili_audio:
        return AudioInfo.fromBili(
            title: shareDto.title ?? '',
            duration: shareDto.duration ?? 0,
            bvid: shareDto.id ?? '',
            cid: shareDto.cid ?? 0,
            upperId: shareDto.upper?.id ?? '',
            upperName: shareDto.upper?.name ?? '',
            upperFace: shareDto.upper?.face ?? '',
            coverWebUrl: shareDto.urlCover);

      case ShareTypeEnum.bili_season:
      case ShareTypeEnum.bili_collect:
      case ShareTypeEnum.bili_series:
      case ShareTypeEnum.bili_upper:
      case ShareTypeEnum.local:
        return null;
    }
  }
}
