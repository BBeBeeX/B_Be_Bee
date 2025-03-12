import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';

import '../loading_widget.dart';

class UpdateAskDialog {

  static Future<void> open() {
    return showDialog(
      context: Routerino.context,
      builder: (context) => Dialog(
        child: SizedBox(
          width: 300,
          height: 200,
          child: AlertDialog(
            title: const Text('等待'),
            content: LoadingWidget(),
          ),
        ),
      ),
    );
  }

}