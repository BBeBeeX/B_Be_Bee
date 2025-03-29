import 'package:b_be_bee_app/common/api/bili/bili_collects_api.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/observer/route_observer.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageRecommendState {
  final List<AudioInfo> audioList; //展示的例子
  final CollectPlaylist? playlistInfo;

  const HomePageRecommendState({
    this.audioList = const [],
    this.playlistInfo,
  });

  HomePageRecommendState copyWith({
    List<AudioInfo>? audioList,
    CollectPlaylist? playlistInfo,
  }) {
    return HomePageRecommendState(
      audioList: audioList ?? this.audioList,
        playlistInfo: playlistInfo?? this.playlistInfo
    );
  }
}

final homePageRecommendProvider = StateNotifierProvider.family<HomePageRecommendController, HomePageRecommendState, RecommendParams>(
  (ref, params) => HomePageRecommendController(ref, params),
name: 'homePageRecommendProvider');

class RecommendParams {
  final String id;
  final String type;
  final String title;

  const RecommendParams({
    required this.id,
    required this.type,
    required this.title,
  });


}

class HomePageRecommendController extends StateNotifier<HomePageRecommendState> {
  final Ref ref;
  final RecommendParams params;

  HomePageRecommendController(this.ref, this.params) : super(HomePageRecommendState()) {
    loadData();
  }

  Future<void> loadData() async {
    if(state.audioList.isEmpty){
      try {
        switch (params.type) {
          case 'bili_season':
            await _getSeasonAudiosSample();
            break;
        }

      } catch (e,a) {
        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog(
              'HomePageRecommendController load data error ${e.toString()}\n'
                  '${a.toString()}');
        });
      }
    }
  }

  Future<void> playAllAudios() async {
    switch(params.type){
      case 'bili_season':
        await _getSeasonAudiosAll();
        break;
    }

    if(state.playlistInfo != null){
      await ref.read(playlistControllerProvider.notifier)
          .setPlaylist(state.playlistInfo!.songs ?? [],state.playlistInfo!.id);
    }
  }

  Future<void> playAudios(AudioInfo? song) async{
    switch(params.type){
      case 'bili_season':
        await _getSeasonAudiosAll();
        break;
    }

    if(state.playlistInfo != null){
      await ref.read(playlistControllerProvider.notifier)
          .setPlaylist(state.playlistInfo!.songs??[],state.playlistInfo!.id,song:song);
    }
  }

  Future<void> toCollectPage(BuildContext context) async {
    switch(params.type){
      case 'bili_season':
        await context.pushToPlaylist( CollectPlaylist(
              id: 'bili_season_${params.id}',
              title: params.title,
              collectCurrentType: CollectTypeEnum.biliSeason,
              collectSourceType: CollectTypeEnum.biliSeason,
              onlineId: params.id
          )
        );
        break;
    }
  }


  Future<void> _getSeasonAudiosSample() async {
    final list = await BiliCollectsApi.getSeasonsSample(int.parse(params.id));
    state = state.copyWith(
      audioList: list,
    );
  }

  // 获取upper为空的原因是账户未登录
  Future<void> _getSeasonAudiosAll() async{
    if(state.playlistInfo == null){
      final playlistInfo = await BiliCollectsApi.getSeasons(int.parse(params.id));
      state = state.copyWith(
        playlistInfo: playlistInfo,
      );
    }
  }
} 