import 'package:b_be_bee_app/model/enum/bili_login_model_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BiliMyLoginTabState {
  final int currentTabIndex;
  final TabController? tabController;

  const BiliMyLoginTabState({
    this.currentTabIndex = 0,
    this.tabController,
  });

  BiliMyLoginTabState copyWith({
    int? currentTabIndex,
    TabController? tabController,
  }) {
    return BiliMyLoginTabState(
      currentTabIndex: currentTabIndex ?? this.currentTabIndex,
      tabController: tabController ?? this.tabController,
    );
  }
}

class BiliMyLoginTabNotifier extends StateNotifier<BiliMyLoginTabState> {
  BiliMyLoginTabNotifier() : super(BiliMyLoginTabState());

  void switchToTab(LoginModeEnum mode) {
    final index = LoginModeEnum.values.indexOf(mode);
    if (state.tabController != null) {
      Future.microtask(() {
        state.tabController!.animateTo(index);
        state = state.copyWith(currentTabIndex: index);
      });
    }
  }

  Future<void> setTabController(TabController controller) async {
    await Future.microtask(() {
      state = state.copyWith(tabController: controller);
    });  }
}

final biliMyLoginTabProvider = StateNotifierProvider<BiliMyLoginTabNotifier, BiliMyLoginTabState>((ref) {
  return BiliMyLoginTabNotifier();
},name: 'loginTabProvider');

