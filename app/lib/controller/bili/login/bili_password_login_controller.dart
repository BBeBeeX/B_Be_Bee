import 'dart:developer';

import 'package:b_be_bee_app/common/api/bili/bili_login_api.dart';
import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/controller/bili/login/bili_my_login_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dto/login/captcha_result.dart';
import 'package:b_be_bee_app/model/dto/login/post_password_login_response.dart';
import 'package:b_be_bee_app/model/enum/bili_login_model_enum.dart';
import 'package:b_be_bee_app/util/bili/bili_captcha_util.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class BiliPasswordLoginVm {
  final TextEditingController accountController;
  final TextEditingController passwordController;

  BiliPasswordLoginVm({
    required this.accountController,
    required this.passwordController,
  });
}

final biliPasswordLoginProvider =
    StateNotifierProvider<BiliPasswordLoginNotifier, BiliPasswordLoginVm>(
        (ref) {
  return BiliPasswordLoginNotifier(ref);
}, name: 'passwordLoginProvider');

class BiliPasswordLoginNotifier extends StateNotifier<BiliPasswordLoginVm> {
  final Ref ref;

  BiliPasswordLoginNotifier(this.ref)
      : super(BiliPasswordLoginVm(
          accountController: TextEditingController(),
          passwordController: TextEditingController(),
        ));

  Future<void> submitPasswordLogin(BuildContext context) async {
    final account = state.accountController.text;
    final password = state.passwordController.text;
    late CaptchaResultModel captchaResult;

    if (account.isEmpty || password.isEmpty) {
      return;
    }

    try {
      await startBiliCaptcha(
        onSuccess: (captchaResult) async {
          captchaResult = captchaResult;
          if (captchaResult.captchaData?.code != 0) {
            await ToastUtil.show(t.controller.bili.login.captchaDataError);
            return;
          }

          try {
            final passwordLoginKeyHash =
                await BiliLoginApi.requestPasswordLoginKeyHash();
            if (passwordLoginKeyHash.code != 0) {
              await ToastUtil.show(
                  t.controller.bili.login.networkErrorPubError);
              return;
            }

            final PostPasswordLoginResponse passwordLoginResult =
                await BiliLoginApi.postPasswordLogin(
                    captchaResult, passwordLoginKeyHash, account, password);

            if (passwordLoginResult.code != 0) {
              await ToastUtil.show(t.controller.bili.login
                  .passwordLoginErrorForMessage(
                      message: passwordLoginResult.message));
              return;
            }

            bool hasLogin = false;
            try {
              hasLogin = (await BiliLoginApi.getLoginUserInfo()).isLogin;
            } catch (e) {
              // ToastUtil.show('失败:${passwordLoginResult.message}');
            }

            if (passwordLoginResult.data.status == 0 || hasLogin) {
              await ToastUtil.show(t.general.loginSuccess);
              final userInfo = await BiliLoginApi.getLoginUserInfo();

              await ref.read(biliUserProvider.notifier).login(
                  username: userInfo.name,
                  userLevel: userInfo.levelInfo.current_level ?? 0,
                  avatarUrl: userInfo.avatarUrl,
                  vip: userInfo.vip);

              if (passwordLoginResult.data.refresh_token.isNotEmpty) {
                print('set refresh_token');
                await HiveHelper.setBiliRefreshToken(
                    passwordLoginResult.data.refresh_token);
              }

              context.popUntilRoot();
            } else if (passwordLoginResult.data.status == 2) {
              await ToastUtil.show(t.controller.bili.login.toSms);

              ref
                  .read(biliMyLoginTabProvider.notifier)
                  .switchToTab(LoginModeEnum.sms);
            } else {
              await ToastUtil.show(
                  t.controller.bili.login.passwordLoginErrorForMessage(
                      message: passwordLoginResult.message),
                  notShow: ',code:${passwordLoginResult.data.status}');
            }
          } catch (e) {
            await ToastUtil.show(t.general.networkError, notShow: ': $e');
            log(e.toString());
          }
        },
      );
    } catch (e) {
      ToastUtil.show(e.toString());
      log(t.controller.bili.login.passwordError(e: e.toString()));
    }
  }
}
