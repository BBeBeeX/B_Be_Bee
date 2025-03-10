import 'dart:io' as dart_http;
import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/api_constants.dart';
import '../controller/settings_controller.dart';
import '../../../util/rhttp_utils.dart';
import '../model/enum/audio_source_type_enum.dart';

class WebviewPage extends ConsumerStatefulWidget {
  final AudioInfo audioInfo;

  const WebviewPage({super.key,required this.audioInfo});

  @override
  ConsumerState<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends ConsumerState<WebviewPage> {
  bool _isLoading = true;

  @override
  void initState() {
    if(widget.audioInfo.audioSourceType == AudioSourceTypeEnum.bili_music ||
        widget.audioInfo.audioSourceType == AudioSourceTypeEnum.bili){

      Uri uri = Uri.parse(ApiConstants.bilibiliBase);

      RhttpUtils.cookieJar.loadForRequest(uri).then((cookies) async {
        for (var cookie in cookies) {
          print("Cookie: ${cookie.name} = ${cookie.value}");
          CookieManager.instance().setCookie(url: WebUri.uri(uri), name: cookie.name, value: cookie.value);
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.audioInfo.title),
    centerTitle: true,
    ),
    body: Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(
              (widget.audioInfo.audioSourceType == AudioSourceTypeEnum.bili_music ||
                  widget.audioInfo.audioSourceType == AudioSourceTypeEnum.bili) ?'${ApiConstants.bilibiliBase}/video/${widget.audioInfo.onlineId}/'
                  :''
          ))),
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

            print("url: ${url}");

            List<Cookie> cookies = await CookieManager.instance().getCookies(url: url!);
            for (var cookie in cookies) {
              print("current-Cookie: ${cookie.name} = ${cookie.value}");
            }

          },

        ),
        if (_isLoading)
          LoadingWidget()
      ],
      )
    );
  }

}