import 'dart:io';

import 'package:b_be_bee_app/model/pojo/log_entry.dart';
import 'package:flutter/foundation.dart';

import 'native/channel/path_proxy_utils.dart';
import 'native/path_utils.dart';

class LogsUtils{
  static Future<void> writeLogToFile(LogEntry logEntry) async {
    try {
      final directory = await _getLogDirectory();
      final logFile = File('${directory.path}/${_getTodayLogFileName()}');
      final formattedLog = '[${logEntry.timestamp.toIso8601String()}] ${logEntry.log}\n';

      await logFile.writeAsString(formattedLog, mode: FileMode.append);
    } catch (e) {
      if (kDebugMode) {
        print('Failed to write log to file: $e');
      }
    }
  }

  static Future<Directory> _getLogDirectory() async {
    final logDir = Directory(await PathProxyUtils.getLogsDirectory());
    if (!await logDir.exists()) {
      await logDir.create(recursive: true);
    }
    return logDir;
  }

  static String _getTodayLogFileName() {
    final today = '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';
    return 'log_$today.txt';
  }
}