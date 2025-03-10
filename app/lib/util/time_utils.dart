import '../gen/strings.g.dart';

class TimeUtils{
  static String secondsToTimeString(int? seconds) {
    if (seconds == null) return t.utils.toMinute(minute: 0);

    int hours = (seconds ~/ 3600);
    int minutes = (seconds % 3600) ~/ 60;

    if (hours > 0) {
      return t.utils.toHourMinute(hour: hours,minute: minutes);
    } else {
      return t.utils.toMinute(minute: minutes);
    }
  }

  static String durationToTimeString(Duration? duration) {
    if (duration == null || duration.inSeconds <= 0) return  t.utils.toMinute(minute: 0);

    int hours = duration.inHours;
    int minutes = duration.inMinutes % 60;

    if (hours > 0) {
      return t.utils.toHourMinute(hour: hours, minute: minutes);
    } else {
      return t.utils.toMinute(minute: minutes);
    }
  }

  static String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');

    final hours = duration.inHours;
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    if (hours > 0) {
      return '$hours:$minutes:$seconds';
    } else {
      return '$minutes:$seconds';
    }
  }

  static String formatDurationByInt(int time) {
    final duration = Duration(milliseconds: time);
    return formatDuration(duration);
  }

  static String formatDateTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inDays < 7) {
      return t.utils.dayBefore(day: difference.inDays);
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return t.utils.weekBefore(week: weeks);
    } else {
      return t.utils.yyyyMMDD(year: time.year,month: time.month,day: time.day);
    }
  }
}