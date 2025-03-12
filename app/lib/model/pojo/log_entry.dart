

class LogEntry  {
  final DateTime timestamp;
  final String log;

  LogEntry({
    required this.timestamp,
    required this.log,
  }) ;

  @override
  String toString() {
    return 'LogEntry(timestamp: ${timestamp.toIso8601String()}, log: "$log")';
  }
}


