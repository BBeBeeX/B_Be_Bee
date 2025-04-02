import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/dao/audio_info.dart';
import '../pages/play_statistics_page.dart';
import '../util/hive_helper.dart';

class PlayStatisticsPageState {
  final bool isSongExpanded;
  final bool isCollectionExpanded;
  final bool sortSongsByDuration;
  final bool sortCollectionsByDuration;
  final bool showCollectionsWithName;
  final List<CollectPlaylist> playlists;
  final bool showAllCollections;

  const PlayStatisticsPageState({
    this.isSongExpanded = true,
    this.isCollectionExpanded = true,
    this.sortSongsByDuration = false,
    this.sortCollectionsByDuration = false,
    this.showCollectionsWithName = true,
    this.playlists = const [],
    this.showAllCollections = true,
  });

  PlayStatisticsPageState copyWith({
    bool? isSongExpanded,
    bool? isCollectionExpanded,
    bool? sortSongsByDuration,
    bool? sortCollectionsByDuration,
    bool? showCollectionsWithName,
    List<CollectPlaylist>? playlists,
    bool? showAllCollections,
  }) {
    return PlayStatisticsPageState(
      isSongExpanded: isSongExpanded ?? this.isSongExpanded,
      isCollectionExpanded: isCollectionExpanded ?? this.isCollectionExpanded,
      sortSongsByDuration: sortSongsByDuration ?? this.sortSongsByDuration,
      sortCollectionsByDuration:
          sortCollectionsByDuration ?? this.sortCollectionsByDuration,
      showCollectionsWithName:
          showCollectionsWithName ?? this.showCollectionsWithName,
      playlists: playlists ?? this.playlists,
      showAllCollections: showAllCollections ?? this.showAllCollections,
    );
  }
}

final playStatisticsPageProvider = StateNotifierProvider<
    PlayStatisticsPageController, PlayStatisticsPageState>((ref) {
  return PlayStatisticsPageController(ref);
}, name: 'playStatisticsPageProvider');

class PlayStatisticsPageController
    extends StateNotifier<PlayStatisticsPageState> {
  final Ref ref;

  PlayStatisticsPageController(this.ref)
      : super(const PlayStatisticsPageState()) {
    _init();
  }

  void _init() {
    final allCollects = HiveHelper.getAllCollects();
    final collectPlaylists =
        allCollects.values.where((p) => p != null).map((p) => p!).toList();
    state = state.copyWith(playlists: collectPlaylists);

    ref.listen(collectsProvider, (previous, next) {
      final allCollects = HiveHelper.getAllCollects();
      final collectPlaylists =
          allCollects.values.where((p) => p != null).map((p) => p!).toList();
      state = state.copyWith(playlists: collectPlaylists);
    });
  }

  void toggleSongExpanded() {
    state = state.copyWith(isSongExpanded: !state.isSongExpanded);
  }

  void toggleCollectionExpanded() {
    state = state.copyWith(isCollectionExpanded: !state.isCollectionExpanded);
  }

  void toggleSortSongsByDuration() {
    state = state.copyWith(sortSongsByDuration: !state.sortSongsByDuration);
  }

  void toggleSortCollectionsByDuration() {
    state = state.copyWith(
        sortCollectionsByDuration: !state.sortCollectionsByDuration);
  }

  void toggleShowCollectionsWithName() {
    state =
        state.copyWith(showCollectionsWithName: !state.showCollectionsWithName);
  }

  void toggleShowAllCollections() {
    state = state.copyWith(showAllCollections: !state.showAllCollections);
  }

  String getCollectionName(String id) {
    for (final playlist in state.playlists) {
      if (playlist.id == id) {
        return playlist.title;
      }
    }
    return id;
  }

  Future<void> playSongById(String id) async {
    final AudioInfo? audioInfo = HiveHelper.getAudioInfo(id);

    if (audioInfo != null) {
      await ref
          .read(playlistControllerProvider.notifier)
          .insertAndPlaySong(audioInfo);
      ToastUtil.show('正在播放: ${audioInfo.title}');
    } else {
      ToastUtil.show('找不到音频信息，无法播放');
    }
  }

  Future<void> playCollection(CollectionStat collection) async {
    final List<AudioInfo> audioInfoList = [];

    for (final songId in collection.songIds) {
      final audioInfo = HiveHelper.getAudioInfo(songId);
      if (audioInfo != null) {
        audioInfoList.add(audioInfo);
      }
    }

    if (audioInfoList.isNotEmpty) {
      // 设置播放列表并播放第一首歌
      ref.read(playlistControllerProvider.notifier).setPlaylist(
            audioInfoList,
            'collection_${collection.id}',
          );

      ToastUtil.show('正在播放集合: ${collection.name}');
    } else {
      ToastUtil.show('集合中没有可播放的歌曲');
    }
  }
}
