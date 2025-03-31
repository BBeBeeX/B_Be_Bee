import 'package:b_be_bee_app/common/api/bili/bili_collects_api.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/model/enum/sort_method_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../util/toast_util.dart';

class CollectsPageVm {
  final bool isLoaded; //是否已经加载
  final bool isLoading; //是否正在加载
  final String? error;
  final CollectPlaylist? collectPlaylist;
  final AudioInfo? selectedMedia;
  final SortMethodEnum currentSortMethod;
  final List<AudioInfo>? sortedMedias;

  const CollectsPageVm({
    this.isLoaded = false,
    this.isLoading = false,
    this.error,
    this.collectPlaylist,
    this.selectedMedia,
    this.currentSortMethod = SortMethodEnum.default_,
    this.sortedMedias,
  });

  CollectsPageVm copyWith({
    bool? isLoaded,
    bool? isLoading,
    String? error,
    CollectPlaylist? collectPlaylist,
    AudioInfo? selectedMedia,
    SortMethodEnum? currentSortMethod,
    List<AudioInfo>? sortedMedias,
  }) {
    return CollectsPageVm(
      isLoaded: isLoaded ?? this.isLoaded,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      collectPlaylist: collectPlaylist ?? this.collectPlaylist,
      selectedMedia: selectedMedia ?? this.selectedMedia,
      currentSortMethod: currentSortMethod ?? this.currentSortMethod,
      sortedMedias: sortedMedias ?? this.sortedMedias,
    );
  }
}

final collectsPlaylistPageProvider = StateNotifierProvider.family<
        CollectsPlaylistPageController,
        CollectsPageVm,
        String>((ref, params) => CollectsPlaylistPageController(ref, params),
    name: 'collectsPageVmProvider');

class CollectsPlaylistPageController extends StateNotifier<CollectsPageVm> {
  final Ref ref;
  final String collectPlaylistId;

  CollectsPlaylistPageController(this.ref, this.collectPlaylistId)
      : super(const CollectsPageVm());

  List<AudioInfo> _getSortedMedias(
      List<AudioInfo> medias, SortMethodEnum method) {
    final List<AudioInfo> sorted = List.from(medias);

    switch (method) {
      case SortMethodEnum.titleAZ:
        sorted.sort((a, b) => (a.title ?? '').compareTo(b.title ?? ''));
        break;
      case SortMethodEnum.artistAZ:
        sorted
            .sort((a, b) => (a.upper.name ?? '').compareTo(b.upper.name ?? ''));
        break;
      case SortMethodEnum.default_:
        break;
      case SortMethodEnum.recentPlay:
      case SortMethodEnum.alphabet:
    }

    return sorted;
  }

  Future<void> loadData(CollectPlaylist collectPlaylist) async {
    await Future.microtask(() {
      container
          .read(commonLoggerProvider.notifier)
          .addLog('loadData: ${collectPlaylist.id} '
              'collectCurrentType: ${collectPlaylist.collectCurrentType} '
              'collectSourceType: ${collectPlaylist.collectSourceType} '
              'songIds: ${collectPlaylist.songIds} '
              'songs: ${collectPlaylist.songs}');
    });
    state = state.copyWith(isLoaded: true, isLoading: true, error: null);

    try {
      if (collectPlaylist.songs == null) {
        switch (collectPlaylist.collectCurrentType) {
          case CollectTypeEnum.biliCollect:
            final res = await BiliCollectsApi.getAllCollectsResource(
                int.parse(collectPlaylist.onlineId!));
            collectPlaylist = collectPlaylist.copyWith(
                title: res.title,
                songs: res.songs,
                songIds: res.songs!.map((media) => media.id).toList(),
                cover: res.cover,
                upper: res.upper);
            break;
          case CollectTypeEnum.biliSeason:
            if (collectPlaylist.songs == null) {
              final res = await BiliCollectsApi.getSeasons(
                  int.parse(collectPlaylist.onlineId!));
              collectPlaylist = collectPlaylist.copyWith(
                  title: res.title,
                  songs: res.songs,
                  songIds: res.songs!.map((media) => media.id).toList(),
                  cover: res.cover,
                  upper: res.upper);
            }

            break;
          case CollectTypeEnum.biliSeries:

            ///因为api拿不到系列的封面，所以暂时前面获取传入playlist
            ///collectData = await CollectsApi.getAllCollects2Resource(params.id!);
            break;
          case CollectTypeEnum.biliUpper:
            break;
          case CollectTypeEnum.playlist:
            break;
          case CollectTypeEnum.local:
            final res = ref.read(
              collectsProvider.select(
                (state) => state.playlists.firstWhere(
                  (p) => p.id == collectPlaylist.id,
                ),
              ),
            );

            collectPlaylist = res;

            break;
          case CollectTypeEnum.localAudios:
            break;
        }
      }

      if (collectPlaylist.songs == null) {
        state = state.copyWith(
          isLoading: false,
          error: t.controller.loadDataError,
        );
        return;
      }

      if (collectPlaylist.collectCurrentType != CollectTypeEnum.local) {
        ref.listen(
          collectsProvider.select((state) => state.playlistIds),
          (previous, next) async {
            if (next.contains(collectPlaylist.id)) {
              if (ref.read(settingsProvider).autoSyncToLocal) {
                try {
                  await ref.read(collectsProvider.notifier).syncPlaylist(
                      collectPlaylist.id ?? '', collectPlaylist.songs!);

                  await Future.microtask(() {
                    container.read(commonLoggerProvider.notifier).addLog(
                        'collects playlist page synchronized: ${collectPlaylist.id} ${collectPlaylist.collectCurrentType} ${collectPlaylist.songIds}');
                  });
                } catch (e) {
                  await ToastUtil.show(
                      '${t.general.synchronizedFailed}: ${e.toString()}');
                }
              }
            }
          },
        );
      } else {
        ref.listen(collectsProvider.select((value) => value.playlists),
            (previous, next) {
          // ref.listen(collectsProvider, (previous, next) {

          final playlist = next.firstWhere(
            (p) => p.id == collectPlaylist.id,
          );

          if (playlist.hashCode != state.collectPlaylist.hashCode) {
            state = state.copyWith(
              collectPlaylist: playlist,
              sortedMedias:
                  _getSortedMedias(playlist.songs!, state.currentSortMethod),
            );
          }
        });
      }

      final sortedMedias =
          _getSortedMedias(collectPlaylist.songs!, state.currentSortMethod);

      state = state.copyWith(
        isLoading: false,
        collectPlaylist: collectPlaylist,
        sortedMedias: sortedMedias,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  void setSortMethod(SortMethodEnum method) {
    if (state.collectPlaylist == null || state.collectPlaylist?.songs == null)
      return;

    final sortedMedias =
        _getSortedMedias(state.collectPlaylist!.songs!, method);

    state = state.copyWith(
      currentSortMethod: method,
      sortedMedias: sortedMedias,
    );
  }

  Future<void> reorderSongs(int oldIndex, int newIndex) async {
    if (state.collectPlaylist == null || state.collectPlaylist!.songs == null)
      return;

    final medias = List<AudioInfo>.from(
        state.sortedMedias ?? state.collectPlaylist!.songs!);

    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = medias.removeAt(oldIndex);
    medias.insert(newIndex, item);

    state = state.copyWith(
        sortedMedias: medias,
        collectPlaylist: state.collectPlaylist?.copyWith(
            songs: medias, songIds: medias.map((media) => media.id).toList()));

    if (state.collectPlaylist?.collectCurrentType == CollectTypeEnum.local) {
      final playlist =
          HiveHelper.getCollectsPlaylist(state.collectPlaylist?.id ?? '');
      if (playlist != null) {
        final updatedPlaylist = playlist.copyWith(
          songIds: medias.map((m) => m.id).toList(),
        );
        await HiveHelper.saveCollectsPlaylist(updatedPlaylist);
      }
    }
  }
}
