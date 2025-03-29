import 'dart:convert';
import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_and_series_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:b_be_bee_app/model/dto/upper/upper_notice_dto.dart';
import 'package:b_be_bee_app/model/dto/video/bili_upper_all_videos_dto.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';

abstract class BiliUpperApi{
  static Future<String> getUpperNotice(String uid) async {
    final response = await RhttpUtils().get(
      ApiConstants.upperNotice,

      query: {
        'mid': uid.toString(),
      },
    );
    return UpperNoticeDto.fromJson(response.bodyToJson).data ?? '';
  }

  static Future<BiliSeasonsAndSeriesDtoItemsLists> getSeasonsAndSeries(String uid) async {
    int currentPage = 1;
    int pageSize = 20;
    bool hasMore = true;
    List<BiliSeasonsList>? seasonsList =[];
    List<BiliSeriesList>? seriesList = [];

    while(hasMore){
      final response = await RhttpUtils().get(
        ApiConstants.getSeasonsAndSeries,
        query: {
          'mid': uid.toString(),
          'page_num': currentPage.toString(),
          'page_size': pageSize.toString()
        },
      );

      final dto = BiliSeasonsAndSeriesDto.fromJson(response.bodyToJson).data?.items_lists ?? BiliSeasonsAndSeriesDtoItemsLists();
      seriesList = [...?seriesList, ...?dto.series_list];
      seasonsList = [...?seasonsList, ...?dto.seasons_list];

      hasMore = ((dto.page?.total??0) - seasonsList.length - seriesList.length) > 0;
    }

    return BiliSeasonsAndSeriesDtoItemsLists(
        seasons_list:seasonsList,
      series_list: seriesList
    );
  }

  static Future<List<AudioInfo>> getUpperAllVideosByUid(String uid) async {
    List<BiliSeasonsSeriesArchives> allVideos = [];
    int currentPage = 1;
    int pageSize = 100;
    bool hasMore = true;

    while (hasMore) {
      final allVideosResponse = await RhttpUtils().get(
        ApiConstants.getAllVideosByUid,
        query: {
          'mid': uid.toString(),
          'keywords': '',
          'pn': currentPage.toString(),
          'ps': pageSize.toString(),
        },
      );

    final biliUpperAllVideosDtoData = BiliUpperAllVideosDto.fromJson(jsonDecode(allVideosResponse.body)).data;
      final archives = biliUpperAllVideosDtoData?.archives;
      final page = biliUpperAllVideosDtoData?.page;

      if (archives != null && archives.isNotEmpty) {
        allVideos.addAll(archives);
      }

      hasMore = pageSize * currentPage < (page?.total ?? 0) ;
      currentPage++;
    }

    return AudioInfo.convertBiliSeasonResponseArchivesToAudioInfoList(
        allVideos
    );
  }

  static Future<List<AudioInfo>> getUpperAllVideosSampleByUid(String uid) async {

    final allVideosResponse = await RhttpUtils().get(
      ApiConstants.getAllVideosByUid,
      query: {
        'mid': uid.toString(),
        'keywords': '',
        'pn': '1',
        'ps': Constants.maxOfPreviewAudios.toString(),
      },
    );

    final biliUpperAllVideosDtoData = BiliUpperAllVideosDto.fromJson(jsonDecode(allVideosResponse.body)).data;
    final archives = biliUpperAllVideosDtoData?.archives;

    return AudioInfo.convertBiliSeasonResponseArchivesToAudioInfoList(
        archives
    );
  }
}