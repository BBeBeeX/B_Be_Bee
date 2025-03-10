import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tvProvider = Provider<bool>((_) => throw Exception('tvProvider not initialized'), name: 'tvProvider');

Future<bool> checkIfTv() async {
  if (checkPlatform([TargetPlatform.android])) {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.systemFeatures.contains('android.software.leanback');
  } else {
    return false;
  }
}
