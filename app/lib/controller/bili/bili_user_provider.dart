import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/model/dao/bili/bili_user.dart';
import 'package:b_be_bee_app/model/enum/bili_vip_label_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/api/bili/bili_login_api.dart';

class BiliUserNotifier extends StateNotifier<BiliUser> {
  BiliUserNotifier() : super(const BiliUser()){
    _loadBiliUser();
  }

  //刷新cookie
  // LoginApi.refreshCookie(ref);

  Future<void> login({
    required String username,
    int userLevel = 0,
    required String avatarUrl,
    BiliVipLabelEnum vip = BiliVipLabelEnum.free,
  }) async {
    if (state.username != username ||
        state.userLevel != userLevel ||
        state.avatarUrl != avatarUrl ||
        state.vip != vip ||
        !state.isLogin) {


      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('bili user login: $username');
      });
      state = state.copyWith(
        isLogin: true,
        username: username,
        userLevel: userLevel,
        avatarUrl: avatarUrl,
        vip: vip,
      );
    }

    state = state.copyWith(
      isLogin: true,
      username: username,
      userLevel: userLevel,
      avatarUrl: avatarUrl,
    );
    await HiveHelper.setLocalBiliUser(state);

    DateTime lastTime = DateTime.fromMillisecondsSinceEpoch(HiveHelper.getBiliRefreshTokenLastTime());
    DateTime now = DateTime.now();

    bool isToday = lastTime.year == now.year &&
        lastTime.month == now.month &&
        lastTime.day == now.day;

    if (!isToday) {
      await BiliLoginApi.refreshCookie();
    }
  }

  void logout() {
    state = const BiliUser();

    HiveHelper.setLocalBiliUser(state);

    //清cookie
    RhttpUtils().clearCookies();
  }

  Future<void> updateAvatar(String avatarUrl) async {
    state = state.copyWith(avatarUrl: avatarUrl);
    await HiveHelper.setLocalBiliUser(state);
  }

  Future<void> _loadBiliUser() async {
    final biliUser = HiveHelper.getLocalBiliUser();
    state = biliUser;
  }

  bool isVip(){
    return state.vip != BiliVipLabelEnum.free ? true : false;
  }

}

final biliUserProvider =
StateNotifierProvider<BiliUserNotifier, BiliUser>((ref) {
  return BiliUserNotifier();
},name: 'biliUserProvider');