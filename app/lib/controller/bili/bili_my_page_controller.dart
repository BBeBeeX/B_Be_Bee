import 'package:b_be_bee_app/common/api/bili/bili_collects_api.dart';
import 'package:b_be_bee_app/common/api/bili/bili_login_api.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/bili/bili_user.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_list_all_dto.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/provider/logging/http_logs_provider.dart';
import 'package:b_be_bee_app/util/cookie_util.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class MyBiliPageVm {
  final ScrollController scrollController;
  final BiliUser user;
  final bool isLoading;
  final CollectsListAllDto? favoriteData;
  final CollectsListAllDto? subscribeData;
  final CollectsListAllDto? watchLaterData;
  final int lastFetchTimestamp;

  const MyBiliPageVm({
    required this.scrollController,
    required this.user,
    this.isLoading = false,
    this.favoriteData,
    this.subscribeData,
    this.watchLaterData,
    required this.lastFetchTimestamp,
  });

  MyBiliPageVm copyWith({
    ScrollController? scrollController,
    BiliUser? user,
    bool? isLoading,
    String? error,
    CollectsListAllDto? favoriteData,
    CollectsListAllDto? subscribeData,
    CollectsListAllDto? watchLaterData,
    int? lastFetchTimestamp,
  }) {
    return MyBiliPageVm(
      scrollController: scrollController ?? this.scrollController,
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      favoriteData: favoriteData ?? this.favoriteData,
      subscribeData: subscribeData ?? this.subscribeData,
      watchLaterData: watchLaterData ?? this.watchLaterData,
      lastFetchTimestamp: lastFetchTimestamp ?? 0,
    );
  }
}

final myBiliPageVmProvider = StateNotifierProvider<MyBiliPageVmNotifier, MyBiliPageVm>((ref) {
  return MyBiliPageVmNotifier(ref);
},name: 'myBiliPageVmProvider');


class MyBiliPageVmNotifier extends StateNotifier<MyBiliPageVm> {
  final Ref ref;

  GlobalKey favoritePlaylistKey = GlobalKey();
  GlobalKey subscribePlaylistKey = GlobalKey();
  GlobalKey waitingPlaylistKey = GlobalKey();

  MyBiliPageVmNotifier(this.ref) : super(MyBiliPageVm(
    scrollController: ScrollController(),
    user: ref.watch(biliUserProvider),
    lastFetchTimestamp: 0,
  ));


  Future<void> setFavoritePlaylistKey(GlobalKey key) async {
    favoritePlaylistKey = key;
  }

  Future<void> setSubscribePlaylistKey(GlobalKey key) async {
    subscribePlaylistKey = key;
  }

  Future<void> setWaitingPlaylistKey(GlobalKey key) async {
    waitingPlaylistKey = key;
  }

  Future<void> onScrollToWidget(BuildContext context,String where) async {
    switch (where) {
      case 'favorite':
        context = favoritePlaylistKey.currentContext!;
        break;
      case 'subscribe':
        context = subscribePlaylistKey.currentContext!;
        break;
      case 'waiting':
        context = waitingPlaylistKey.currentContext!;
        break;
    }

    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    }

  Future<void> onRefresh()async {
    state = state.copyWith(lastFetchTimestamp: 0);
    await initializeData();
  }


  Future<void> initializeData() async {

    state = state.copyWith(isLoading: true, error: null);

    //至少5分钟刷新
    final currentTime = DateTime.now().millisecondsSinceEpoch;
    if (currentTime - state.lastFetchTimestamp < 5 * 60 * 1000) {
      state = state.copyWith(isLoading: false);
      return;
    }

    // 用户已登录，更新用户信息
    if (state.user.isLogin) {
      try {
        state = state.copyWith(
            lastFetchTimestamp: DateTime
                .now()
                .millisecondsSinceEpoch
        );

        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog('MyBiliPageVmNotifier initializeData: user login, refresh user data');
        });

        final loginUserInfo = await BiliLoginApi.getLoginUserInfo();

        if (state.user.username != loginUserInfo.name ||
            state.user.userLevel != loginUserInfo.levelInfo.current_level ||
            state.user.avatarUrl != loginUserInfo.avatarUrl ||
            state.user.vip != loginUserInfo.vip ||
            !state.user.isLogin) {
          await Future.microtask(() {
            ref.read(biliUserProvider.notifier).login(
                username: loginUserInfo.name,
                userLevel: loginUserInfo.levelInfo.current_level ?? 0,
                avatarUrl: loginUserInfo.avatarUrl,
                vip: loginUserInfo.vip
            );
          });
        }
      } catch (e) {
        container.read(httpLogsProvider.notifier).addLog(e.toString());
        // ToastUtil.show( '用户cookie已过期: $e');
        await Future.microtask(() {
          ref.read(biliUserProvider.notifier).logout();
        });

        state = state.copyWith(isLoading: false);
        return;
      }

      try {

        final results = await Future.wait([
          getFavoriteData(),
          getCollectionData(),
          getWatchLaterData(),
        ]);

        state = state.copyWith(
            isLoading: false,
            favoriteData: results[0],
            subscribeData: results[1],
            watchLaterData: results[2],
            lastFetchTimestamp: DateTime
                .now()
                .millisecondsSinceEpoch
        );
      } catch (e) {
        await ToastUtil.show( t.controller.bili.getUserDataError,notShow: e.toString());

        state = state.copyWith(isLoading: false);
      }
    }

    state = state.copyWith(isLoading: false,
        lastFetchTimestamp:DateTime.now().millisecondsSinceEpoch);
  }

  Future<CollectsListAllDto> getFavoriteData() async {
      try{
        final mid = await CookieUtils.getUserId();
        final createdListAllData = await BiliCollectsApi.getAllCreatedCollects(mid);
        return CollectsListAllDto(
          count: createdListAllData.length,
          list: createdListAllData,
        );
      }catch(e){
        container.read(httpLogsProvider.notifier).addLog('get favorite data error: $e');
        return const CollectsListAllDto(count: 0);
      }
  }

  Future<CollectsListAllDto> getCollectionData() async {
    try {
      final mid = await CookieUtils.getUserId();
      final createdListAllData = await BiliCollectsApi.getAllCreatedCollects2(mid);

      if (createdListAllData.list != null && createdListAllData.list!.isNotEmpty) {

        final updatedListAll = await Future.wait(
          createdListAllData.list!.map((collect) async {
            try {
              return collect.copyWith(cover: collect.cover?.replaceAll('////', '//'));
            } catch (e) {
              return collect;
            }
          }),
        );

        return CollectsListAllDto(
          count: createdListAllData.count,
          list: updatedListAll.toList(),
        );
      }

      return createdListAllData;
    } catch (e) {

      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Error fetching favorite data: ${e.toString()}');
      });
      return const CollectsListAllDto(count: 0);
    }
  }

  Future<CollectsListAllDto> getWatchLaterData() async {
    //TODO
    return CollectsListAllDto();
  }

}


