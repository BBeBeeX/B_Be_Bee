import 'dart:async';

import 'package:b_be_bee_app/common/api/bili/bili_login_api.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dto/login/login_qrcode_info.dart';
import 'package:b_be_bee_app/model/dto/login/post_qrcode_login.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/provider/logging/http_logs_provider.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class BiliQrCodeLoginVm {
  final LoginQRcodeInfo? qrcodeInfo;

  const BiliQrCodeLoginVm({
    this.qrcodeInfo,
  });

  BiliQrCodeLoginVm copyWith({
    LoginQRcodeInfo? qrcodeInfo,
  }) {
    return BiliQrCodeLoginVm(
      qrcodeInfo: qrcodeInfo ?? this.qrcodeInfo,
    );
  }

  BiliQrCodeLoginVm clearData() {
    return BiliQrCodeLoginVm(
      qrcodeInfo: LoginQRcodeInfo(),
    );
  }
}

final biliQrCodeLoginVmProvider = AsyncNotifierProvider.autoDispose<
        BiliQrCodeLoginNotifier, BiliQrCodeLoginVm>(BiliQrCodeLoginNotifier.new,
    name: 'qrCodeLoginVmProvider');

class BiliQrCodeLoginNotifier
    extends AutoDisposeAsyncNotifier<BiliQrCodeLoginVm> {
  Timer? _qrcodeTimer;

  Future<void> startQRCodePolling() async {
    try {
      final qrcodeInfo = await BiliLoginApi.getQRcode();
      state = AsyncValue.data(
        state.value!.copyWith(qrcodeInfo: qrcodeInfo),
      );
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('refresh qr： ${qrcodeInfo.url}//${qrcodeInfo.qrcode_key}');
      });

      _qrcodeTimer = Timer.periodic(const Duration(seconds: 1), (timer) async {
        try {
          final PostQrcodeLoginData postQrcodeLoginData =
              await BiliLoginApi.checkQRcodeLogin(
                  qrcodeKey: state.value!.qrcodeInfo!.qrcode_key!);

          await Future.microtask(() {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('postQrcodeLoginData： $postQrcodeLoginData');
          });

          if (postQrcodeLoginData.code == 0) {
            clean();
            final userInfo = await BiliLoginApi.getLoginUserInfo();
            await ToastUtil.show(t.general.loginSuccess);

            await Future.microtask(() {
              ref.read(biliUserProvider.notifier).login(
                  username: userInfo.name,
                  userLevel: userInfo.levelInfo.current_level ?? 0,
                  avatarUrl: userInfo.avatarUrl,
                  vip: userInfo.vip);

              Routerino.navigatorKey.currentContext?.pop();
            });

            if (postQrcodeLoginData.refresh_token!.isNotEmpty) {
              await Future.microtask(() {
                container
                    .read(commonLoggerProvider.notifier)
                    .addLog('set refresh_token');
              });
              await HiveHelper.setBiliRefreshToken(
                  postQrcodeLoginData.refresh_token!);
            }
          } else if (postQrcodeLoginData.code == 86038) {
            container
                .read(httpLogsProvider.notifier)
                .addLog('QR code expired, retrieved again...');
            await restart();
          }
        } catch (e) {
          await ToastUtil.show(t.controller.bili.login.qrStatusError);
          await restart();
        }
      });
    } catch (e) {
      await ToastUtil.show(t.controller.bili.login.qrGetError);
      await restart();
    }
  }

  void clean() {
    _qrcodeTimer?.cancel();
    _qrcodeTimer = null;

    state = AsyncValue.data(
      state.value!.clearData(),
    );
  }

  Future<void> restart() async {
    clean();
    await Future.delayed(const Duration(milliseconds: 500));
    await startQRCodePolling();
  }

  @override
  FutureOr<BiliQrCodeLoginVm> build() {
    startQRCodePolling();

    ref.onDispose(() {
      _qrcodeTimer?.cancel();
      state = AsyncValue.data(
        state.value!.clearData(),
      );
      container
          .read(httpLogsProvider.notifier)
          .addLog('QR code timer cancelled');
    });

    return BiliQrCodeLoginVm(
      qrcodeInfo: null,
    );
  }
}
