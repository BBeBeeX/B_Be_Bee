

import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:pointycastle/asymmetric/api.dart';
import 'dart:io' as dart_http;
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class CookieUtils {

  static Future<String> getAllCookie() async {
    String cookie = '';
    for (var i in (await RhttpUtils.cookieJar
        .loadForRequest(Uri.parse(ApiConstants.bilibiliBase)))) {
      cookie += '${i.name}=${i.value}; ';    }
    return cookie.trim();
  }

  //从cookie中获取csrf需要的数据
  static Future<String> getCsrf() async {
    for (var i in (await RhttpUtils.cookieJar
        .loadForRequest(Uri.parse(ApiConstants.bilibiliBase)))) {
      if (i.name == 'bili_jct') {
        return i.value;
      }
    }
    return '';
  }

  //从cookie中获取UserId需要的数据
  static Future<String> getUserId() async {
    for (var i in (await RhttpUtils.cookieJar
        .loadForRequest(Uri.parse(ApiConstants.bilibiliBase)))) {
      if (i.name == 'DedeUserID') {
        return i.value;
      }
    }
    return '';
  }


  //CorrespondPath算法 用来刷新cookie
  static String getCorrespondPath(int timestamp) {
    const publicKeyPEM = '''
-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLgd2OAkcGVtoE3ThUREbio0Eg
Uc/prcajMKXvkCKFCWhJYJcLkcM2DKKcSeFpD/j6Boy538YXnR6VhcuUJOhH2x71
nzPjfdTcqMz7djHum0qSZA0AyCBDABUqCrfNgCiJ00Ra7GmRj+YCK1NJEuewlb40
JNrRuoEUXpabUzGB8QIDAQAB
-----END PUBLIC KEY-----
''';

    try {
      // 解析公钥
      final publicKey = encrypt.RSAKeyParser().parse(publicKeyPEM) as RSAPublicKey;

      // 创建加密器
      final encrypter = encrypt.Encrypter(
        encrypt.RSA(publicKey: publicKey),
      );

      // 加密数据
      final encrypted = encrypter.encrypt('refresh_$timestamp');

      // 返回十六进制格式的加密字符串
      return encrypted.base16;
    } catch (e) {
      print('Encryption error: $e');
      rethrow;
    }
  }

  // webview 的cookie和用来持久化的cookie间互相转换
  static List<Cookie> convertToInAppWebViewCookies(List<dart_http.Cookie> httpCookies, String url) {
    return httpCookies.map((c) {
      return Cookie(
        name: c.name,
        value: c.value,
        domain: c.domain ?? Uri.parse(url).host,
        path: c.path ?? '/',
        expiresDate: c.expires!.millisecondsSinceEpoch ~/ 1000,
        isSecure: c.secure,
        isHttpOnly: c.httpOnly,
      );
    }).toList();
  }

  static List<dart_http.Cookie> convertToHttpCookies(List<Cookie> inAppWebViewCookies) {
    return inAppWebViewCookies.map((c) {
      var httpCookie = dart_http.Cookie(c.name, c.value);
      httpCookie.domain = c.domain;
      httpCookie.path = c.path;
      if (c.expiresDate != null) {
        httpCookie.expires = DateTime.fromMillisecondsSinceEpoch(c.expiresDate!* 1000);
      }
      httpCookie.secure = c.isSecure ?? false;
      httpCookie.httpOnly = c.isHttpOnly ?? false;
      return httpCookie;
    }).toList();
  }



}
