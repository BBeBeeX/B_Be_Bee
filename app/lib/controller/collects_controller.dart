import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/state/collect_state.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../gen/strings.g.dart';
import '../model/enum/collect_type_enum.dart';

final collectsProvider =
StateNotifierProvider<CollectsController, CollectsState>((ref) {
  return CollectsController();
},name: 'collectPlaylistControllerProvider');

class CollectsController extends StateNotifier<CollectsState> {
  final _uuid = const Uuid();

  CollectsController() : super( CollectsState()) {
    _init();
  }

  Future<void> _init() async {
    await _loadPlaylistIds();
    if (state.playlistIds.isEmpty) {
      await createPlaylist(
        title: t.controller.myLikeSongs,
        isDefault: true,
        collectCurrentType: CollectTypeEnum.local,
        collectSourceType: CollectTypeEnum.local,
      );
    }
  }

  //更新所有ids
  Future<void> _loadPlaylistIds() async {
    try {

      final savedIds = HiveHelper.getCollectsPlaylistIds();
      if (savedIds.isNotEmpty) {
        final List<String> playlistIds = List<String>.from(savedIds);

        state = state.copyWith(playlistIds: playlistIds);
        await _loadFromStorage();
      }
    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Error loading playlist ids: $e');
      });
    }
  }

  //更新所有列表
  Future<void> _loadFromStorage() async {
    try {
      final playlists = HiveHelper.getCollectsPlaylistsByIds(state.playlistIds);
      state = state.copyWith(playlists: playlists);
    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Error loading playlists: $e');
      });
    }
  }

  // 创建新歌单
  Future<String> createPlaylist({
    required String title,
    String? playlistId,
    bool isDefault = false,
    String? cover,
    required CollectTypeEnum collectCurrentType,
    required CollectTypeEnum collectSourceType,
    String? onlineId
  }) async {
    final id = playlistId ?? _uuid.v4();
    final newPlaylist = CollectPlaylist(
      id: id,
      title: title,
      songIds: [],
      isDefault: isDefault,
      cover: cover ?? '',
      createTime: DateTime.now().millisecondsSinceEpoch,
      collectCurrentType: collectCurrentType,
      collectSourceType: collectSourceType,
      onlineId: onlineId
    );

    await HiveHelper.saveCollectsPlaylist(newPlaylist);

    state = state.copyWith(
      playlistIds: [...state.playlistIds, id],
      playlists: [...state.playlists, newPlaylist],
    );
    await HiveHelper.setCollectsPlaylistIds(state.playlistIds);

    return id;
  }

  CollectPlaylist? getCollectsPlaylist(String playlistId)  {
    CollectPlaylist? collectPlaylist;

    for (var playlist in state.playlists) {
      if (playlist.id == playlistId) {
        collectPlaylist = playlist;
      }
    }

    return collectPlaylist ??= HiveHelper.getCollectsPlaylist(playlistId);
  }

  Future<void> _updatePlaylistIds(String id) async {
    final existingPlaylistIndex = state.playlistIds.indexWhere((targetId) => targetId == id);

    if (existingPlaylistIndex == -1) {
      state = state.copyWith(playlistIds: [...state.playlistIds, id]);
    }
    await HiveHelper.setCollectsPlaylistIds(state.playlistIds);
  }

  Future<void> _updatePlaylists(CollectPlaylist updatePlaylist) async {
    await HiveHelper.saveCollectsPlaylist(updatePlaylist);

    final existingPlaylistIndex = state.playlists.indexWhere((playlist) => playlist.id == updatePlaylist.id);

    if (existingPlaylistIndex != -1) {
      final newPlaylists = state.playlists.map((playlist) {
        return playlist.id == updatePlaylist.id
            ? playlist.copyWith(
          title: updatePlaylist.title,
          cover:updatePlaylist.cover,
          isTop:updatePlaylist.isTop,
          songIds:updatePlaylist.songIds,
        )
            : playlist;
      }).toList();

      state = state.copyWith(playlists: newPlaylists);
    } else{
      state = state.copyWith(playlists: [...state.playlists,updatePlaylist]);
    }
  }

  // 添加歌曲到歌单
  Future<void> addToPlaylist(String playlistId, AudioInfo song) async {
    await HiveHelper.saveAudioInfoIfNotExists(song);

    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;

    final updatedPlaylist = playlist.copyWith(
      cover: (playlist.cover == null || playlist.cover!.isEmpty) ? song.coverWebUrl : playlist.cover,
    );

    if (!updatedPlaylist.songIds.contains(song.id)) {
      final updatedPlaylistWithSong = updatedPlaylist.copyWith(
        songIds: [...updatedPlaylist.songIds, song.id],
      );
      await _updatePlaylists(updatedPlaylistWithSong);
    }
  }

  // 歌曲从默认歌单 加入/移除
  Future<void> toggleDefaultPlaylist(AudioInfo song) async{
    for (final playlist in state.playlists) {
      if (playlist.isDefault) {
        if(playlist.songIds.contains(song.id)){
          await removeFromPlaylist(playlist.id,song.id);
        }else{
          await addToPlaylist(playlist.id,song);
        }
        return;
      }
    }
  }

  Future<void> addListToPlaylist(String playlistId, List<AudioInfo> songs) async {
    await HiveHelper.saveAudioInfoListIfNotExists(songs);

    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;
    final updatedPlaylist = playlist.copyWith(
      cover: (playlist.cover == null || playlist.cover!.isEmpty)  ? songs.first.coverWebUrl : playlist.cover,
    );

    List<String> addIds = [];
    for (var song in songs) {
      if (!updatedPlaylist.songIds.contains(song.id)) {
        addIds.add(song.id);
      }
    }

    final updatedPlaylistWithSong = updatedPlaylist.copyWith(
      songIds: [...updatedPlaylist.songIds, ...addIds],
    );

    await _updatePlaylists(updatedPlaylistWithSong);
  }

  // 获取歌单中的歌曲
  Future<List<AudioInfo>> getPlaylistSongs(String playlistId) async {
    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return [];

    return HiveHelper.getAudioInfoList(playlist.songIds);
  }

  // 从歌单中移除歌曲
  Future<void> removeFromPlaylist(String playlistId, String songId) async {

    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;

    final updatedPlaylist = playlist.copyWith(
      songIds: playlist.songIds.where((id) => id != songId).toList(),
    );

    await _updatePlaylists(updatedPlaylist);
  }

  // 删除歌单
  Future<void> deletePlaylist(String playlistId) async {
    final playlist = state.playlists.firstWhere((p) => p.id == playlistId);
    if (playlist.isDefault) return;

    await HiveHelper.deleteColllectsPlaylistById(playlistId);

    state = state.copyWith(
      playlistIds: state.playlistIds.where((id) => id != playlistId).toList(),
      playlists: state.playlists.where((p) => p.id != playlistId).toList(),
    );
    await HiveHelper.setCollectsPlaylistIds(state.playlistIds);
  }

  // 重命名歌单
  Future<void> renamePlaylist(String playlistId, String title) async {
    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;

    final updatedPlaylist = playlist.copyWith(title: title);

    await _updatePlaylists(updatedPlaylist);
  }

  // 更新歌单封面
  Future<void> updatePlaylistCover(String playlistId, String cover) async {
    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;

    await _updatePlaylists(playlist.copyWith(cover:  cover));
  }

  // 切换歌单置顶状态
  Future<void> togglePinPlaylist(String playlistId) async {

    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;

    final updatedPlaylist = playlist.copyWith(isTop: !playlist.isTop);
    await _updatePlaylists(updatedPlaylist);
  }


  // 根据歌曲ID获取包含和不包含该歌曲的歌单列表
  (List<CollectPlaylist>, List<CollectPlaylist>) getPlaylistsBySongId(String songId) {
    final containingSongPlaylists = <CollectPlaylist>[];
    final notContainingSongPlaylists = <CollectPlaylist>[];

    for (final playlist in state.playlists) {
      if(playlist.collectSourceType == CollectTypeEnum.local){

        if (playlist.songIds.contains(songId)) {
          containingSongPlaylists.add(playlist);
        } else {
          notContainingSongPlaylists.add(playlist);
        }
      }
    }

    // 对两个列表进行排序：默认歌单在前，其他按创建时间倒序
    containingSongPlaylists.sort((a, b) {
      if (a.isDefault != b.isDefault) {
        return a.isDefault ? -1 : 1;
      }
      return b.createTime.compareTo(a.createTime);
    });

    notContainingSongPlaylists.sort((a, b) {
      if (a.isDefault != b.isDefault) {
        return a.isDefault ? -1 : 1;
      }
      return b.createTime.compareTo(a.createTime);
    });

    return (containingSongPlaylists, notContainingSongPlaylists);
  }

  bool isSongInDefaultPlaylist(String songId) {
    List<CollectPlaylist> containingSongPlaylists = getPlaylistsBySongId(songId).$1;
    if(containingSongPlaylists.any((playlist) => playlist.isDefault)){
      return true;
    }

    return false;
  }

  //暂时只能往本地添加不能删除
  Future<void> syncPlaylist(String playlistId,List<AudioInfo> audios)async {
    try {
      final localPlaylist = getCollectsPlaylist(playlistId);
      if (localPlaylist == null) {
        throw Exception(t.controller.localPlaylistNotExist);
      }

      await HiveHelper.saveAudioInfoListIfNotExists(audios);

      final newAudioIds = audios
          .map((audio) => audio.id)
          .where((id) => !localPlaylist.songIds.contains(id))
          .toList();

      final updatedPlaylist = localPlaylist.copyWith(
        cover: (localPlaylist.cover == null || localPlaylist.cover!.isEmpty) && audios.isNotEmpty
            ? audios.first.coverWebUrl
            : localPlaylist.cover,
        songIds: [...localPlaylist.songIds, ...newAudioIds],
      );

      await _updatePlaylists(updatedPlaylist);

      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog(
            'Playlist synced successfully: ${localPlaylist.title} with ${audios.length} songs'
        );      });

    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog(
            'Error syncing playlist: $e'
        );
      });

      rethrow;
    }
  }

  // 重新排序歌单中的歌曲
  Future<void> reorderSongs(String playlistId, int oldIndex, int newIndex) async {
    final playlist = getCollectsPlaylist(playlistId);
    if (playlist == null) return;

    final songIds = List<String>.from(playlist.songIds);
    final songId = songIds.removeAt(oldIndex);
    songIds.insert(newIndex, songId);

    final updatedPlaylist = playlist.copyWith(songIds: songIds);
    await _updatePlaylists(updatedPlaylist);
  }

  // 重新排序歌单
  Future<void> reorderPlaylists(List<String> newOrder) async {
    final normalPlaylists = state.playlists.where((p) => !p.isDefault).toList();

    normalPlaylists.sort((a, b) {
      final aIndex = newOrder.indexOf(a.id);
      final bIndex = newOrder.indexOf(b.id);
      return aIndex.compareTo(bIndex);
    });

    final updatedPlaylists = [
      ...state.playlists.where((p) => p.isDefault),
      ...normalPlaylists,
    ];

    state = state.copyWith(playlists: updatedPlaylists);

    final newPlaylistIds = [
      ...state.playlistIds.where((id) =>
          state.playlists.firstWhere((p) => p.id == id).isDefault),
      ...newOrder,
    ];
    await HiveHelper.setCollectsPlaylistIds(newPlaylistIds);
  }

  Future<void> removeSongs(List<AudioInfo> songs,String? playlistId) async {
    try {
      final playlist = getCollectsPlaylist(playlistId ?? '');
      if (playlist == null) {
        throw Exception(t.controller.playlistNotExist);
      }

      final removeIds = songs.map((song) => song.id).toSet();

      final updatedSongIds = playlist.songIds
          .where((id) => !removeIds.contains(id))
          .toList();

      final updatedPlaylist = playlist.copyWith(
        songIds: updatedSongIds,
        cover: updatedSongIds.isEmpty && !playlist.isDefault ? '' : playlist.cover,
      );

      await _updatePlaylists(updatedPlaylist);

      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog(
            'Removed ${songs.length} songs from playlist: ${playlist.title}'
        );
      });

    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog(
            'Error removing songs from playlist: $e'
        );
      });

      rethrow;
    }
  }
}