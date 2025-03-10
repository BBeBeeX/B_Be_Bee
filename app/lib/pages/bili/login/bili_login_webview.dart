import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../../common/api/bili/bili_login_api.dart';
import '../../../common/api_constants.dart';
import '../../../controller/bili/bili_user_provider.dart';
import '../../../controller/settings_controller.dart';
import '../../../gen/strings.g.dart';
import '../../../util/cookie_util.dart';
import '../../../util/rhttp_utils.dart';
import '../../../util/toast_util.dart';
import '../../../util/webview_utils.dart';

class BiliLoginWebView extends ConsumerStatefulWidget {
  const BiliLoginWebView({Key? key}) : super(key: key);

  @override
  ConsumerState<BiliLoginWebView> createState() => _BiliLoginWebViewState();
}

class _BiliLoginWebViewState extends ConsumerState<BiliLoginWebView> {
  bool _isLoading = true;

  @override
  void initState() {
    print('clean cookie');
    CookieManager.instance().deleteAllCookies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse('${ApiConstants.passportBase}/h5-app/passport/login'))),
            initialSettings: InAppWebViewSettings(
              userAgent: ref.read(settingsProvider).userAgent,
            ),

            onLoadStart: (controller, url) {
              setState(() {
                _isLoading = true;
              });
            },

            onLoadStop: (controller, url) async {
              setState(() {
                _isLoading = false;
              });

              print('url: ${url?.toString()}');
              print('check');
              print(url?.toString().startsWith('https://m.bilibili.com/'));
              print(url?.toString().startsWith(ApiConstants.bilibiliBase));

              if (url!.toString().startsWith(
              'https://passport.bilibili.com/web/sso/exchange_cookie') ||
                  url.toString().startsWith('https://m.bilibili.com/') ||
                  url.toString().startsWith(ApiConstants.bilibiliBase)||
                  url.toString().startsWith('https://account.bilibili.com/')) {
                await getCookies(controller, url);
                await checkIfLoginSuccess(controller);
              }
            },

          ),
          if (_isLoading)
            LoadingWidget()
        ],
    );
  }

  Future<void> getCookies(InAppWebViewController controller,WebUri url) async {
    try {
      print("url: ${url}");

      List<Cookie> cookies = await CookieManager.instance().getCookies(url: url);
      for (var cookie in cookies) {
        print("Cookie: ${cookie.name} = ${cookie.value}");
      }

      final cookieJar = RhttpUtils.cookieJar;
      final httpCookies = CookieUtils.convertToHttpCookies(cookies);
      cookieJar.saveFromResponse(Uri.parse(ApiConstants.bilibiliBase), httpCookies);
      print('');


      // await RhttpUtils.cookieJar
      //     .saveFromResponse(Uri.parse(ApiConstants.bilibiliBase), CookieUtils.convertToHttpCookies(cookies));

    } catch (e) {
       ToastUtil.show( t.controller.bili.login.webviewGetCookieError,notShow:':$e');
    }
  }

  //根据保存的cookies检查是否成功登录,若成功就跳转到主页面
  Future<void> checkIfLoginSuccess(InAppWebViewController controller) async {
    try {
      if ((await BiliLoginApi.getLoginUserInfo()).isLogin) {
         ToastUtil.show( t.general.loginSuccess);
        final userInfo = await BiliLoginApi.getLoginUserInfo();

         await Future.microtask(() async {
           ref.read(biliUserProvider.notifier).login(
              username: userInfo.name,
              userLevel: userInfo.levelInfo.current_level ?? 0,
              avatarUrl: userInfo.avatarUrl,
              vip: userInfo.vip
          );

           final acTimeValue = await WebviewUtils.getItemFromUrl(
             url: 'https://www.bilibili.com', key: 'ac_time_value',
           );

           if(acTimeValue != null){
             print('ac_time_value: ${acTimeValue}');
             await HiveHelper.setBiliRefreshToken(acTimeValue);
           }
        });

        context.pop();

      } else {
        await ToastUtil.show( t.controller.bili.login.webviewError);
      }
    } catch (e) {
      await ToastUtil.show( t.controller.bili.login.webviewError,notShow: e.toString());

      print("========current Cookie======");
      final cookies = await RhttpUtils.cookieJar.loadForRequest(Uri.parse(ApiConstants.bilibiliBase));
      for (var cookie in cookies) {
        print("current Cookie: ${cookie.name} = ${cookie.value}");
      }
    }
  }
}