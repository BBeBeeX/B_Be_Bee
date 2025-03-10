import 'package:hive_ce/hive.dart';

part 'play_statistics.g.dart';

@HiveType(typeId: 17)
class PlayStatistics extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final List<DateTime> playTimes;

  @HiveField(2)
  final List<Duration> durations;

  PlayStatistics({
    required this.id,
    required this.playTimes,
    required this.durations,
  });

  int get playCount => playTimes.length;

  Duration get totalDuration {
    return durations.fold(
      Duration.zero,
      (total, duration) => total + duration,
    );
  }

  DateTime? get lastPlayTime {
    return playTimes.isEmpty ? null : playTimes.last;
  }

  PlayStatistics addPlay(Duration duration) {
    return PlayStatistics(
      id: id,
      playTimes: [...playTimes, DateTime.now()],
      durations: [...durations, duration],
    );
  }
} 