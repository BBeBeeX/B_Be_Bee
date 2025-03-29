import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/play_statistics_controller.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/enum/sort_method_enum.dart';
import 'package:b_be_bee_app/model/state/collects_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectsPageProvider = StateNotifierProvider<CollectsPageController, CollectsPageState>((ref) {
  return CollectsPageController(ref);
},name: 'collectsPageProvider');

class CollectsPageController extends StateNotifier<CollectsPageState> {
  final Ref ref;

  CollectsPageController(this.ref) : super(const CollectsPageState()) {
    state = state.copyWith(playlists: ref.read(collectsProvider).playlists);

    ref.listen(collectsProvider, (previous, next) {
      _updatePlaylists(next.playlists);
    });
  }

  void toggleSearch() {
    if (state.isSearching) {
      state = state.copyWith(
        isSearching: false,
        searchText: '',
      );
      _updatePlaylists(ref.read(collectsProvider).playlists);
    } else {
      state = state.copyWith(isSearching: true);
    }
  }

  void setSearchText(String text) {
    state = state.copyWith(searchText: text);
    _updatePlaylists(ref.read(collectsProvider).playlists);
  }

  void _updatePlaylists(List<CollectPlaylist> playlists) {
    var filteredPlaylists = playlists;
    if (state.searchText.isNotEmpty) {
      filteredPlaylists = playlists.where((playlist) =>
          playlist.title.toLowerCase().contains(state.searchText.toLowerCase())
      ).toList();
    } else {
      filteredPlaylists = playlists;
    }
    
    state = state.copyWith(playlists: filteredPlaylists);
    _sortPlaylists();
  }

  void setSortMode(SortMethodEnum mode) {
    if (state.sortMode == mode) {
      state = state.copyWith(sortAscending: !state.sortAscending);
    } else {
      state = state.copyWith(
        sortMode: mode,
        sortAscending: true,
      );
    }
    _sortPlaylists();
  }

  void _sortPlaylists() {
    final playlists = [...state.playlists];
    final defaultPlaylists = playlists.where((p) => p.isDefault).toList();
    final normalPlaylists = playlists.where((p) => !p.isDefault).toList();
    
    switch (state.sortMode) {
      case SortMethodEnum.default_:
        normalPlaylists.sort((a, b) {
          if (a.isTop && !b.isTop) return -1;
          if (!a.isTop && b.isTop) return 1;
          return 0;
        });
        break;

        //暂时最近升序
      case SortMethodEnum.recentPlay:
        final Map<String, DateTime?> lastPlayTimes = {};

        for (var playlist in normalPlaylists) {
          lastPlayTimes[playlist.id] = ref.read(playStatisticsProvider.notifier)
              .getLastPlayTimeByIdList(playlist.songIds);
        }

        normalPlaylists.sort((a, b) {
          final aTime = lastPlayTimes[a.id]?.millisecondsSinceEpoch ?? 0;
          final bTime = lastPlayTimes[b.id]?.millisecondsSinceEpoch ?? 0;
          return bTime.compareTo(aTime);

          // return state.sortAscending ? aTime.compareTo(bTime) : bTime.compareTo(aTime);
        });
        break;
        
      case SortMethodEnum.alphabet:
        normalPlaylists.sort((a, b) {
          return  a.title.compareTo(b.title) ;
          // return state.sortAscending ? a.title.compareTo(b.title) : b.title.compareTo(a.title);
        });
        break;
      case SortMethodEnum.titleAZ:
      case SortMethodEnum.artistAZ:
    }
    
    state = state.copyWith(playlists: [...defaultPlaylists, ...normalPlaylists]);
  }
} 