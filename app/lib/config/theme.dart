import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';

final borderRadius = BorderRadius.circular(5);
double get desktopPaddingFix => checkPlatformIsDesktop() ? 8 : 0;

final green = Color.fromARGB(255, 53, 204, 106);


