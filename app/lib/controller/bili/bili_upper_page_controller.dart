import 'package:b_be_bee_app/common/api/bili/bili_collects_api.dart';
import 'package:b_be_bee_app/common/api/bili/bili_upper_api.dart';
import 'package:b_be_bee_app/common/api/bili/bili_user_api.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_and_series_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:b_be_bee_app/model/dto/user/user_card_response.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/pages/collects_playlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class BiliUpperPageState {
  final bool isLoading;
  final String? error;
  final String notice;
  final BiliSeasonsAndSeriesDtoItemsLists seasonsAndSeries;
  final List<AudioInfo>? allVideos;
  final String upperName;
  final String upperFace;

  const BiliUpperPageState(
      {this.isLoading = true,
      this.error,
      this.notice = '',
      this.seasonsAndSeries = const BiliSeasonsAndSeriesDtoItemsLists(),
      this.allVideos,
      this.upperFace = '',
      this.upperName = ''});

  BiliUpperPageState copyWith({
    bool? isLoading,
    String? error,
    String? notice,
    BiliSeasonsAndSeriesDtoItemsLists? seasonsAndSeries,
    List<AudioInfo>? allVideos,
    String? upperName,
    String? upperFace,
  }) {
    return BiliUpperPageState(
        isLoading: isLoading ?? this.isLoading,
        error: error,
        notice: notice ?? this.notice,
        seasonsAndSeries: seasonsAndSeries ?? this.seasonsAndSeries,
        allVideos: allVideos ?? this.allVideos,
        upperName: upperName ?? this.upperName,
        upperFace: upperFace ?? this.upperFace);
  }
}

final biliUpperPageProvider = StateNotifierProvider.family<
    BiliUpperPageController, BiliUpperPageState, String>(
  (ref, uid) => BiliUpperPageController(uid, ref),
  name: 'biliUpperPageProvider',
);

class BiliUpperPageController extends StateNotifier<BiliUpperPageState> {
  Ref ref;
  final String uid;

  BiliUpperPageController(this.uid, this.ref)
      : super(const BiliUpperPageState()) {
    _loadData();
  }

  Future<void> _loadData() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final results = await Future.wait([
        BiliUpperApi.getUpperNotice(uid),
        BiliUpperApi.getSeasonsAndSeries(uid),
        BiliUpperApi.getUpperAllVideosSampleByUid(uid),
        BiliUserApi.getCollects2Resource(uid),
      ]);

      final userName = (results[3] as UserCardResponseData).name;
      final upperFace = (results[3] as UserCardResponseData).face;
      final upper = Upper(
        id: uid.toString(),
        name: userName ?? '',
        face: upperFace ?? '',
      );

      final allVideos = (results[2] as List<AudioInfo>).map((video) {
        return video.copyWith(upper: upper);
      }).toList();

      state = state.copyWith(
        isLoading: false,
        notice: results[0] as String,
        seasonsAndSeries: results[1] as BiliSeasonsAndSeriesDtoItemsLists,
        allVideos: allVideos,
        upperName: userName,
        upperFace: upperFace,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> playDynamicSeasonSeries(dynamic season, BiliUpperPageState state,
      {BiliSeasonsSeriesArchives? video}) async {
    if (season is BiliSeriesList) {
      final playlist = await _getSeries(season, state);
      if (video == null) {
        await ref
            .read(playlistControllerProvider.notifier)
            .setPlaylist(playlist.songs!, playlist.id);
      } else {
        await ref.read(playlistControllerProvider.notifier).setPlaylist(
            playlist.songs!, playlist.id,
            song: AudioInfo.fromBiliSeasonResponseArchives(archives: video));
      }
    } else if (season is BiliSeasonsList) {
      final playlist = await _getSeason(season, state);
      if (video == null) {
        await ref
            .read(playlistControllerProvider.notifier)
            .setPlaylist(playlist.songs!, playlist.id);
      } else {
        await ref.read(playlistControllerProvider.notifier).setPlaylist(
            playlist.songs!, playlist.id,
            song: AudioInfo.fromBiliSeasonResponseArchives(archives: video));
      }
    }
  }

  /// Series
  Future<void> toSeriesCollectPage(BuildContext context, BiliSeriesList series,
      BiliUpperPageState state) async {
    final collectPlaylist = await _getSeries(series, state);

    await context.push(() => CollectsPlaylistPage(
          collectPlaylist: collectPlaylist,
        ));
  }

  Future<void> playSeries(
      BiliSeriesList series, BiliUpperPageState state) async {
    final collectPlaylist = await _getSeries(series, state);
    await ref
        .read(playlistControllerProvider.notifier)
        .setPlaylist(collectPlaylist.songs!, collectPlaylist.id);
  }

  Future<CollectPlaylist> _getSeries(
      BiliSeriesList series, BiliUpperPageState state) async {
    if (series.meta?.series_id != null && series.meta?.series_id != 0) {
      final upper = Upper(
        id: uid.toString(),
        name: state.upperName,
        face: state.upperFace,
      );

      final allMedias =
          (await BiliCollectsApi.getAllSeries(uid, series.meta?.series_id ?? 0))
              .map((video) {
        return video.copyWith(upper: upper);
      }).toList();

      return CollectPlaylist(
          id: 'bili_series_${series.meta?.series_id}',
          title: series.meta?.name ?? '',
          cover: series.meta?.cover ?? '',
          songs: allMedias,
          songIds: allMedias.map((media) => media.id).toList(),
          createTime: DateTime.now().second,
          collectCurrentType: CollectTypeEnum.biliSeries,
          collectSourceType: CollectTypeEnum.biliSeries,
          upper: upper,
          onlineId: '$uid#${series.meta!.series_id.toString()}');
    }
    return CollectPlaylist(
      collectCurrentType: CollectTypeEnum.biliSeries,
      collectSourceType: CollectTypeEnum.biliSeries,
    );
  }

  /// Season
  Future<void> toSeasonCollectPage(
      BuildContext context, BiliSeasonsList season) async {
    await context.push(() => CollectsPlaylistPage(
        collectPlaylist: CollectPlaylist(
            id: 'bili_season_${season.meta?.season_id.toString()}',
            title: season.meta?.name ?? '',
            cover: season.meta?.cover ?? '',
            createTime: DateTime.now().second,
            collectCurrentType: CollectTypeEnum.biliSeason,
            collectSourceType: CollectTypeEnum.biliSeason,
            onlineId: season.meta?.season_id.toString())));
  }

  Future<void> playSeason(
      BiliSeasonsList season, BiliUpperPageState state) async {
    final playlist = await _getSeason(season, state);
    await ref
        .read(playlistControllerProvider.notifier)
        .setPlaylist(playlist.songs!, playlist.id);
  }

  Future<CollectPlaylist> _getSeason(
      BiliSeasonsList season, BiliUpperPageState state) async {
    if (season.meta?.season_id != null && season.meta?.season_id != 0) {
      final upper = Upper(
          id: uid.toString(), name: state.upperName, face: state.upperFace);

      final medias =
          (await BiliCollectsApi.getAllSeason(season.meta?.season_id ?? 0))
              .map((video) {
        return video.copyWith(upper: upper);
      }).toList();

      return CollectPlaylist(
          id: 'bili_season_${season.meta?.season_id}',
          title: season.meta?.name ?? '',
          cover: season.meta?.cover ?? '',
          songs: medias,
          songIds: medias.map((media) => media.id).toList(),
          createTime: DateTime.now().second,
          collectCurrentType: CollectTypeEnum.biliSeason,
          collectSourceType: CollectTypeEnum.biliSeason,
          upper: upper,
          onlineId: season.meta?.season_id.toString());
    }
    return CollectPlaylist(
      collectCurrentType: CollectTypeEnum.biliSeason,
      collectSourceType: CollectTypeEnum.biliSeason,
    );
  }

  /// All audios
  Future<void> toAllAudiosCollectPage(BuildContext context) async {
    await _getAllAudios();

    await context.push(() => CollectsPlaylistPage(
          collectPlaylist: CollectPlaylist(
              id: 'bili_upper_$uid',
              title: state.upperName,
              cover: state.upperFace,
              songs: state.allVideos,
              songIds: state.allVideos?.map((media) => media.id).toList() ?? [],
              createTime: DateTime.now().second,
              collectCurrentType: CollectTypeEnum.playlist,
              collectSourceType: CollectTypeEnum.playlist,
              upper: Upper(
                  id: uid.toString(),
                  name: state.upperName,
                  face: state.upperFace),
              onlineId: uid),
        ));
  }

  Future<void> playAllAudios() async {
    await _getAllAudios();
    await ref
        .read(playlistControllerProvider.notifier)
        .setPlaylist(state.allVideos ?? [], 'bili_upper_$uid');
  }

  Future<void> _getAllAudios() async {
    state = state.copyWith(isLoading: true);
    if (state.allVideos != null && state.allVideos!.length <= 20) {
      final result = await BiliUpperApi.getUpperAllVideosByUid(uid);
      final upper = Upper(
        id: uid.toString(),
        name: state.upperName ?? '',
        face: state.upperFace ?? '',
      );
      final allVideos = result.map((video) {
        return video.copyWith(upper: upper);
      }).toList();

      state = state.copyWith(
        allVideos: allVideos,
      );
    }
    state = state.copyWith(isLoading: false);
  }
}
