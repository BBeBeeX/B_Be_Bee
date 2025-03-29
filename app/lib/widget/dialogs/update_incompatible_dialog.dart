import 'package:flutter/material.dart';


//TODO i18n
class UpdateIncompatibleDialog {

  static Future<void> open(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('更新失败'),
        content: Text('暂无适配的安装包'),
      ),
    );
  }

}