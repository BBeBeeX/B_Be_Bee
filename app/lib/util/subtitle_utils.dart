import 'dart:isolate';

import 'package:b_be_bee_app/model/dto/lyric_line.dart';
import 'package:b_be_bee_app/model/dto/subtitle/bili_subtitle_dto.dart';
import 'package:b_be_bee_app/util/string_utils.dart';
import 'package:ffmpeg_helper/ffmpeg_helper.dart';

class SubtitleUtils{

  static Future<String> biliConvertToWebVTT(List<SubTitlteItemModel> jsonData) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_biliConvertToWebVTTIsolate, receivePort.sendPort);

    final sendPort = await receivePort.first as SendPort;
    final response = ReceivePort();
    sendPort.send([jsonData, response.sendPort]);

    return await response.first as String;
  }

  static void _biliConvertToWebVTTIsolate(SendPort sendPort) async {
    final port = ReceivePort();
    sendPort.send(port.sendPort);

    await for (final message in port) {
      final List jsonData = message[0];
      final SendPort replyTo = message[1];

      List<LyricLine> lyricLines = [];

      for (var item in jsonData) {
        if (item.body != null) {
          for (var subtitle in item.body!) {
            var startTime = Duration(seconds: (subtitle['from'] as num).floor());
            var endTime = Duration(seconds: (subtitle['to'] as num).floor());

            var translations = {
              item.lan.toString(): subtitle['content']?.toString() ?? '',
            };

            bool found = false;
            for (var lyricLine in lyricLines) {
              if (lyricLine.startTime == startTime && lyricLine.endTime == endTime) {
                lyricLine.translations.addAll(translations);
                found = true;
                break;
              }
            }

            if (!found) {
              lyricLines.add(LyricLine(
                startTime: startTime,
                endTime: endTime,
                translations: translations,
              ));
            }
          }
        }
      }
      lyricLines.sort((a, b) => a.startTime.compareTo(b.startTime));


      String webVTTContent = 'WEBVTT FILE\n\n';
      int chunkSize = 100; // 每次处理100条数据
      int totalChunks = (lyricLines.length / chunkSize).ceil();

      for (int chunk = 0; chunk < totalChunks; chunk++) {
        int start = chunk * chunkSize;
        int end = start + chunkSize;
        if (end > lyricLines.length) end = lyricLines.length;

        for (int i = start; i < end; i++) {
          final item = lyricLines[i];
          double from = double.parse(item.startTime.toSeconds());
          double to = double.parse(item.endTime.toSeconds());
          int sid = chunk*chunkSize+i;

          webVTTContent += '$sid\n';
          webVTTContent += '${StringUtils.formatTime(from)} --> ${StringUtils.formatTime(to)}\n';

          lyricLines[i].translations.forEach((key, value) {
            webVTTContent += '[$key] $value\n';
          });
          webVTTContent += '\n';
        }
      }

      replyTo.send(webVTTContent);
    }
  }


}