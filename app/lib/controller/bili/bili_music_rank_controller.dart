import 'package:b_be_bee_app/common/api/bili/bili_audio_api.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_list_dto.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_music_list_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/strings.g.dart';

class BiliMusicRankVm {
  final bool isLoading;
  final String? error;
  final List<AudioToplistPeriodItem> allPeriods;
  final AudioTopMusicData? currentList;
  final String? currentPeriod;

  const BiliMusicRankVm({
    this.isLoading = false,
    this.error,
    this.allPeriods = const [],
    this.currentList,
    this.currentPeriod,
  });

  BiliMusicRankVm copyWith({
    bool? isLoading,
    String? error,
    List<AudioToplistPeriodItem>? allPeriods,
    AudioTopMusicData? currentList,
    String? currentPeriod,
  }) {
    return BiliMusicRankVm(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      allPeriods: allPeriods ?? this.allPeriods,
      currentList: currentList ?? this.currentList,
      currentPeriod: currentPeriod ?? this.currentPeriod,
    );
  }
}

final biliMusicRankProvider = StateNotifierProvider<BiliMusicRankController, BiliMusicRankVm>((ref) {
  return BiliMusicRankController(ref);
},name: 'biliMusicRankProvider');

class BiliMusicRankController extends StateNotifier<BiliMusicRankVm> {
  final Ref ref;

  BiliMusicRankController(this.ref) : super(const BiliMusicRankVm()) {
    loadData();
  }

  Future<void> loadData() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final topList = await BiliAudioApi.getAudioTopList();
      if (topList.isEmpty) {
        state = state.copyWith(
          isLoading: false,
          error: t.controller.bili.noRankData,
        );
        return;
      }



      final musicList = await BiliAudioApi.getAudioTopMusicList(topList.first.priod.toString());

      state = state.copyWith(
        isLoading: false,
        allPeriods: topList,
        currentList: musicList,
        currentPeriod: topList.first.priod.toString(),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> loadMusicList(String periodId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final musicList = await BiliAudioApi.getAudioTopMusicList(periodId);
      state = state.copyWith(
        isLoading: false,
        currentList: musicList,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> playMusic(AudioInfo audioInfo) async {
    await ref.read(playlistControllerProvider.notifier).setPlaylist([audioInfo],audioInfo.id);
  }
} 