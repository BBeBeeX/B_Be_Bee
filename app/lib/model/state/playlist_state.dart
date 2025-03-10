import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/enum/repeat_mode_enum.dart';


class PlaylistState {
  final List<AudioInfo> playHistory; // 播放历史
  final List<AudioInfo> currentPlaylist; //播放队列
  final int currentIndex; //
  final String playlistId;
  final RepeatModeEnum repeatMode; // 循环模式
  final AudioPlayInfo? currentAudioPlayInfo;  //歌曲相关信息
  final double volume;
  final bool isMuted;

  AudioInfo? get currentSong {
    if (currentIndex == -1 || currentIndex >= currentPlaylist.length) {
      return null;
    }
    return currentPlaylist[currentIndex];
  }
  List<AudioInfo> get allSongs => currentPlaylist;

  // 构造函数
  PlaylistState({
    this.playHistory = const [],
    this.repeatMode = RepeatModeEnum.none,
    this.currentPlaylist = const [],
    this.currentIndex = -1,
    this.currentAudioPlayInfo,
     this.playlistId='',
    this.volume = 1,
    this.isMuted = false
  });

  PlaylistState copyWith({
    List<AudioInfo>? playHistory,
    RepeatModeEnum? repeatMode,
    List<AudioInfo>? currentPlaylist,
    int? currentIndex,
    AudioPlayInfo? currentAudioPlayInfo,
    String? playlistId,
    double? volume,
    bool? isMuted,
  }) {
    return PlaylistState(
      playHistory: playHistory ?? this.playHistory,
      repeatMode: repeatMode ?? this.repeatMode,
      currentPlaylist: currentPlaylist ?? this.currentPlaylist,
      currentIndex: currentIndex ?? this.currentIndex,
      currentAudioPlayInfo: currentAudioPlayInfo?? this.currentAudioPlayInfo,
        playlistId:playlistId??this.playlistId,
        volume: volume?? this.volume,
        isMuted: isMuted ?? this.isMuted
    );
  }

  factory PlaylistState.initial() {
    return PlaylistState();
  }
}

