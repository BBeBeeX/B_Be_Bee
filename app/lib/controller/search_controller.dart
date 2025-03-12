import 'package:b_be_bee_app/common/api/bili/bili_search_api.dart';
import 'package:b_be_bee_app/model/dto/search_result_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/init.dart';
import '../provider/logging/common_logs_provider.dart';

class SearchState {
  final String query;
  final Map<SearchItemTypeEnum, List<SearchResult>> typeResults;
  final bool isLoading;
  final Map<SearchItemTypeEnum, int> currentPages;
  final Map<SearchItemTypeEnum, bool> hasMoreMap;
  final SearchItemTypeEnum currentType;

  SearchState({
    this.query = '',
    Map<SearchItemTypeEnum, List<SearchResult>>? typeResults,
    this.isLoading = false,
    Map<SearchItemTypeEnum, int>? currentPages,
    Map<SearchItemTypeEnum, bool>? hasMoreMap,
    this.currentType = SearchItemTypeEnum.all,
  }) : 
    this.typeResults = typeResults ?? {
      for (var type in SearchItemTypeEnum.values) type: [],
    },
    this.currentPages = currentPages ?? {
      for (var type in SearchItemTypeEnum.values) type: 1,
    },
    this.hasMoreMap = hasMoreMap ?? {
      for (var type in SearchItemTypeEnum.values) type: true,
    };

  List<SearchResult> get results {
    if (currentType == SearchItemTypeEnum.all) {
      return [...(typeResults[SearchItemTypeEnum.biliUser] ?? []), 
              ...(typeResults[SearchItemTypeEnum.biliVideo] ?? [])];
    }
    return typeResults[currentType] ?? [];
  }

  bool get hasMore => hasMoreMap[currentType] ?? false;
  int get currentPage => currentPages[currentType] ?? 1;

  SearchState copyWith({
    String? query,
    Map<SearchItemTypeEnum, List<SearchResult>>? typeResults,
    bool? isLoading,
    Map<SearchItemTypeEnum, int>? currentPages,
    Map<SearchItemTypeEnum, bool>? hasMoreMap,
    SearchItemTypeEnum? currentType,
  }) {
    return SearchState(
      query: query ?? this.query,
      typeResults: typeResults ?? this.typeResults,
      isLoading: isLoading ?? this.isLoading,
      currentPages: currentPages ?? this.currentPages,
      hasMoreMap: hasMoreMap ?? this.hasMoreMap,
      currentType: currentType ?? this.currentType,
    );
  }
}

final searchControllerProvider = StateNotifierProvider<SearchController, SearchState>((ref) {
  return SearchController();
},name: 'searchControllerProvider');

class SearchController extends StateNotifier<SearchState> {
  SearchController() : super(SearchState());

  Future<void> setQuery(String query) async {
    state = state.copyWith(
      query: query,
      currentPages: {
        for (var type in SearchItemTypeEnum.values) type: 1,
      },
      typeResults: {
        for (var type in SearchItemTypeEnum.values) type: [],
      },
      hasMoreMap: {
        for (var type in SearchItemTypeEnum.values) type: true,
      }
    );
    if (query.isNotEmpty) {
      await searchAllTypes();
    }
  }

  void clearQuery() {
    state = SearchState();
  }

  void setCurrentType(SearchItemTypeEnum type) {
    if (state.currentType != type) {
      state = state.copyWith(currentType: type);
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || !state.hasMore) return;
    
    state = state.copyWith(
      currentPages: {
        ...state.currentPages,
        state.currentType: state.currentPages[state.currentType]! + 1,
      },
      isLoading: true
    );
    await search(isLoadMore: true);
  }

  Future<void> searchAllTypes() async {
    if (state.query.isEmpty) return;

    state = state.copyWith(isLoading: true);
    
    try {
      // 搜索所有类型的内容
      final results = await Future.wait([
        getSearchBiliUser(state.query, 1),
        getSearchBiliVideo(state.query, 1),
      ]);

      final userResults = results[0];
      final videoResults = results[1];

      state = state.copyWith(
        typeResults: {
          ...state.typeResults,
          SearchItemTypeEnum.biliUser: userResults,
          SearchItemTypeEnum.biliVideo: videoResults,
        },
        hasMoreMap: {
          ...state.hasMoreMap,
          SearchItemTypeEnum.biliUser: userResults.isNotEmpty,
          SearchItemTypeEnum.biliVideo: videoResults.isNotEmpty,
        },
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> search({bool isLoadMore = false, SearchItemTypeEnum? type}) async {
    if (state.query.isEmpty) {
      state = state.copyWith(
        typeResults: {
          for (var type in SearchItemTypeEnum.values) type: [],
        },
        isLoading: false
      );
      return;
    }

    final searchType = type ?? state.currentType;
    if (searchType == SearchItemTypeEnum.all) return;

    await Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog(
        'search: ${state.query}, page: ${state.currentPages[searchType]}, type: $searchType'
      );
    });
    
    if (!isLoadMore) {
      state = state.copyWith(isLoading: true);
    }

    List<SearchResult> searchResults = [];
    
    try {
      switch (searchType) {
        case SearchItemTypeEnum.biliUser:
          searchResults = await getSearchBiliUser(state.query, state.currentPages[searchType]!);
          break;
        case SearchItemTypeEnum.biliVideo:
          searchResults = await getSearchBiliVideo(state.query, state.currentPages[searchType]!);
          break;
        case SearchItemTypeEnum.all:
          // Handled by searchAllTypes()
          break;
      }

      final hasMore = searchResults.isNotEmpty;
      final currentResults = state.typeResults[searchType] ?? [];
      final newResults = isLoadMore 
          ? [...currentResults, ...searchResults]
          : searchResults;

      state = state.copyWith(
        typeResults: {
          ...state.typeResults,
          searchType: newResults,
        },
        isLoading: false,
        hasMoreMap: {
          ...state.hasMoreMap,
          searchType: hasMore,
        }
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        hasMoreMap: {
          ...state.hasMoreMap,
          searchType: false,
        }
      );
    }
  }

  Future<List<SearchResult>> getSearchBiliUser(String keyword, int page) async {
    return await BiliSearchApi.getSearchUsers(keyWord: keyword, page: page);
  }

  Future<List<SearchResult>> getSearchBiliVideo(String keyword, int page) async {
    return await BiliSearchApi.getSearchVideos(keyWord: keyword, page: page);
  }
} 