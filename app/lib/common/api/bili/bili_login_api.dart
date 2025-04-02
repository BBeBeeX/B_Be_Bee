import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/model/dto/login/captcha_result.dart';
import 'package:b_be_bee_app/model/dto/login/get_cookie_info.dart';
import 'package:b_be_bee_app/model/dto/login/login_qrcode_info.dart';
import 'package:b_be_bee_app/model/dto/login/login_user_info_response.dart';
import 'package:b_be_bee_app/model/dto/login/password_login_key_hash_response.dart';
import 'package:b_be_bee_app/model/dto/login/post_password_login_response.dart';
import 'package:b_be_bee_app/model/dto/login/post_qrcode_login.dart';
import 'package:b_be_bee_app/model/dto/login/post_sms_login.dart';
import 'package:b_be_bee_app/model/dto/login/post_sms_require.dart';
import 'package:b_be_bee_app/model/dto/login_user_info.dart';
import 'package:b_be_bee_app/model/enum/bili_vip_label_enum.dart';
import 'package:b_be_bee_app/util/cookie_util.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart';
import 'package:html/parser.dart';
import 'package:rhttp/rhttp.dart';

abstract class BiliLoginApi {
  ///获取登录需要的key和hash
  static Future<PasswordLoginKeyHashResponse>
      requestPasswordLoginKeyHash() async {
    var responsePasswordPublicKeyHash = await RhttpUtils.instance.get(
      ApiConstants.passwordPublicKeyHash,
    );
    return PasswordLoginKeyHashResponse.fromJson(
        responsePasswordPublicKeyHash.bodyToJson);
  }

  ///获取人机测试所需要的数据
  static Future<CaptchaDataResponse> requestCaptchaData() async {
    var responseCaptcha = await RhttpUtils.instance.get(
      ApiConstants.captcha,
      query: {'source': 'main_web'},
    );
    return CaptchaDataResponse.fromJson(responseCaptcha.bodyToJson);
  }

  ///请求发送验证码信息到手机
  static Future<PostSmsRequireResponse> postSendSmsToPhone(int cid, int tel,
      String token, String challenge, String validate, String seccode) async {
    var responseSmsCode = await RhttpUtils.instance.post(
      ApiConstants.smsCode,
      query: {
        'cid': cid.toString(),
        'tel': tel.toString(),
        'source': 'main_web',
        'token': token,
        'challenge': challenge,
        'validate': validate,
        'seccode': seccode
      },
      headers: HttpHeaders.map({
        HttpHeaderName.contentType: Headers.formUrlEncodedContentType,
      }),
    );
    return PostSmsRequireResponse.fromJson(responseSmsCode.bodyToJson);
  }

  ///短信登录
  static Future<PostSmsLoginResponse> smsLogin(
      int cid, int tel, int code, String captchaKey) async {
    var responseSmsLogin = await RhttpUtils.instance.post(
      ApiConstants.smsLogin,
      query: {
        'cid': cid.toString(),
        'tel': tel.toString(),
        'code': code.toString(),
        'source': 'main_mini',
        'keep': '0',
        'captcha_key': captchaKey,
        'go_url': ApiConstants.bilibiliBase
      },
      headers: HttpHeaders.map({
        HttpHeaderName.contentType: Headers.formUrlEncodedContentType,
      }),
    );
    return PostSmsLoginResponse.fromJson(responseSmsLogin.bodyToJson);
  }

  ///密码登录
  static Future<PostPasswordLoginResponse> postPasswordLogin(
      CaptchaResultModel captchaResult,
      PasswordLoginKeyHashResponse passwordLoginKeyHash,
      String username,
      String password) async {
    //先获取cookie
    await RhttpUtils.instance.get(
      ApiConstants.bilibiliBase,
    );
    //加密密码
    dynamic publicKey = RSAKeyParser().parse(passwordLoginKeyHash.data.key);
    String passwordEncryptyed = Encrypter(RSA(publicKey: publicKey))
        .encrypt(passwordLoginKeyHash.data.hash + password)
        .base64;
    var responsePasswordLogin = await RhttpUtils.instance.post(
      ApiConstants.passwordLogin,
      query: {
        'username': username,
        'password': passwordEncryptyed,
        'keep': '0',
        'token': captchaResult.captchaData!.data!.token,
        'challenge': captchaResult.captchaData!.data!.geetest.challenge,
        'validate': captchaResult.validate.toString(),
        'seccode': captchaResult.seccode.toString(),
        'go_url': ApiConstants.bilibiliBase,
      },
      headers: HttpHeaders.map({
        HttpHeaderName.contentType: Headers.formUrlEncodedContentType,
      }),
    );
    return PostPasswordLoginResponse.fromJson(responsePasswordLogin.bodyToJson);
  }

  static Future<LoginUserInfoResponse> _requestLoginUserInfo() async {
    var responseUserInfo = await RhttpUtils.instance.get(
      ApiConstants.userInfo,
    );
    LoginUserInfoResponse ret;
    try {
      ret = LoginUserInfoResponse.fromJson(responseUserInfo.bodyToJson);
    } catch (e) {
      throw '$e, json:${responseUserInfo.bodyToJson}';
    }
    return ret;
  }

  ///获取当前cookie的用户信息
  static Future<LoginUserInfo> getLoginUserInfo() async {
    var responseLoginUserInfo = await _requestLoginUserInfo();
    if (responseLoginUserInfo.code != 0) {
      throw 'getLoginUserInfo: code:${responseLoginUserInfo.code}, message:${responseLoginUserInfo.message}';
    }
    if (responseLoginUserInfo.data == null) {
      return LoginUserInfo.zero;
    }
    var data = responseLoginUserInfo.data!;
    return LoginUserInfo(
        mid: data.mid ?? 0,
        name: data.uname ?? '',
        avatarUrl: data.face ?? '',
        levelInfo: LevelInfo(
            current_level: data.level_info?.current_level ?? 0,
            current_exp: data.level_info?.current_exp ?? 0,
            current_min: data.level_info?.current_min ?? 0,
            next_exp: data.level_info?.next_exp ?? '0'),
        isLogin: data.isLogin ?? false,
        vip: BiliVipLabelEnum.fromLabel(data.vip_label!.label_theme));
  }

  ///获取二维码
  static Future<LoginQRcodeInfo> getQRcode() async {
    var responseQrcodeGenerate =
        await RhttpUtils.instance.get(ApiConstants.qrcodeGenerate);
    final loginQRcode = LoginQRcode.fromJson(responseQrcodeGenerate.bodyToJson);

    if (loginQRcode.code != 0) {
      throw 'getQRcode: code:${loginQRcode.code}, message:${loginQRcode.message}';
    }

    return loginQRcode.data;
  }

  ///检查维码登录，若登录会自动设置cookie
  ///qrcodeKey超时时长为180秒
  static Future<PostQrcodeLoginData> checkQRcodeLogin(
      {required String qrcodeKey}) async {
    final responseQrcodeLogin = await RhttpUtils.instance
        .get(ApiConstants.qrcodeLogin, query: {'qrcode_key': qrcodeKey});

    final PostQrcodeLogin postQrcodeLogin =
        PostQrcodeLogin.fromJson(responseQrcodeLogin.bodyToJson);

    return postQrcodeLogin.code == 0
        ? postQrcodeLogin.data
        : PostQrcodeLoginData();
  }

  ////获取是否需要刷新cookie,需要的话立即刷新
  static Future<void> refreshCookie() async {
    //判断是否需要刷新,本地refresh_csrf不为空，获取bilibili能否开始刷新

    final refreshCsrf = HiveHelper.getBiliRefreshToken();
    if (refreshCsrf == null) {
      return;
    }

    final timestamp = await _isNeedToRefresh();
    if (timestamp == 0) {
      return;
    }

    final correspondPath = CookieUtils.getCorrespondPath(timestamp);
    final String refreshToken = await _getRefreshCSRF(correspondPath);

    await _postRefreshCookie(refreshToken, refreshCsrf);
  }

  //如果需要刷新返回timestamp,否则0
  static Future<int> _isNeedToRefresh() async {
    var responseCookieInfoJSON = await RhttpUtils.instance.get(
      ApiConstants.cookieInfo,
    );

    try {
      GetCookieInfo responseCookieInfo =
          GetCookieInfo.fromJson(responseCookieInfoJSON.bodyToJson);
      if (responseCookieInfo.code != 0) {
        return 0; //未登录
      }
      if (responseCookieInfo.data?.refresh == true) {
        return responseCookieInfo.data?.timestamp ?? 0;
      }
    } catch (e) {
      throw '$e, json:${responseCookieInfoJSON.bodyToJson}';
    }

    return 0;
  }

  static Future<String> _getRefreshCSRF(String correspondPath) async {
    var responseRefreshCSRF = await RhttpUtils.instance.get(
      ApiConstants.cookieInfo + correspondPath,
    );

    var document = parse(responseRefreshCSRF.body);

    var csrfElement = document.querySelector('div#1-name');

    if (csrfElement != null) {
      return csrfElement.text.trim();
    } else {
      throw Exception('refresh_csrf not found in the HTML page');
    }
  }

  static Future<void> _postRefreshCookie(
      String refreshToken, String refreshCsrf) async {
    final csrf = await CookieUtils.getCsrf();

    var formData = {
      'csrf': csrf,
      'refresh_csrf': refreshCsrf,
      'source': 'main_web',
      'refresh_token': refreshToken,
    };

    final postRefreshToken =
        await RhttpUtils.instance.post(ApiConstants.postRefreshCookiePath,
            query: formData,
            headers: HttpHeaders.map({
              HttpHeaderName.contentType: Headers.formUrlEncodedContentType,
            }));

    if (postRefreshToken.bodyToJson!.refresh_token!.isNotEmpty) {
      await HiveHelper.setBiliRefreshToken(
          postRefreshToken.bodyToJson!.refresh_token);
    } else {
      print('refresh token error :');
      print('PostRefreshToken code${postRefreshToken.statusCode}');
      print('PostRefreshToken message${postRefreshToken.body}');
      print(
          'PostRefreshTokenData status${postRefreshToken.bodyToJson!.status}');
      print('PostRefreshTokenData message' +
          postRefreshToken.bodyToJson!.message!);
    }
  }
}
