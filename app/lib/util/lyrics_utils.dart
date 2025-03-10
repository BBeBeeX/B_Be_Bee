import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/api/bili/bili_video_play_api.dart';
import '../controller/audio_player_page_controller.dart';
import '../controller/lyrics_controller.dart';
import '../model/dao/audio_info.dart';
import '../model/dto/lyric_line.dart';
import '../model/dto/subtitle/bili_subtitle_dto.dart';
import '../model/enum/audio_source_type_enum.dart';
import 'hive_helper.dart';

class LyricsUtils {
  static Future<String?> getAudioLyrics(Ref ref,AudioInfo audioInfo)async {

    if(audioInfo.lyrics != null && audioInfo.lyrics!.isNotEmpty){
      return audioInfo.lyrics;
    }

    if(audioInfo.audioSourceType == AudioSourceTypeEnum.bili_music ||
        audioInfo.audioSourceType == AudioSourceTypeEnum.bili ){

      return await _getAudioLyricsBili(audioInfo);

    }

    return null;
  }

  static Future<String?> _getAudioLyricsBili(AudioInfo audioInfo) async {
    final lyrics = await BiliVideoPlayApi.getBiliLyrics(audioInfo.onlineId, audioInfo.biliCid);
    if(lyrics == null || lyrics.isEmpty){
      return null;
    }
    audioInfo = audioInfo.copyWith(
        lyrics: lyrics
    );

    if(audioInfo.audioCurrentType == AudioSourceTypeEnum.local){
      await HiveHelper.saveAudioInfo(audioInfo);
    }
    return lyrics;
  }

  static List<LyricLine> parseWebVTT(String webvtt) {
    final List<LyricLine> lyrics = [];
    final lines = webvtt.split('\n');
    bool isHeader = true;

    LyricLine? currentLyric;

    for (var i = 0; i < lines.length; i++) {
      final line = lines[i].trim();

      if (line.isEmpty || (isHeader && line.toUpperCase().contains('WEBVTT'))) {
        isHeader = false;
        continue;
      }

      if (line.contains('-->')) {
        final timings = line.split('-->');
        if (timings.length == 2) {
          final startTime = _parseTimestamp(timings[0].trim());
          final endTime = _parseTimestamp(timings[1].trim());

          if (startTime != null && endTime != null) {
            currentLyric = LyricLine(
              startTime: startTime,
              endTime: endTime,
              translations: {},
            );
            lyrics.add(currentLyric);
          }
        }
      } else if (currentLyric != null && line.isNotEmpty) {

        final regex = RegExp(r'^\[(\w+)\]\s*(.+)');
        final match = regex.firstMatch(line);
        if (match != null) {
          final lang = match.group(1) ?? '';  // 语言代码，如 en、zh、es
          final text = match.group(2) ?? '';  // 翻译内容
          currentLyric.translations[lang] = text;
        }
      }
    }

    return lyrics;
  }

  static Duration? _parseTimestamp(String timestamp) {
    try {
      final parts = timestamp.split(':');
      if (parts.length < 2) return null;

      int hours = 0;
      int minutes = 0;
      int seconds = 0;
      int milliseconds = 0;

      if (parts.length == 3) {
        hours = int.parse(parts[0]);
        minutes = int.parse(parts[1]);
        final secondParts = parts[2].split('.');
        seconds = int.parse(secondParts[0]);
        if (secondParts.length > 1) {
          milliseconds = int.parse(secondParts[1]);
        }
      } else {
        minutes = int.parse(parts[0]);
        final secondParts = parts[1].split('.');
        seconds = int.parse(secondParts[0]);
        if (secondParts.length > 1) {
          milliseconds = int.parse(secondParts[1]);
        }
      }

      return Duration(
        hours: hours,
        minutes: minutes,
        seconds: seconds,
        milliseconds: milliseconds,
      );
    } catch (e) {
      return null;
    }
  }

}