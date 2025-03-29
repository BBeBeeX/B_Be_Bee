import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/scan_qr_page.dart';
import 'package:b_be_bee_app/util/clipboard_util.dart';
import 'package:b_be_bee_app/util/share_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class LoadSharePopupMenuButtonWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.add),
      onSelected: (value) async {
        if (value == 'scan') {
          await context.push(() => ScanQrPage(
                onScanComplete: ShareUtils.analyzeShareDto,
              ));
        } else if (value == 'clipboard') {
          await ClipboardUtil.getClipboard(context, ref);
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'scan',
            child: ListTile(
              leading: const Icon(Icons.qr_code_scanner),
              title: Text(t.homePage.scanQr),
            ),
          ),
          PopupMenuItem<String>(
            value: 'clipboard',
            child: ListTile(
              leading: const Icon(Icons.paste),
              title: Text(t.homePage.clipboard),
            ),
          ),
        ];
      },
    );
  }
}
