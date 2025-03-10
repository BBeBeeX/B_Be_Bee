import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:routerino/routerino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../gen/strings.g.dart';
import '../../model/dao/audio_info.dart';
import '../../pages/webview_page.dart';

 void  openInBilibili(BuildContext context,AudioInfo audioInfo) async {

  Uri url = Uri.parse('bilibili://video/${audioInfo.onlineId}');

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    await ToastUtil.show( t.utils.noBiliApp );
    await context.push(() => WebviewPage(audioInfo: audioInfo,));
  }
}

