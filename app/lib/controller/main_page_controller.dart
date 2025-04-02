import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/model/enum/main_tab_enum.dart';
import 'package:b_be_bee_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/bili/bili_my_page.dart';
import 'home_page_controller.dart';

class MainPageState {
  final MainTabEnum currentTab;
  final PageController controller;
  final bool isOpenSideBar;
  final List<Page<dynamic>> historyList;
  final int currentIndex;
  final bool canGoBack;
  final bool canGoForward;
  final List<Page<dynamic>> currentPages;

  const MainPageState({
    required this.currentTab,
    required this.controller,
    this.isOpenSideBar = true,
    this.currentIndex = 0,
    this.historyList = const [MaterialPage(child: HomePage())],
    this.canGoBack = false,
    this.canGoForward = false,
    this.currentPages = const [MaterialPage(child: HomePage())],
  });

  MainPageState copyWith({
    MainTabEnum? currentTab,
    PageController? controller,
    bool? isOpenSideBar,
    int? currentIndex,
    List<Page<dynamic>>? historyList,
  }) {
    final finalHistoryList = historyList ?? this.historyList;
    final finalCurrentIndex = currentIndex ?? this.currentIndex;
    print('finalHistoryList: ${finalHistoryList.length}');
    print(
        'currentPages: ${finalHistoryList.sublist(0, finalCurrentIndex + 1).length}');
    print('finalCurrentIndex: $finalCurrentIndex');
    return MainPageState(
      currentTab: currentTab ?? this.currentTab,
      controller: controller ?? this.controller,
      isOpenSideBar: isOpenSideBar ?? this.isOpenSideBar,
      historyList: finalHistoryList,
      currentIndex: finalCurrentIndex,
      canGoBack: finalCurrentIndex > 0,
      canGoForward: finalCurrentIndex < finalHistoryList.length - 1,
      currentPages: finalHistoryList.sublist(0, finalCurrentIndex + 1),
    );
  }
}

final mainPageProvider =
    StateNotifierProvider<MainPageController, MainPageState>((ref) {
  return MainPageController(ref);
}, name: 'mainPageProvider');

class MainPageController extends StateNotifier<MainPageState> {
  Ref ref;
  List<Widget> uniquePageList = [MyBiliPage()];

  MainPageController(this.ref)
      : super(
          MainPageState(
            currentTab: MainTabEnum.home,
            controller: PageController(),
          ),
        ) {
    Future.microtask(() async {
      await postInit(ref);
    });
  }

  Future<void> changeTab(MainTabEnum tab) async {
    if (tab == state.currentTab) return;

    state = state.copyWith(currentTab: tab);
    await state.controller.animateToPage(
      tab.index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> toggleOpenSideBar() async {
    state = state.copyWith(isOpenSideBar: !state.isOpenSideBar);
  }

  void pushPage(Widget page) {
    Type pageType = page.runtimeType;

    bool isUniquePage = uniquePageList.any((p) => p.runtimeType == pageType);

    if (isUniquePage) {
      int existingIndex = state.historyList
          .indexWhere((p) => p.key.toString().contains(pageType.toString()));

      if (existingIndex != -1) {
        print('${page.runtimeType.toString()} is unique page');
        List<Page<dynamic>> updatedHistoryList = List.from(state.historyList);

        Page<dynamic> existingPage = updatedHistoryList.removeAt(existingIndex);

        state = state.copyWith(
          historyList: [...updatedHistoryList, existingPage],
          currentIndex: state.currentIndex + 1,
        );
        return;
      }
    }

    final newPage = MaterialPage(
        key: ValueKey(
            '${page.runtimeType}-${DateTime.now().millisecondsSinceEpoch}'),
        child: page);

    if (state.currentIndex < state.historyList.length - 1) {
      state = state.copyWith(
        historyList: [
          ...state.historyList.sublist(0, state.currentIndex + 1),
          newPage
        ],
        currentIndex: state.currentIndex + 1,
      );
    } else {
      state = state.copyWith(
        historyList: [...state.historyList, newPage],
        currentIndex: state.currentIndex + 1,
      );
    }
  }

  bool isSearchPage() {
    return state.currentPages[state.currentIndex].key
        .toString()
        .contains('SearchPage');
  }

  void goBack() {
    if (state.canGoBack) {
      state = state.copyWith(
        currentIndex: state.currentIndex - 1,
      );
    }
  }

  void goForward() {
    if (state.canGoForward) {
      state = state.copyWith(
        currentIndex: state.currentIndex + 1,
      );
    }
  }

  void goHome() {
    if (state.currentIndex != 0) {
      ref.read(homePageProvider.notifier).loadInitialRecommends();

      state = state.copyWith(
        currentIndex: 0,
      );
    }
  }

  @override
  void dispose() {
    state.controller.dispose();
    super.dispose();
  }
}
