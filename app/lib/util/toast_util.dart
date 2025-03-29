
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';
import 'package:toastification/toastification.dart';


class ToastUtil {

  static Future<void> show(
      String label,{
    String? notShow = '' ,
        Duration duration = const Duration(seconds: 4),
  }) async {


    await Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog(label + notShow!);
    });

    toastification.show(
      overlayState: Routerino.navigatorKey.currentState?.overlay,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      autoCloseDuration: duration,
      title: Text(label),
      // description: RichText(text: const TextSpan(text: 'This is a sample toast message. ')),
      alignment: checkPlatformIsDesktop() ?Alignment.topRight: Alignment.bottomCenter,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 500),
      // icon: const Icon(Icons.check),
      showIcon: true,
      primaryColor: Colors.green,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
          spreadRadius: 0,
        )
      ],
      showProgressBar: false,
      closeOnClick: true,
      pauseOnHover: true,
      dragToClose: true,
      applyBlurEffect: true,
    );
  }
}