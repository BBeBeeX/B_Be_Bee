import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaylistPageState {
  final int currentPage;
  final PageController pageController;
  final ScrollController scrollController;

  PlaylistPageState({
    required this.currentPage,
    required this.pageController,
    required this.scrollController,
  });

  PlaylistPageState copyWith({
    int? currentPage,
    PageController? pageController,
    ScrollController? scrollController,
  }) {
    return PlaylistPageState(
      currentPage: currentPage ?? this.currentPage,
      pageController: pageController ?? this.pageController,
      scrollController: scrollController ?? this.scrollController,
    );
  }
}

class PlaylistPageController extends StateNotifier<PlaylistPageState> {
  PlaylistPageController()
      : super(PlaylistPageState(
    currentPage: 0,
    pageController: PageController(),
    scrollController: ScrollController(),
  ));

  PageController get pageController => state.pageController;
  ScrollController get scrollController => state.scrollController;

  @override
  void dispose() {
    state.pageController.dispose();
    state.scrollController.dispose();
    super.dispose();
  }

  void setCurrentPage(int page) {
    state = state.copyWith(currentPage: page);
  }

  Future<void> animateToPage(int page) async {
    await state.pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> scrollToIndex(int index) async {
    if (!state.scrollController.hasClients) return;

    await state.scrollController.animateTo(
      index * 60.0, // 假设每个项目高度为60
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeInOut,
    );
  }
}

final playlistPageControllerProvider = StateNotifierProvider<PlaylistPageController, PlaylistPageState>((ref) {
  return PlaylistPageController();
},name: 'playlistPageControllerProvider');