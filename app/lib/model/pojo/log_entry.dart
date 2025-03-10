// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'log_entry.freezed.dart';
// part 'log_entry.g.dart';
//
// @freezed
// class LogEntry with _$LogEntry {
//   const factory LogEntry({
//     required DateTime timestamp,
//     required String log,
// }) = _LogEntry;
//
//   factory LogEntry.fromJson(Map<String, dynamic> json) => _$LogEntryFromJson(json);
// }


class LogEntry  {
  final DateTime timestamp;
  final String log;

  LogEntry({
    required this.timestamp,
    required this.log,
  }) ;
}


