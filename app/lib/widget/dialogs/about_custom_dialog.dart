import 'package:b_be_bee_app/widget/about_widget.dart';
import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';

class AboutCustomDialog {
  static Future<void> open() {
    return showDialog(
      context: Routerino.context,
      builder: (context) => AlertDialog(
        content: SizedBox(
          height: 400,
          child: AboutWidget(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('关闭'),
          ),
        ],
      ),
    );
  }
}
