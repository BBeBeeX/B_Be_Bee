import '../dao/collect_playlist.dart';
import '../enum/sort_method_enum.dart';


class CollectsPageState {
  final List<CollectPlaylist> playlists;
  final SortMethodEnum sortMode;
  final bool sortAscending;
  final String searchText;
  final bool isSearching;

  const CollectsPageState({
    this.playlists = const [],
    this.sortMode = SortMethodEnum.default_,
    this.sortAscending = true,
    this.searchText = '',
    this.isSearching = false,
  });

  CollectsPageState copyWith({
    List<CollectPlaylist>? playlists,
    SortMethodEnum? sortMode,
    bool? sortAscending,
    String? searchText,
    bool? isSearching,
  }) {
    return CollectsPageState(
      playlists: playlists ?? this.playlists,
      sortMode: sortMode ?? this.sortMode,
      sortAscending: sortAscending ?? this.sortAscending,
      searchText: searchText ?? this.searchText,
      isSearching: isSearching ?? this.isSearching,
    );
  }
} 