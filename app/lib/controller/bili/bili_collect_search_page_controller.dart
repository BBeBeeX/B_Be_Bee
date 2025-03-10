import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class BiliCollectSearchPageVm {
  final List<AudioInfo> allMedias;
  final List<AudioInfo> searchResults;
  final String keyword;
  final bool isSearching;

  const BiliCollectSearchPageVm({
    required this.allMedias,
    this.searchResults = const [],
    this.keyword = '',
    this.isSearching = false,
  });

  BiliCollectSearchPageVm copyWith({
    List<AudioInfo>? allMedias,
    List<AudioInfo>? searchResults,
    String? keyword,
    bool? isSearching,
  }) {
    return BiliCollectSearchPageVm(
      allMedias: allMedias ?? this.allMedias,
      searchResults: searchResults ?? this.searchResults,
      keyword: keyword ?? this.keyword,
      isSearching: isSearching ?? this.isSearching,
    );
  }
}

class BiliCollectSearchPageController extends StateNotifier<BiliCollectSearchPageVm> {
  BiliCollectSearchPageController({
    required List<AudioInfo> medias,
    String initialKeyword = '',
  }) : super(BiliCollectSearchPageVm(
    allMedias: medias,
    keyword: initialKeyword,
  )) {
    if (initialKeyword.isNotEmpty) {
      performSearch(initialKeyword);
    }
  }

  void performSearch(String keyword) {
    state = state.copyWith(
      keyword: keyword,
      isSearching: true,
    );

    if (keyword.isEmpty) {
      state = state.copyWith(
        searchResults: [],
        isSearching: false,
      );
      return;
    }

    final searchKeyword = keyword.toLowerCase();
    final results = state.allMedias.where((media) {
      final title = media.title.toLowerCase() ?? '';
      final author = media.upper.name.toLowerCase() ?? '';
      return title.contains(searchKeyword) || author.contains(searchKeyword);
    }).toList();

    state = state.copyWith(
      searchResults: results,
      isSearching: false,
    );
  }

  void clearSearch() {
    state = state.copyWith(
      keyword: '',
      searchResults: [],
      isSearching: false,
    );
  }
}

final biliCollectSearchPageProvider = StateNotifierProvider.family<
    BiliCollectSearchPageController,
    BiliCollectSearchPageVm,
    List<AudioInfo>>((ref, medias) {
  return BiliCollectSearchPageController(medias: medias);
},name: 'biliCollectSearchPageProvider');