import 'dart:async';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:convert';

class WebviewUtils {
  final InAppWebViewController webViewController;

  WebviewUtils({required this.webViewController});



  Future<String?> getLocalStorageItem(String key) async {
    try {
      final result = await webViewController.evaluateJavascript(
        source: "localStorage.getItem('$key')"
      );

      return result?.toString();
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, String?>> getLocalStorageItems(List<String> keys) async {
    Map<String, String?> result = {};

    try {
      for (final key in keys) {
        result[key] = await getLocalStorageItem(key);
      }
      return result;
    } catch (e) {
      return result;
    }
  }

  Future<Map<String, String>> getAllLocalStorage() async {
    try {
      final result = await webViewController.evaluateJavascript(
        source: '''
        (function() {
          const items = {};
          for (let i = 0; i < localStorage.length; i++) {
            const key = localStorage.key(i);
            items[key] = localStorage.getItem(key);
          }
          return JSON.stringify(items);
        })()
        '''
      );

      if (result != null) {
        final Map<String, dynamic> parsed = Map<String, dynamic>.from(
          jsonDecode(result.toString())
        );

        return parsed.map((key, value) => MapEntry(key, value.toString()));
      }

      return {};
    } catch (e) {
      return {};
    }
  }


  static Future<Map<String, String?>> fetchLocalStorageFromUrl({
    required String url,
    List<String>? specificKeys,
    bool headless = true,
    int timeout = 30,
  }) async {
    HeadlessInAppWebView? headlessWebView;

    try {
      final completer = Completer<Map<String, String?>>();

      headlessWebView = HeadlessInAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(url)),
        onWebViewCreated: (controller) async {
          final utils = WebviewUtils(webViewController: controller);

          await Future.delayed(const Duration(seconds: 2));

          Map<String, String?> result;
          if (specificKeys != null) {
            result = await utils.getLocalStorageItems(specificKeys);
          } else {
            result = await utils.getAllLocalStorage();
          }

          completer.complete(result);
        },
        onLoadStop: (controller, url) async {
          await Future.delayed(const Duration(seconds: 1));

          if (!completer.isCompleted) {
            final utils = WebviewUtils(webViewController: controller);

            Map<String, String?> result;
            if (specificKeys != null) {
              result = await utils.getLocalStorageItems(specificKeys);
            } else {
              result = await utils.getAllLocalStorage();
            }

            completer.complete(result);
          }
        },
      );

      await headlessWebView.run();

      Timer(Duration(seconds: timeout), () {
        if (!completer.isCompleted) {
          completer.complete({});
        }
      });

      final result = await completer.future;

      await headlessWebView.dispose();

      return result;
    } catch (e) {
      await headlessWebView?.dispose();
      return {};
    }
  }

  static Future<String?> getItemFromUrl({
    required String url,
    required String key,
    int timeout = 30,
  }) async {
    final result = await fetchLocalStorageFromUrl(
      url: url,
      specificKeys: [key],
      timeout: timeout,
    );
    
    return result[key];
  }

  static Future<String?> executeJavaScriptOnUrl({
    required String url,
    required String script,
    int timeout = 30,
  }) async {
    HeadlessInAppWebView? headlessWebView;
    
    try {
      final completer = Completer<String?>();
      
      headlessWebView = HeadlessInAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(url)),
        onLoadStop: (controller, url) async {
          await Future.delayed(const Duration(seconds: 2));
          
          if (!completer.isCompleted) {
            try {
              final result = await controller.evaluateJavascript(source: script);
              completer.complete(result?.toString());
            } catch (e) {
              completer.complete(null);
            }
          }
        },
      );
      
      await headlessWebView.run();
      
      Timer(Duration(seconds: timeout), () {
        if (!completer.isCompleted) {
          completer.complete(null);
        }
      });
      
      final result = await completer.future;
      
      await headlessWebView.dispose();
      
      return result;
    } catch (e) {
      await headlessWebView?.dispose();
      return null;
    }
  }

}