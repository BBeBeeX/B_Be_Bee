import 'dart:io';

import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:routerino/routerino.dart';

PermissionStatus? permissionStatus;

Future<void> getFilePermission() async{
  if(checkPlatformIsDesktop())return;
  BuildContext context = Routerino.navigatorKey.currentContext!;

  permissionStatus = await Permission.storage.request();

  await Future.microtask(() {
    container.read(commonLoggerProvider.notifier).addLog('_permissionStatus1: $permissionStatus');
  });

  if (Platform.isAndroid &&  permissionStatus == PermissionStatus.denied) {
    permissionStatus = await Permission.manageExternalStorage.request();
    await Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog('_permissionStatus2: $permissionStatus');
    });
  }

  if (permissionStatus == PermissionStatus.granted) {

  } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
    await openAppSettings();
  }else if (permissionStatus == PermissionStatus.denied) {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.utils.storagePermissionDenied),
        content: Text(t.utils.needPermission),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
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

