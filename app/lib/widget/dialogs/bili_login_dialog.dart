import 'package:b_be_bee_app/pages/bili/login/my_bili_login_page.dart';
import 'package:flutter/material.dart';

class BiliLoginDialog{
  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const MyBiliLoginPage(),
    );
  }
}