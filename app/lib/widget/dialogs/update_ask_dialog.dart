
import 'package:b_be_bee_app/util/update_utils.dart';
import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';


class UpdateAskDialog {


  static Future<void> open(BuildContext context,String title,String content,) {
    print('open UpdateAskDialog');
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () async {
              context.pop();
              await UpdateUtils.onlineUpdate(false);
            },
            child: Text('安装'),
          ),
          TextButton(
            onPressed: () async {
              context.pop();
            },
            child: Text('关闭'),
          ),
        ],
      ),
    );
  }

}