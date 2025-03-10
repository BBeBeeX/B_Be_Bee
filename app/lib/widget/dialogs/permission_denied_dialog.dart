import 'dart:io';

import 'package:b_be_bee_app/util/native/permission_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../gen/strings.g.dart';


class PermissionDeniedDialog {

  static Future<void> open(BuildContext context, WidgetRef ref) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.utils.storagePermissionDenied),
        content: Text(t.utils.needPermission),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              // 重新请求权限
              permissionStatus = await Permission.storage.request();
              if (Platform.isAndroid && permissionStatus == PermissionStatus.denied) {
                permissionStatus = await Permission.manageExternalStorage.request();
              }
            },
            child: Text(t.general.retry),
          ),
        ],
      ),
    );
  }

}