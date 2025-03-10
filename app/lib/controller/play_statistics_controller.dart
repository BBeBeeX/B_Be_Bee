import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/dao/play_statistics.dart';

class PlayStatisticsState {
  final Map<String, PlayStatistics> stats;
  
  const PlayStatisticsState({
    this.stats = const {},
  });

  PlayStatisticsState copyWith({
    Map<String, PlayStatistics>? stats,
  }) {
    return PlayStatisticsState(
      stats: stats ?? this.stats,
    );
  }
}

final playStatisticsProvider = StateNotifierProvider<PlayStatisticsController, PlayStatisticsState>((ref) {
  return PlayStatisticsController();
},name: 'playStatisticsProvider');

class PlayStatisticsController extends StateNotifier<PlayStatisticsState> {

  PlayStatisticsController() : super(const PlayStatisticsState()) {
    _init();
  }

  Future<void> _init() async {
    state = state.copyWith(stats: HiveHelper.getStatistics());
  }

  Future<void> recordPlay(String id, Duration duration) async {
    final existing = state.stats[id];
    final newStats = (existing ?? PlayStatistics(
      id: id,
      playTimes: [],
      durations: [],
    )).addPlay(duration);

    await HiveHelper.setStatistics(newStats);
    state = state.copyWith(
      stats: {...state.stats, id: newStats},
    );
  }

  PlayStatistics? getStats(String id) {
    return state.stats[id];
  }

  int getPlayCount(String id) {
    return state.stats[id]?.playCount ?? 0;
  }

  Duration getTotalDuration(String id) {
    return state.stats[id]?.totalDuration ?? Duration.zero;
  }

  DateTime? getLastPlayTime(String id) {
    return state.stats[id]?.lastPlayTime;
  }

  Future<void> clearStats(String id) async {
    await HiveHelper.clearStatisticsById(id);

    final newStats = Map<String, PlayStatistics>.from(state.stats);
    newStats.remove(id);
    state = state.copyWith(stats: newStats);
  }

  Future<void> clearAllStats() async {
    await HiveHelper.clearStatistics();
    state = state.copyWith(stats: {});
  }

  Duration getTotalDurationByIdList(List<String> ids) {
    Duration totalDuration = Duration.zero;

    for (String id in ids) {
      final stats = state.stats[id];
      if (stats != null) {
        totalDuration += stats.totalDuration;
      }
    }

    return totalDuration;
  }

  DateTime? getLastPlayTimeByIdList(List<String> ids) {
    DateTime? latestPlayTime;

    for (String id in ids) {
      final stats = state.stats[id];
      if (stats != null) {
        if (latestPlayTime == null || (stats.lastPlayTime != null && stats.lastPlayTime!.isAfter(latestPlayTime))) {
          latestPlayTime = stats.lastPlayTime;
        }
      }
    }

    return latestPlayTime;
  }

  Map<String, dynamic> getTotalDurationAndLastPlayTime(List<String> ids) {
    Duration totalDuration = Duration.zero;
    DateTime? latestPlayTime;

    for (String id in ids) {
      final stats = state.stats[id];
      if (stats != null) {
        totalDuration += stats.totalDuration;

        if (latestPlayTime == null || (stats.lastPlayTime != null && stats.lastPlayTime!.isAfter(latestPlayTime))) {
          latestPlayTime = stats.lastPlayTime;
        }
      }
    }

    return {
      'totalDuration': totalDuration,
      'lastPlayTime': latestPlayTime,
    };
  }
} 