import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../pages/bili/login/my_bili_login_page.dart';
import '../bili_login_dialog_widget.dart';

class BiliLoginDialog{
  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const MyBiliLoginPage(),
    );
  }
}