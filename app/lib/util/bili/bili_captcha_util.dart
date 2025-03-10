import 'package:b_be_bee_app/common/api/bili/bili_login_api.dart';
import 'package:b_be_bee_app/model/dto/login/captcha_result.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:gt3_flutter_plugin/gt3_flutter_plugin.dart';

import '../../gen/strings.g.dart';

Future<void> startBiliCaptcha({required Function(CaptchaResultModel captchaResult) onSuccess}) async {
  late CaptchaResultModel captchaResult;
  Gt3CaptchaConfig config = Gt3CaptchaConfig();
  // config.language = WidgetsBinding.instance.window.locale.countryCode;
  config.timeout = 240;
  config.serviceNode = 1;
  var captcha = Gt3FlutterPlugin(config);
  try {
    captchaResult =
        CaptchaResultModel(captchaData: await BiliLoginApi.requestCaptchaData(), validate: '', seccode: '');
  } catch (e) {
    await ToastUtil.show( t.controller.bili.login.captchaErrorNetwork ,notShow: e.toString());
    return;
  }
  var gtCaptchaData = Gt3RegisterData(
      challenge: captchaResult.captchaData!.data!.geetest.challenge,
      gt: captchaResult.captchaData!.data!.geetest.gt,
      success: captchaResult.captchaData!.code == 0);
  captcha.addEventHandler(
      onResult: (message) async {
        String code = message['code'];
        if (code == '1') {
          captchaResult = captchaResult.copyWith(seccode: message['result']['geetest_seccode']);
          captchaResult = captchaResult.copyWith(validate: message['result']['geetest_validate']);
          captchaResult.seccode = message['result']['geetest_seccode'];
          onSuccess(captchaResult);
        }
      },
      onError: (message) async {
        await ToastUtil.show( t.controller.bili.login.captchaErrorTest,notShow: message.toString());
      });
  captcha.startCaptcha(gtCaptchaData);
}