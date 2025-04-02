import 'dart:developer';
import 'dart:io';

import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/model/enum/proxy_type_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/provider/logging/http_logs_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rhttp/rhttp.dart';

class RhttpUtils {
  static final RhttpUtils _instance = RhttpUtils._internal();

  static RhttpUtils get instance => _instance;

  static late RhttpClient _client;
  static late final CookieJar cookieJar;
  static String cookieString = '';
  final Map<String, CancelToken> _activeTokens = {};

  RhttpUtils._internal() {
    _client = createRhttpClient();
  }

  Future<void> init() async {
    if (kIsWeb) {
      cookieJar = CookieJar();
    } else {
      var cookiePath =
          '${(await getApplicationSupportDirectory()).path}/.cookies/';
      cookieJar = PersistCookieJar(storage: FileStorage(cookiePath));
    }

    _initCookies();
  }

  Future<void> _initCookies() async {
    if ((await cookieJar.loadForRequest(Uri.parse(ApiConstants.bilibiliBase)))
        .isEmpty) {
      try {
        await _client.get(ApiConstants.bilibiliBase); //获取默认cookie
      } catch (e) {
        log('utils/RhttpUtils, ${e.toString()}');
      }
    }
  }

  Future<void> clearCookies() async {
    try {
      await cookieJar.deleteAll(); // 清空所有 cookie
      log('Cookies cleared successfully!');
    } catch (e) {
      log('Failed to clear cookies: $e');
    }
  }

  Future<void> resetCookies() async {
    clearCookies();
    final respsonse = await _client.get(ApiConstants.bilibiliBase);

    print(respsonse);
  }

  Future<String> getCookiesString() async {
    if (cookieString.isEmpty) {
      List<Cookie> cookies =
          await cookieJar.loadForRequest(Uri.parse(ApiConstants.bilibiliBase));
      cookieString =
          cookies.map((cookie) => '${cookie.name}=${cookie.value}').join('; ');
    }
    return cookieString;
  }

  Future<void> setProxy(ProxyTypeEnum type,
      {String? host, String? port, String? username, String? password}) async {
    final proxySettings = _client.settings.proxySettings;
    print('proxySettings: ${proxySettings.toString()}');

    _client = createRhttpClient(
        type: type,
        host: host,
        port: port,
        username: username,
        password: password);
  }

  Future<HttpTextResponse> get(
    String url, {
    Map<String, String>? query,
    HttpHeaders? headers,
  }) async {
    final defaultHttpHeaders = HttpHeaders.map({
      HttpHeaderName.userAgent: Constants.defaultUserAgent,
      HttpHeaderName.referer: ApiConstants.bilibiliBase,
      HttpHeaderName.cookie: await getCookiesString(),
    });
    headers = headers != null
        ? headers
            .copyWith(
                name: HttpHeaderName.userAgent,
                value: Constants.defaultUserAgent)
            .copyWith(
                name: HttpHeaderName.referer, value: ApiConstants.bilibiliBase)
            .copyWith(
                name: HttpHeaderName.cookie, value: await getCookiesString())
        : defaultHttpHeaders;

    final response = await _client.get(
      url,
      query: query,
      headers: headers,
    );
    return response;
  }

  Future<HttpTextResponse> post(
    String url, {
    Map<String, String> query = const {},
    // required Map<String, dynamic> data,
    HttpHeaders? headers,
  }) async {
    final defaultHttpHeaders = HttpHeaders.map({
      HttpHeaderName.userAgent: Constants.defaultUserAgent,
      HttpHeaderName.referer: ApiConstants.bilibiliBase,
      HttpHeaderName.cookie: await getCookiesString(),
    });
    headers = headers != null
        ? headers
            .copyWith(
                name: HttpHeaderName.userAgent,
                value: Constants.defaultUserAgent)
            .copyWith(
                name: HttpHeaderName.referer, value: ApiConstants.bilibiliBase)
            .copyWith(
                name: HttpHeaderName.cookie, value: await getCookiesString())
        : defaultHttpHeaders;

    final response = await _client.post(
      url,
      query: query,
      // body: HttpBody.json(data),
      headers: headers,
    );
    return response;
  }

  //cancelToken.cancel();
  Future<void> downloadBiliAudio(
      {required String url,
      required void Function(double progress) onSendProgress,
      required String id,
      required String tempPath}) async {
    CancelToken cancelToken = CancelToken();
    _activeTokens[id] = cancelToken;

    try {
      final response = await _client.getBytes(
        url,
        headers: HttpHeaders.map({
          HttpHeaderName.userAgent: Constants.defaultUserAgent,
          HttpHeaderName.referer: ApiConstants.bilibiliBase,
          HttpHeaderName.cookie: await getCookiesString(),
        }),
        // onReceiveProgress: (curr, total) {
        //   onSendProgress(curr / total);
        // }, //TODO 加了就卡99%
        cancelToken: cancelToken,
      );

      if (response.statusCode == HttpStatus.ok) {
        // 文件内容流
        final file = File(tempPath);
        await file.writeAsBytes(response.body);

        await Future.microtask(() {
          container
              .read(commonLoggerProvider.notifier)
              .addLog('download file success, save path:$tempPath');
        });
      } else {
        await Future.microtask(() {
          container
              .read(commonLoggerProvider.notifier)
              .addLog('download file fail, code:${response.statusCode}');
        });
      }
    } catch (e) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('download file fail, Request error: $e');
      });
    }
    _activeTokens.remove(id);
  }

  static Future<Uint8List?> downloadFile({
    required String url,
    required String savePath,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      container
          .read(commonLoggerProvider.notifier)
          .addLog('start download file $url\n'
              'savePath: $savePath');

      final response = await _client.getBytes(url,
          onReceiveProgress: onReceiveProgress, cancelToken: cancelToken);

      if (response.statusCode == HttpStatus.ok) {
        // 文件内容流
        final file = File(savePath);
        await file.writeAsBytes(response.body);

        await Future.microtask(() {
          container
              .read(commonLoggerProvider.notifier)
              .addLog('download file $url success, save path:$savePath');
        });
        return response.body;
      } else {
        await Future.microtask(() {
          container
              .read(commonLoggerProvider.notifier)
              .addLog('download file $url fail, code:${response.statusCode}');
        });
      }
    } catch (e) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('download file $url fail, Request error: $e');
      });
    }
    return null;
  }

  // 关闭rhttp流
  void cancelRequests(String requestId) {
    final cancelToken = _activeTokens[requestId];
    if (cancelToken != null) {
      cancelToken.cancel();
    }
  }
}

RhttpClient createRhttpClient(
    {ProxyTypeEnum type = ProxyTypeEnum.none,
    String? host,
    String? port,
    String? username,
    String? password}) {
  String proxy = '';
  if (type != ProxyTypeEnum.none) {
    proxy += '${type.name.toLowerCase()}://';

    if (username != null && username.isNotEmpty) {
      proxy += username;
      if (password != null && password.isNotEmpty) {
        proxy += ':$password';
      }
      proxy += '@';
    }

    proxy += '$host:$port';
  }
  print('proxy: $proxy');

  return RhttpClient.createSync(
    settings: ClientSettings(
      timeoutSettings: TimeoutSettings(
        connectTimeout: const Duration(seconds: 5),
      ),
      proxySettings: switch (type) {
        ProxyTypeEnum.none => ProxySettings.noProxy(),
        ProxyTypeEnum.HTTP => ProxySettings.proxy(proxy),
        ProxyTypeEnum.SOCKS4 => ProxySettings.proxy(proxy),
        ProxyTypeEnum.SOCKS5 => ProxySettings.proxy(proxy),
      },
      //   StaticProxy(
      //     url: 'http://localhost:8081',
      //     condition: ProxyCondition.onlyHttps,
      //   ),
      // ]),
    ),
    interceptors: [RhttpInterceptor()],
  );
}

class RhttpInterceptor extends Interceptor {
  // 是否有网
  Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    return Interceptor.next(request
        .addHeader(name: HttpHeaderName.acceptEncoding, value: 'gzip')
        .addHeader(
            name: HttpHeaderName.contentType, value: 'application/json'));
  }

  @override
  Future<InterceptorResult<HttpResponse>> afterResponse(
    HttpResponse response,
  ) async {
    container.read(httpLogsProvider.notifier).addLog(
        'rhttp request: ${response.request.url} , status: ${response.statusCode}');

    response.headers
        .where((header) => header.$1.toLowerCase() == 'set-cookie')
        .forEach((header) async {
      String cookie = header.$2;
      await RhttpUtils.cookieJar.saveFromResponse(
        Uri.parse(ApiConstants.bilibiliBase),
        [Cookie.fromSetCookieValue(cookie)],
      );
    });

    RhttpUtils.cookieString = '';

    return Interceptor.next();
  }

  @override
  Future<InterceptorResult<RhttpException>> onError(
    RhttpException exception,
  ) async {
    if (exception is RhttpStatusCodeException && exception.statusCode == 401) {
      // Log out
    }

    if (exception is RhttpCancelException) {
      // post流取消
    }

    return Interceptor.next();
  }
}

class RefreshTokenInterceptor extends RetryInterceptor {
  final Ref ref;

  RefreshTokenInterceptor(this.ref);

  @override
  int get maxRetries => 1;

  @override
  bool shouldRetry(HttpResponse? response, RhttpException? exception) {
    return exception is RhttpStatusCodeException &&
        (exception.statusCode == 401 || exception.statusCode == 403);
  }

  @override
  Future<HttpRequest?> beforeRetry(
    int attempt,
    HttpRequest request,
    HttpResponse? response,
    RhttpException? exception,
  ) async {
    // ref.read(authProvider.notifier).state = await refresh();
    return null;
  }
}
