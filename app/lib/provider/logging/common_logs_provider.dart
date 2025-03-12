import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/model/pojo/log_entry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../util/logs_utils.dart';

final _logger = Logger('common');

/// 放在 ProviderContainer 中
/// container.read(commonLoggerProvider.notifier).addLog(xxx);
final commonLoggerProvider = StateNotifierProvider<CommonLogsController, List<LogEntry>>((ref) {
  return CommonLogsController();
},name: 'commonLoggerProvider');

class CommonLogsController extends StateNotifier<List<LogEntry>> {
  CommonLogsController() : super([]);

  void addLog(String log) {
    _logger.info(log);
    final logEntry = LogEntry(timestamp: DateTime.now(), log: log);
    LogsUtils.writeLogToFile(logEntry);
    state = [
      ...state,
      logEntry,
    ].take(Constants.commonLogsMaxLogs).toList();
  }

  void clear() {
    state = [];
  }
}
