import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/enum/download_status_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'download_state.freezed.dart';
part 'download_state.g.dart';

@freezed
@HiveType(typeId: 3)
class DownloadState with _$DownloadState {
  const factory DownloadState({
    @HiveField(0) @Default({}) Map<String, DownloadTask> tasks,
    @HiveField(1) @Default([]) List<String> downloadQueue,
    @HiveField(2) @Default(false) bool isPaused,
  }) = _DownloadState;

  factory DownloadState.fromJson(Map<String, dynamic> json) =>
      _$DownloadStateFromJson(json);
}

@freezed
@HiveType(typeId: 4)
class DownloadTask with _$DownloadTask {
  const factory DownloadTask({
    @HiveField(0) required String id,
    @HiveField(1) required AudioInfo audioInfo,
    @HiveField(2) AudioPlayItem? audioItem,
    @HiveField(3) required DownloadStatusEnum status,
    @HiveField(4) @Default(0.0) double progress,
    @HiveField(5) String? error,
    @HiveField(6) String? localPath,
  }) = _DownloadTask;

  factory DownloadTask.fromJson(Map<String, dynamic> json) =>
      _$DownloadTaskFromJson(json);
}
