import 'package:flutter/material.dart';

import '../../util/rhttp_utils.dart';

class ProxyTestDialog {
  static Future<void> open(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('检查中...'),
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Text('正在检查...'),
            ],
          ),
        );
      },
    );

    try {
      final response = await RhttpUtils.instance.get('http://www.google.com');

      Navigator.of(context, rootNavigator: true).pop();

      if (response.statusCode == 200) {
        _showResultDialog(context, true);
      } else {
        _showResultDialog(context, false);
      }
    } catch (e) {
      Navigator.of(context, rootNavigator: true).pop();
      _showResultDialog(context, false);
    }
  }

  static void _showResultDialog(BuildContext context, bool isSuccess) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isSuccess ? '测试成功' : '测试失败'),
          content: Row(
            children: [
              Icon(
                isSuccess ? Icons.check_circle : Icons.cancel,
                color: isSuccess ? Colors.green : Colors.red,
              ),
              SizedBox(width: 10),
              Text(isSuccess ? '成功访问 Google 页面' : '无法访问 Google 页面'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Text('确定'),
            ),
          ],
        );
      },
    );
  }
}
