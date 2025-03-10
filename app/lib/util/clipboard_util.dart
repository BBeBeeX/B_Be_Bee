import 'package:b_be_bee_app/util/share_utils.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../config/init.dart';
import '../gen/strings.g.dart';
import '../model/dto/share/share_dto.dart';
import '../provider/logging/common_logs_provider.dart';

class ClipboardUtil{
  static Future<String?> _getClipboardContent() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    return data?.text;
  }


  static Future<void> _showClipboardContent(BuildContext context, String content) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(t.utils.clipboardText),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(t.general.close),
            ),
          ],
        );
      },
    );
  }

  static Future<void> getClipboard(BuildContext context, WidgetRef ref) async{
    String? clipboardContent = await _getClipboardContent();
    if (clipboardContent != null) {
      try{
        final shareDto = ShareDto.fromBase64(clipboardContent);
        await ShareUtils.analyzeShareDto(context,ref,shareDto);
      }catch(e) {
        await ToastUtil.show(t.homePage.textFormatException);
        await Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog(
              'clipboard error: ${e.toString()}');
        });
        await _showClipboardContent(context, clipboardContent);
      }
    } else {
      await ToastUtil.show(t.homePage.clipboardNull);
    }
  }
}