

import 'package:b_be_bee_app/common/api/bili/bili_login_api.dart';
import 'package:b_be_bee_app/common/bili_error_message.dart';
import 'package:b_be_bee_app/common/coutry_id.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dto/login/post_sms_login.dart';
import 'package:b_be_bee_app/model/dto/login/post_sms_require.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/bili/bili_captcha_util.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';


class BiliSmsLoginVm {
  final TextEditingController phoneController;
  final TextEditingController codeController;
  final List<DropdownMenuItem<Object?>> countryItems;
  final int countryId;
  final PostSmsRequireResponse? smsRequestResult;

  BiliSmsLoginVm({
    required this.phoneController,
    required this.codeController,
    required this.countryItems,
    required this.countryId,
    this.smsRequestResult,
  });

  BiliSmsLoginVm copyWith({
    TextEditingController? phoneController,
    TextEditingController? codeController,
    List<DropdownMenuItem<Object?>>? countryItems,
    int? countryId,
    PostSmsRequireResponse? smsRequestResult,
  }) {
    return BiliSmsLoginVm(
      phoneController: phoneController ?? this.phoneController,
      codeController: codeController ?? this.codeController,
      countryItems: countryItems ?? this.countryItems,
      countryId: countryId ?? this.countryId,
      smsRequestResult: smsRequestResult ?? this.smsRequestResult,
    );
  }
}


final biliSmsLoginProvider = StateNotifierProvider<BiliSmsLoginNotifier, BiliSmsLoginVm>((ref) {
  return BiliSmsLoginNotifier(ref);
},name: 'smsLoginProvider');

class BiliSmsLoginNotifier extends StateNotifier<BiliSmsLoginVm> {
  final Ref ref;

  BiliSmsLoginNotifier(this.ref) : super(BiliSmsLoginVm(
    phoneController: TextEditingController(),
    codeController: TextEditingController(),
    countryItems: _initCountryItems(),
    countryId: 86,
  ));

  void updateCountryId(int newCountryId) {
    state = state.copyWith(countryId: newCountryId);
  }

  void updateSmsRequestResult(PostSmsRequireResponse result) {
    state = state.copyWith(smsRequestResult: result);
  }

  static List<DropdownMenuItem<Object?>> _initCountryItems() {
    List<DropdownMenuItem<Object?>> items = [];
    for (Map<String, dynamic> i in CountryId.contryId) {
      items.add(DropdownMenuItem(
          value: i,
          child: SizedBox(
              width: 100,
              child: Text("+${i['country_id']} ${i['cname']}")
          )
      ));
    }
    return items;
  }


  Future<void> submitSmsLogin(BuildContext context) async {
    final phoneText = state.phoneController.text;
    final codeText = state.codeController.text;

    if (phoneText.isEmpty || codeText.isEmpty) {
      return;
    }

    final phoneNumber = int.parse(phoneText);
    final codeNumber = int.parse(codeText);

    if (state.smsRequestResult == null ) {
      await ToastUtil.show( t.controller.bili.login.captchaDataGetError);
      return;
    }

    try {
      final PostSmsLoginResponse smsLoginResult = await BiliLoginApi.smsLogin(
          state.countryId,
          phoneNumber,
          codeNumber,
          state.smsRequestResult!.data!.captcha_key
      );

      if (smsLoginResult.code == 0) {
        final  userInfo = await BiliLoginApi.getLoginUserInfo();

        await Future.microtask(() async {
          await ref.read(biliUserProvider.notifier).login(
            username: userInfo.name,
            userLevel: userInfo.levelInfo.current_level ?? 0 ,
            avatarUrl: userInfo.avatarUrl,
              vip: userInfo.vip
          );

          if(smsLoginResult.data.refresh_token.isNotEmpty){
            await HiveHelper.setBiliRefreshToken(smsLoginResult.data.refresh_token);
          }
        });

        await ToastUtil.show( t.general.loginSuccess);
        context.popUntilRoot();

      } else {
        final message = BiliErrorMessage.getErrorMessage(smsLoginResult.code);
        await ToastUtil.show( message);
      }
    } catch (e) {
      await ToastUtil.show(t.controller.bili.login.smsNetworkError,notShow:'$e');
    }
  }

  Future<void> onSendSmsCode(BuildContext context) async {
    final phoneText = state.phoneController.text;
    print(phoneText);
    if (phoneText.isEmpty ) {
      return;
    }

    await RhttpUtils().resetCookies();

    final phoneNumber = int.parse(phoneText);

    try {
      await startBiliCaptcha(
        onSuccess: (captchaResult) async {
          captchaResult = captchaResult;
          if (captchaResult.captchaData?.code != 0) {
            await ToastUtil.show(t.controller.bili.login.captchaDataError);
            return;
          }
          try {
            final result = await BiliLoginApi.postSendSmsToPhone(
                state.countryId,
                phoneNumber,
                captchaResult.captchaData!.data!.token,
                captchaResult.captchaData!.data!.geetest.challenge,
                captchaResult.validate!,
                captchaResult.seccode!);

            if(result.data == null){
              final message = result.message;
              await ToastUtil.show( t.controller.bili.login.smsError,notShow:'，$message');
              return;
            }

            updateSmsRequestResult(result);

            final message = BiliErrorMessage.getErrorMessage(result.code);
            ToastUtil.show( message);
          }
          catch (e) {
            await ToastUtil.show( t.controller.bili.login.smsError,notShow:'$e');
            return;
          }
        },
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('error occurred: $e');
      });
    }
  }
}

