

import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/model/dto/subtitle/bili_subtitle_dto.dart';
import 'package:b_be_bee_app/model/dto/video/audio_info_response.dart';
import 'package:b_be_bee_app/model/dto/video/audio_pagelist.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_info.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/dto/video/video_play.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:b_be_bee_app/util/subtitle_utils.dart';


class BiliVideoPlayApi {

  static Future<VideoPlayResponse> _requestVideoPlay(
      {required String bvid,
      required int cid,
      required bool isVip}) async {
    var response = await RhttpUtils().get(ApiConstants.videoPlay,
        query: {
          // 'avid':
          'bvid': bvid,
          'cid': cid.toString(),
          'qn': '127',  // 视频清晰度
          // 'qn': isVip? '127':'80',  // 视频清晰度
          'fnval': '4048',
          'fnver': '0',
          'fourk': '1',
          // 'session':
          'platform': 'pc',
          // 'high_quality':
        },);

    return VideoPlayResponse.fromJson(response.bodyToJson);
  }

  static Future<AudioPlayInfo> getVideoPlay({
    required String bvid,
    required int cid,
    required bool isVip,
  }) async {
    var response =
        await _requestVideoPlay(bvid: bvid, cid: cid,isVip:isVip );
    if (response.code != 0) {
      throw 'getVideoPlay: code:${response.code}, message:${response.message}';
    }
    if (response.data == null ||
        response.data!.acceptQuality == null ||
        response.data!.acceptDescription == null) {
      return AudioPlayInfo();
    }

    //如果有dolby的话
    for (var i in response.data!.dash?.dolby?.audio ?? <VideoOrAudioRaw>[]) {
      response.data!.dash?.audio?.add(i);
    }
    //如果有flac的话
    if (response.data!.dash?.flac?.audio != null) {
      response.data!.dash?.audio?.add(response.data!.dash!.flac!.audio!);
    }
    //获取音频
    List<AudioPlayItem> audios = [];
    for (var i in response.data!.dash?.audio ?? <VideoOrAudioRaw>[]) {
      List<String> urls = [];
      if (i.baseUrl != null) {
        urls.add(i.baseUrl!);
      }
      if (i.backupUrl != null) {
        urls.addAll(i.backupUrl!);
      }
      audios.add(AudioPlayItem.fromStream(
        urls: urls,
        quality: AudioQualityCode.fromCode(i.id ?? -1),
        bandWidth: i.bandwidth ?? 0,
        codecs: i.codecs ?? '',
      ));
    }

    List<AudioQuality> supportAudioQualities = [];
    //获取支持的音质
    for (var i in audios) {
      supportAudioQualities.add(i.quality);
    }

    List<AudioPlayItem> prioritizedAudioList = [];
    if (audios.isNotEmpty) {
      prioritizedAudioList = List<AudioPlayItem>.from(audios)
        ..sort((a, b) {
          // 首先按音质排序，优先 Hi-Res，其次是 Dolby
          if (a.quality == AudioQuality.hiRes) return -1;
          if (b.quality == AudioQuality.hiRes) return 1;
          if (a.quality == AudioQuality.dolby) return -1;
          if (b.quality == AudioQuality.dolby) return 1;

          // 如果音质相同，按码率降序排序（bandWidth 高的优先）
          return b.bandWidth.compareTo(a.bandWidth);
        });
    }

    return AudioPlayInfo.fromBili(
        supportAudioQualities: supportAudioQualities,
        audios: prioritizedAudioList,
    );
  }

  static Future<AudioInfoResponseData> getVideoInfo(String bvid) async {
    final audioInfoResponse = await RhttpUtils().get(
        ApiConstants.videoInfo,
        query: {'bvid': bvid}
    );

    return AudioInfoResponse.fromJson(audioInfoResponse.bodyToJson).data ?? AudioInfoResponseData();
  }

  static Future<List<AudioPagelistData>> getAudioPagelist(String bvid) async {
    final audioPagelistResponse = await RhttpUtils().get(
        ApiConstants.audioPagelist,
        query: {'bvid': bvid}
    );

    return AudioPagelist.fromJson(audioPagelistResponse.bodyToJson).data ?? [];
  }

  static Future<String?> getBiliLyrics(String bvid,int? cid) async {
    if(cid == null || cid == 0){
      cid = (await getVideoInfo(bvid)).cid;
    }

    var res = await RhttpUtils().get(ApiConstants.getSubtitle,
        query: {
      'cid': cid.toString(),
      'bvid': bvid,
    });
    try {
      if (res.bodyToJson['code'] == 0) {
        final biliSubtitleDto = BiliSubtitleDto.fromJson(res.bodyToJson['data']);
        if (biliSubtitleDto.subtitles!.isNotEmpty) {
          final subtitles = biliSubtitleDto.subtitles;
          await getDanmaku(subtitles!);
          if(subtitles.isNotEmpty){
            final a = await SubtitleUtils.biliConvertToWebVTT(subtitles);
            return a;

          }
        }
      }
    } catch (err) {
      return null;
    }
    return null;
  }

  static Future<String?> getDanmaku(List<SubTitlteItemModel> subtitles) async {
    if (subtitles.isNotEmpty) {

      for (var i in subtitles) {
        // final Map<String, dynamic> res = await getSubtitleContent(
        //   i.subtitleUrl,
        // );
        final List list = await getSubtitleContent(
          i.subtitleUrl,
        );
        i.body = list;
      }
    }
    return null;
  }

  static Future<List> getSubtitleContent(url) async {
    var res = await RhttpUtils().get('https:$url');
    // final String content = await SubtitleUtils.biliConvertToWebVTT(res.bodyToJson['body']);
    final List body = res.bodyToJson['body'];
    return body;
  }

}

///视频流格式标识
enum _Fnval { dash, hdr, fourK, dolby, dolbyVision, eightK, av1 }

///视频流格式标识代码
extension FnvalValue on _Fnval {
  static final List<int> _codeList = [16, 64, 128, 256, 512, 1024, 2048];
  int get code => _codeList[index];
  static const int all = 4048; //_codeList所有值之或
}
