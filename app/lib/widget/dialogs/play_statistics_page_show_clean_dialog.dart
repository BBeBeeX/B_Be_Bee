import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';

import '../../controller/play_statistics_controller.dart';

class PlayStaticsPageShowCleanDialog {
  static Future<void> open(PlayStatisticsController controller) {
    return showDialog(
      context: Routerino.context,
      builder: (context) => AlertDialog(
        title: const Text('清除所有统计'),
        content: const Text('确定要清除所有播放统计数据吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              controller.clearAllStats();
              Navigator.of(context).pop();
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }
}
