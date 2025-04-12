import 'dart:math';

import 'package:b_be_bee_app/common/api/bili/bili_video_play_api.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/controller/lyrics_controller.dart';
import 'package:b_be_bee_app/controller/play_statistics_controller.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/bili_vip_label_enum.dart';
import 'package:b_be_bee_app/model/enum/repeat_mode_enum.dart';
import 'package:b_be_bee_app/model/state/playlist_state.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/lyrics_utils.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:fftea/impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:uuid/uuid.dart';
import 'package:vibration/vibration.dart';
import 'package:path/path.dart' as path;

import '../util/native/channel/path_proxy_utils.dart';
import '../util/native/file_utils.dart';
import '../util/native/taskbar_helper.dart';
import '../util/native/tray_helper.dart';
import '../util/rhttp_utils.dart';

final playlistControllerProvider =
    StateNotifierProvider<PlaylistController, PlaylistState>((ref) {
  return PlaylistController(ref);
}, name: 'playlistControllerProvider');

class PlaylistController extends StateNotifier<PlaylistState> {
  Ref ref;
  static const int _maxHistorySize = 500; // 播放历史最大数量

  PlaylistController(this.ref) : super(PlaylistState()) {
    _loadFromStorage();
    _init();
  }

  final _random = Random();
  final _uuid = const Uuid();

  Future<void> _init() async {
    // 监听播放完成
    CustomAudioHandler.player.processingStateStream.listen((processingState) {
      if (processingState == ProcessingState.completed) {
        _onPlayCompleted();
      }
    });

    // 监听 上一首/下一首
    CustomAudioHandler.instance.customEvent.listen((onData) {
      if (onData == 'skipToNext') {
        skipToNext(isCutSong: true);
      } else if (onData == 'skipToPrevious') {
        skipToPrevious(isCutSong: true);
      }
    });

    // 监听播放/暂停瞬间
    if(checkPlatformIsDesktop()){
      bool lastPlayingStatus = false;
      CustomAudioHandler.player.playingStream.listen((isPlaying) {
        if (lastPlayingStatus == false && isPlaying == true) {
          TaskbarHelper.enableThumbnailToolbar(ref);
          setTray(songName: state.currentSong?.title, isPlaying: true);
          print('playing...');
        }else if(lastPlayingStatus == true && isPlaying == false){
          TaskbarHelper.pauseThumbnailToolbar(ref);
          setTray(songName: state.currentSong?.title,isPlaying: false);
          print('pausing...');
        }
        lastPlayingStatus = isPlaying;
      });
    }
  }

  // 从Hive加载播放列表状态
  Future<void> _loadFromStorage() async {
    state = state.copyWith(
        playHistory: HiveHelper.getPlaylistPlayHistory(),
        currentPlaylist: HiveHelper.getCurrentPlaylist(),
        currentIndex: HiveHelper.getCurrentIndex(),
        repeatMode: HiveHelper.getRepeatMode(),
        volume: HiveHelper.getVolume(),
        isMuted: HiveHelper.getIsMuted());

    if (state.isMuted) {
      await CustomAudioHandler.player.setVolume(0);
    }
    await CustomAudioHandler.player.setVolume(state.volume);

    await playSong(state.currentIndex, false);
    await pause();
  }

  // 播放控制
  Future<void> play() async {
    if (state.currentSong != null) {
      CustomAudioHandler.player.play();
    }
  }

  bool isPlaying() {
    return CustomAudioHandler.player.playing;
  }

  Future<void> pause() async {
    CustomAudioHandler.player.pause();
  }

  Future<void> togglePlay() async {
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(duration: 100);
    }

    if (CustomAudioHandler.player.playing) {
      pause();
    } else {
      play();
    }
  }

  Future<void> seek(Duration duration) async {
    CustomAudioHandler.player.seek(duration);
  }

  Future<void> _onPlayCompleted() async {
    if (state.currentSong != null) {
      await addToHistory(state.currentSong);
    }

    if (state.repeatMode == RepeatModeEnum.one) {
      // 单曲循环
      seek(Duration.zero);
      play();
    } else {
      // 播放下一首
      if (state.currentPlaylist.isNotEmpty) {
        skipToNext();
      } else {
        pause();
      }
    }
  }

  //循环模式修改
  Future<void> cycleRepeatMode() async {
    final values = RepeatModeEnum.values;
    final currentIndex = values.indexOf(state.repeatMode);
    final nextIndex = (currentIndex + 1) % values.length;
    state = state.copyWith(repeatMode: values[nextIndex]);
    await HiveHelper.setRepeatMode(values[nextIndex]);
    ToastUtil.show('当前播放顺序为 ${values[nextIndex].label}');
  }

  // 播放列表中的指定歌曲
  Future<void> playSong(int index, bool play) async {
    if (index < 0 || index >= state.currentPlaylist.length) return;

    state = state.copyWith(
      currentIndex: index,
    );
    await _setAudio(state.currentPlaylist[index], play);

    await HiveHelper.setCurrentIndex(index);
  }

  Future<void> _setAudio(AudioInfo audioInfo, bool play) async {
    await pause();

    ref.read(lyricsControllerProvider.notifier)
        .parseLyrics(await LyricsUtils.getAudioLyrics(ref, audioInfo));

    //获取本地音频
    if (audioInfo.audioCurrentType == AudioSourceTypeEnum.local) {
        final success = await _setAudioByLocal(audioInfo, play);
        if (success) {
          return;
        }
    }

    //获取bili视频资源
    if (audioInfo.audioSourceType == AudioSourceTypeEnum.bili) {
      final success = await await _setAudioByBili(audioInfo, play);
      if (success) {
        return;
      } else {
        await skipToNext();
      }
    }

    //获取bili音频资源
    if (audioInfo.audioSourceType == AudioSourceTypeEnum.bili_music) {
      final success = await _setAudioByBili(audioInfo, play);
      if (success) {
        return;
      }
    }
  }

  Future<bool> _setAudioByLocal(AudioInfo audioInfo, bool play) async {
    final url = audioInfo.localPath;

    try {
      await CustomAudioHandler.instance
          .setAudio(url, audioInfo, AudioSourceTypeEnum.local, '', play);

      state = state.copyWith(currentAudioPlayInfo: AudioPlayInfo());
      return true;
    } catch (e) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('load local audio fail: $url, error: $e');
      });
    }
    return false;
  }

  Future<bool> _setAudioByBili(AudioInfo audioInfo, bool play,
      {AudioQuality? targetQuality, Duration? currentPosition}) async {
    try {
      if (audioInfo.biliCid == 0) {
        final cid =
            (await BiliVideoPlayApi.getAudioPagelist(audioInfo.onlineId))
                    .first
                    .cid ??
                0;
        audioInfo = audioInfo.copyWith(biliCid: cid);
      }
      if (audioInfo.biliCid == 0) {
        return false;
      }
      targetQuality ??= ref.read(settingsProvider).audioQuality;

      final AudioPlayInfo audioPlayInfo = await BiliVideoPlayApi.getVideoPlay(
          bvid: audioInfo.onlineId,
          cid: audioInfo.biliCid,
          isVip: ref.read(biliUserProvider).vip != BiliVipLabelEnum.free
              ? true
              : false);

      final targetAudio = audioPlayInfo.audios
          .firstWhere(
            (audio) => audio.quality == targetQuality,
            orElse: () => audioPlayInfo.audios.first,
          )
          .copyWith(audioType: AudioSourceTypeEnum.bili);

      try {
        await CustomAudioHandler.instance.setAudio(
            targetAudio.urls.first,
            audioInfo,
            AudioSourceTypeEnum.bili,
            targetAudio.quality.getLabel(),
            play);
        print('_setAudioByBili1');

        if (currentPosition != null) {
          CustomAudioHandler.player.seek(currentPosition);
        }

        state = state.copyWith(currentAudioPlayInfo: audioPlayInfo);
        return true;
      } catch (e) {
        //目标音质的资源有问题
        await ToastUtil.show(t.controller.bili.loadBiliAudioFail,
            notShow: '$targetAudio, error: $e');

        for (var prioritizedAudio in audioPlayInfo.audios) {
          try {
            await CustomAudioHandler.instance.setAudio(
                prioritizedAudio.urls.first,
                audioInfo,
                AudioSourceTypeEnum.bili,
                prioritizedAudio.quality.getLabel(),
                true);

            state = state.copyWith(currentAudioPlayInfo: audioPlayInfo);
            return true;
          } catch (e) {
            await Future.microtask(() {
              container.read(commonLoggerProvider.notifier).addLog(
                  'Failed to load BiliBili audio resources: $prioritizedAudio.urls.first, error: $e');
            });
          }
        }
      }
    } catch (e) {
      await ToastUtil.show(t.controller.bili.loadBiliAudioFail,
          notShow:
              ' bvid:${audioInfo.onlineId} cid:${audioInfo.biliCid} , error: $e');
    }
    return false;
  }

  Future<bool> switchQuality(AudioPlayItem audioPlayItem) async {
    final currentPosition = CustomAudioHandler.player.position;

    try {
      await CustomAudioHandler.instance.setAudio(
          audioPlayItem.urls.first,
          state.currentPlaylist[state.currentIndex],
          state.currentPlaylist[state.currentIndex].audioCurrentType,
          audioPlayItem.quality.getLabel(),
          true);
      await seek(currentPosition);

      await ToastUtil.show(
          t.controller.currentPlaying(label: audioPlayItem.quality.getLabel()));
      return true;
    } catch (e) {
      await ToastUtil.show(t.controller.switchQualityError, notShow: ': $e');

      return false;
    }
  }

  // 跳到下一首歌
  Future<void> skipToNext({bool isCutSong = false}) async {
    if (isCutSong) {
      if (await Vibration.hasVibrator()) {
        Vibration.vibrate(duration: 100);
      }
    }

    if (state.currentSong != null) {
      await addToHistory(state.currentSong);
    }

    int nextIndex;

    switch (state.repeatMode) {
      case RepeatModeEnum.none:
        nextIndex = state.currentIndex + 1;
        if (nextIndex >= state.currentPlaylist.length) {
          nextIndex = 0;
          pause();
        }
        break;
      case RepeatModeEnum.one:
        if (isCutSong) {
          nextIndex = state.currentIndex + 1;
          if (nextIndex >= state.currentPlaylist.length) {
            nextIndex = 0;
          }
        } else {
          nextIndex = state.currentIndex;
        }
        break;
      case RepeatModeEnum.all:
        nextIndex = state.currentIndex + 1;
        if (nextIndex >= state.currentPlaylist.length) {
          nextIndex = 0;
        }
        break;
      case RepeatModeEnum.random:
        nextIndex = _random.nextInt(state.currentPlaylist.length);
        break;
    }

    await playSong(nextIndex, true);
  }

  // 跳到上一首歌
  Future<void> skipToPrevious({bool isCutSong = false}) async {
    if (isCutSong) {
      if (await Vibration.hasVibrator()) {
        Vibration.vibrate(duration: 100);
      }
    }

    if (state.currentSong != null) {
      await addToHistory(state.currentSong);
    }

    int prevIndex;

    switch (state.repeatMode) {
      case RepeatModeEnum.none:
        prevIndex = state.currentIndex - 1;
        if (prevIndex < 0) {
          prevIndex = 0;
          pause();
        }
        break;
      case RepeatModeEnum.one:
        if (isCutSong) {
          prevIndex = state.currentIndex - 1;
          if (prevIndex < 0) {
            prevIndex = state.currentPlaylist.length - 1;
          }
        } else {
          prevIndex = state.currentIndex;
        }
        break;
      case RepeatModeEnum.all:
        prevIndex = state.currentIndex - 1;
        if (prevIndex < 0) {
          prevIndex = state.currentPlaylist.length - 1;
        }
        break;
      case RepeatModeEnum.random:
        prevIndex = _random.nextInt(state.currentPlaylist.length);
        break;
    }

    await playSong(prevIndex, true);
  }

  Future<void> addToHistory(AudioInfo? track) async {
    if (track == null) return;

    await ref.read(playStatisticsProvider.notifier).recordPlay(
        track.id,
        CustomAudioHandler.player.position == Duration.zero
            ? (CustomAudioHandler.player.duration ?? Duration.zero)
            : CustomAudioHandler.player.position);

    final newHistory = List<AudioInfo>.from(state.playHistory);

    newHistory.removeWhere((item) => item.id == track.id);
    newHistory.insert(0, track);

    if (newHistory.length > _maxHistorySize) {
      newHistory.removeRange(_maxHistorySize, newHistory.length);
    }
    state = state.copyWith(
      playHistory: newHistory,
    );
    await HiveHelper.setPlaylistPlayHistory(state.playHistory);
  }

  Future<void> addToHistoryByIndex(int index) async {
    if (state.currentPlaylist.length <= index) return;
    await addToHistory(state.currentPlaylist[index]);
  }

  Future<void> clearHistory() async {
    state = state.copyWith(playHistory: []);
    await HiveHelper.setPlaylistPlayHistory([]);
  }

  Future<void> selectSongFromHistory(int index) async {
    state =
        state.copyWith(currentPlaylist: state.playHistory, currentIndex: index);
    await HiveHelper.setCurrentPlaylist(state.playHistory);
    await HiveHelper.setCurrentIndex(index);
  }

  // 插入当前歌曲
  Future<void> insertSong(AudioInfo track, {bool isToEnd = false}) async {
    final updatedSongs = List<AudioInfo>.from(state.currentPlaylist);
    if (isToEnd) {
      updatedSongs.insert(state.currentPlaylist.length, track);
    } else {
      updatedSongs.insert(state.currentIndex + 1, track);
    }

    state = state.copyWith(
      currentPlaylist: updatedSongs,
    );

    await HiveHelper.setCurrentPlaylist(updatedSongs);
  }

  // 插入并播放当前歌曲
  Future<void> insertAndPlaySong(AudioInfo track) async {
    if (state.currentIndex >= 0 && state.currentSong != track) {
      await addToHistoryByIndex(state.currentIndex);
    }

    final updatedSongs = List<AudioInfo>.from(state.currentPlaylist);
    updatedSongs.insert(state.currentIndex + 1, track);

    state = state.copyWith(
      currentPlaylist: updatedSongs,
      currentIndex: state.currentIndex + 1,
    );
    await HiveHelper.setCurrentPlaylist(updatedSongs);
    await HiveHelper.setCurrentIndex(state.currentIndex);
  }

  Future<void> removeSong(int index) async {
    final newQueue = List<AudioInfo>.from(state.currentPlaylist)
      ..removeAt(index);
    state = state.copyWith(currentPlaylist: newQueue);
    await HiveHelper.setCurrentPlaylist(newQueue);

    if (state.currentIndex == index) {
      await playSong(index, true);
    }
  }

  Future<void> removeSongs(List<AudioInfo> playlist, String? playlistId) async {
    if (playlistId != null && playlistId != state.playlistId) {
      return;
    }

    final removeIds = playlist.map((song) => song.id).toSet();

    final newPlaylist = state.currentPlaylist
        .where((song) => !removeIds.contains(song.id))
        .toList();

    int newCurrentIndex = state.currentIndex;
    bool isToSkip = false;

    if (state.currentSong != null &&
        removeIds.contains(state.currentSong!.id)) {
      newCurrentIndex = newPlaylist.isEmpty ? -1 : 0;
      isToSkip = true;
    } else {
      newCurrentIndex = newPlaylist.indexWhere(
          (song) => song.id == state.currentPlaylist[state.currentIndex].id);
    }

    state = state.copyWith(
      currentPlaylist: newPlaylist,
      currentIndex: newCurrentIndex,
    );

    if (newPlaylist.isEmpty || newCurrentIndex == -1) {
      await pause();
    }

    await HiveHelper.setCurrentPlaylist(newPlaylist);
    await HiveHelper.setCurrentIndex(newCurrentIndex);

    if (isToSkip) {
      await skipToNext();
    }
  }

  Future<void> removeFromHistory(AudioInfo track) async {
    final newHistory = List<AudioInfo>.from(state.playHistory)
      ..removeWhere((item) => item.id == track.id);

    state = state.copyWith(playHistory: newHistory);
    await HiveHelper.setPlaylistPlayHistory(newHistory);
  }

  Future<void> removeFromHistoryByIndex(int index) async {
    final newHistory = List<AudioInfo>.from(state.playHistory)..removeAt(index);

    state = state.copyWith(playHistory: newHistory);
    await HiveHelper.setPlaylistPlayHistory(newHistory);
  }

  Future<void> setPlaylist(List<AudioInfo> playlist, String? playlistId,
      {int index = 0, AudioInfo? song}) async {
    if (state.currentIndex >= 0) {
      await addToHistoryByIndex(state.currentIndex);
    }

    if (song != null) {
      index = _getIndexOfAudioInfo(playlist, song.id);
    }

    final id = playlistId ?? _uuid.v4();

    state = state.copyWith(
        currentPlaylist: playlist, currentIndex: index, playlistId: id);
    await _setAudio(playlist[index], true);

    await HiveHelper.setCurrentIndex(index);
    await HiveHelper.setCurrentPlaylist(playlist);
  }

  int _getIndexOfAudioInfo(List<AudioInfo> playlist, String id) {
    return playlist.indexWhere((audioInfo) => audioInfo.id == id);
  }

  // 清空当前播放列表
  Future<void> clearCurrentPlaylist() async {
    if (state.currentIndex >= 0) {
      await addToHistoryByIndex(state.currentIndex);
    }

    state = state.copyWith(
      currentPlaylist: [],
      currentIndex: -1,
    );
    await HiveHelper.setCurrentPlaylist([]);
    await HiveHelper.setCurrentIndex(-1);
  }

  Future<void> reorderSongs(int oldIndex, int newIndex) async {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final updatedPlaylist = List<AudioInfo>.from(state.currentPlaylist);
    final item = updatedPlaylist.removeAt(oldIndex);
    updatedPlaylist.insert(newIndex, item);

    int newCurrentIndex = state.currentIndex;
    if (oldIndex == state.currentIndex) {
      newCurrentIndex = newIndex;
    } else if (oldIndex < state.currentIndex &&
        newIndex >= state.currentIndex) {
      newCurrentIndex--;
    } else if (oldIndex > state.currentIndex &&
        newIndex <= state.currentIndex) {
      newCurrentIndex++;
    }

    state = state.copyWith(
      currentPlaylist: updatedPlaylist,
      currentIndex: newCurrentIndex,
    );
    await HiveHelper.setCurrentPlaylist(updatedPlaylist);
    await HiveHelper.setCurrentIndex(newCurrentIndex);
  }

  Future<void> toggleMute() async {
    state = state.copyWith(
      isMuted: !state.isMuted,
    );
    final volume = state.isMuted ? 0.0 : state.volume;
    await CustomAudioHandler.player.setVolume(volume);
    await HiveHelper.setIsMuted(state.isMuted);
  }

  Future<void> setVolume(double value) async {
    state = state.copyWith(
      volume: value,
    );
    await CustomAudioHandler.player.setVolume(value);
    await HiveHelper.setVolume(value);
  }

  Future<void> addVolume() async {
    final value = state.volume + 0.1;
    state = state.copyWith(
      volume: value,
    );
    await CustomAudioHandler.player.setVolume(value);
    await HiveHelper.setVolume(value);
  }

  Future<void> subVolume() async {
    final value = state.volume - 0.1;
    state = state.copyWith(
      volume: value,
    );
    await CustomAudioHandler.player.setVolume(value);
    await HiveHelper.setVolume(value);
  }
}
