import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/model/enum/log_level.dart';
import 'package:b_be_bee_app/model/pojo/log_entry.dart';
import 'package:b_be_bee_app/util/logs_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final _logger = Logger('HTTP');


/// 放在 ProviderContainer 中
/// container.read(httpLogsProvider.notifier).addLog(xxx);
final httpLogsProvider = StateNotifierProvider<HttpLogsController, List<LogEntry>>((ref) {
  return HttpLogsController();
},name: 'httpLogsProvider');

class HttpLogsController extends StateNotifier<List<LogEntry>> {

  HttpLogsController() : super([]);


  void addLog(String log) {
    _addLog(log, LogLevel.info);
  }

  void addWarn(String log) {
    _addLog(log, LogLevel.warning);
  }

  void _addLog(String log, LogLevel level) {
    final timestamp = DateTime.now();

    switch (level) {
      case LogLevel.info:
        _logger.info(log);
        break;
      case LogLevel.warning:
        _logger.warning(log);
        break;
    }

    final newLog = LogEntry(timestamp: timestamp, log: log);
    LogsUtils.writeLogToFile(newLog);
    state.add(newLog);

    if (state.length > Constants.httpLogsMaxLogs) {
      state.removeAt(0);
    }

    state = List.from(state);
  }

  void clear() {
    state = [];
  }

  String describeState(List<LogEntry> state) => '${state.length} logs';
}



