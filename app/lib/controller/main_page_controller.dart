
import 'package:b_be_bee_app/model/enum/main_tab_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/init.dart';

class MainPageState {
  final MainTabEnum currentTab;
  final PageController controller;
  final bool isOpenSideBar;
  final GlobalKey<NavigatorState> navigatorKey;
  final List<Widget> navigationStack;  // 导航历史栈
  final int currentStackIndex;  // 当前在栈中的位置

  const MainPageState({
    required this.currentTab,
    required this.controller,
    this.isOpenSideBar = true,
    required this.navigatorKey,
    this.navigationStack = const [],
    this.currentStackIndex = -1,
  });

  MainPageState copyWith({
    MainTabEnum? currentTab,
    PageController? controller,
    bool? isOpenSideBar,
    GlobalKey<NavigatorState>? navigatorKey,
    List<Widget>? navigationStack,
    int? currentStackIndex,
  }) {
    return MainPageState(
      currentTab: currentTab ?? this.currentTab,
      controller: controller ?? this.controller,
      isOpenSideBar: isOpenSideBar ?? this.isOpenSideBar,
      navigatorKey: navigatorKey ?? this.navigatorKey,
      navigationStack: navigationStack ?? this.navigationStack,
      currentStackIndex: currentStackIndex ?? this.currentStackIndex,
    );
  }

  bool get canGoBack => currentStackIndex > 0;
  bool get canGoForward => currentStackIndex < navigationStack.length - 1;
}

final mainPageProvider = StateNotifierProvider<MainPageController, MainPageState>((ref) {
  return MainPageController(ref);
},name: 'mainPageProvider');

class MainPageController extends StateNotifier<MainPageState> {
  Ref ref;

  MainPageController(this.ref) : super(
    MainPageState(
      currentTab: MainTabEnum.home,
      controller: PageController(),
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
  ){
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

  Future<T?> pushPage<T>(Widget page) async {
    final navigator = state.navigatorKey.currentState;
    if (navigator == null) return null;

    // 添加到导航栈
    final newStack = state.navigationStack.sublist(0, state.currentStackIndex + 1);
    newStack.add(page);
    
    state = state.copyWith(
      navigationStack: newStack,
      currentStackIndex: newStack.length - 1,
    );

    return navigator.push<T>(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // 返回上一个页面
  Future<bool> goBack() async {
    final navigator = state.navigatorKey.currentState;
    if (navigator == null || !state.canGoBack) return false;

    if (await navigator.maybePop()) {
      state = state.copyWith(
        currentStackIndex: state.currentStackIndex - 1,
      );
      return true;
    }
    return false;
  }

  // 前进到下一个页面
  Future<bool> goForward() async {
    final navigator = state.navigatorKey.currentState;
    if (navigator == null || !state.canGoForward) return false;

    final nextPage = state.navigationStack[state.currentStackIndex + 1];
    await pushPage(nextPage);
    return true;
  }

  Future<void> popAll() async {
    await Future.microtask(() {
      final navigator = state.navigatorKey.currentState;
      if (navigator != null) {
        while (navigator.canPop()) {
          navigator.pop();
        }
      }

      if(state.navigationStack.isNotEmpty){
        state =state.copyWith(
            navigationStack: [state.navigationStack[0]],
            currentStackIndex: 0
        );
      }

    });
  }

  @override
  void dispose() {
    state.controller.dispose();
    super.dispose();
  }
}


