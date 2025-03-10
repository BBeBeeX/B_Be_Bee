import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../common/home_page_recommend.dart';
import 'home_page_recommend_controller.dart';

class HomePageState {
  final List<RecommendParams> recommends;
  final bool isLoading;

  const HomePageState({
    this.recommends = const [],
    this.isLoading = false,
  });

  HomePageState copyWith({
    List<RecommendParams>? recommends,
    bool? isLoading,
  }) {
    return HomePageState(
      recommends: recommends ?? this.recommends,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

final homePageProvider = StateNotifierProvider<HomePageController, HomePageState>((ref) {
  return HomePageController()..loadInitialRecommends();
},name: 'homePageProvider');

class HomePageController extends StateNotifier<HomePageState> {
  static const int loadMoreCount = 5;
  final _random = Random();

  HomePageController() : super(const HomePageState());

  void loadInitialRecommends() {
    final initialRecommends = _getRandomRecommends(loadMoreCount);
    state = state.copyWith(recommends: initialRecommends);
  }

  void loadMoreRecommends() {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true);

    final moreRecommends = _getRandomRecommends(loadMoreCount);
    final updatedRecommends = [...state.recommends, ...moreRecommends];

    state = state.copyWith(
      recommends: updatedRecommends,
      isLoading: false,
    );
  }

  List<RecommendParams> _getRandomRecommends(int count) {
    final List<Map<String, String>> shuffled = List.from(allRecommends)
      ..shuffle(_random);

    return shuffled.take(count).map((item) => RecommendParams(
      id: item['id']!,
      type: item['type']!,
      title: item['title']!,
    )).toList();
  }
} 