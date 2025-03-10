import 'package:b_be_bee_app/common/api/bili/bili_search_api.dart';
import 'package:b_be_bee_app/model/dto/search_result_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/init.dart';
import '../provider/logging/common_logs_provider.dart';

class SearchState {
  final String query;
  final List<SearchResult> results;
  final bool isLoading;

  SearchState({
    this.query = '',
    this.results = const [],
    this.isLoading = false,
  });

  SearchState copyWith({
    String? query,
    List<SearchResult>? results,
    bool? isLoading,
  }) {
    return SearchState(
      query: query ?? this.query,
      results: results ?? this.results,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final searchControllerProvider = StateNotifierProvider<SearchController, SearchState>((ref) {
  return SearchController();
},name: 'searchControllerProvider');

class SearchController extends StateNotifier<SearchState> {
  SearchController() : super(SearchState());

  Future<void> setQuery(String query) async {
    state = state.copyWith(query: query);
    if (query.isNotEmpty) {
      await search();
    }
  }

  void clearQuery() {
    state = SearchState();
  }

  Future<void> search() async {
    if (state.query.isEmpty) {
      state = state.copyWith(results: []);
      return;
    }

    await Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog('search: ${state.query}');
    });
    state = state.copyWith(isLoading: true);

    final results = await Future.wait([
      getSearchBiliUser(state.query),
      getSearchBiliVideo(state.query),
    ]);

    List<SearchResult> mergedList = [];
    mergedList.addAll(results[0]);
    mergedList.addAll(results[1]);

    state = state.copyWith(
      results: mergedList,
      isLoading: false,
    );
  }

  Future<List<SearchResult>> getSearchBiliUser(String keyword) async {
    return await BiliSearchApi.getSearchUsers(keyWord: keyword,page: 1);
  }

  Future<List<SearchResult>> getSearchBiliVideo(String keyword) async {
    return await BiliSearchApi.getSearchVideos(keyWord: keyword,page: 1);
  }
} 