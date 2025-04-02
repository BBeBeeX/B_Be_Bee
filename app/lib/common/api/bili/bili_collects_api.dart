import 'package:b_be_bee_app/common/api/bili/bili_user_api.dart';
import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_data_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_info.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_list_all_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_resource.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_upper_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/created_list.dart';
import 'package:b_be_bee_app/model/dto/collects/created_list_all.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_season_response.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_series_response_dto.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';

abstract class BiliCollectsApi {
  //获取当前用户创建的所有收藏夹信息
  static Future<List<CollectsDataDto>> getAllCreatedCollects(
      String userId) async {
    int currentPage = 1;
    bool hasMore = true;
    List<CollectsDataDto> allCollects = [];

    while (hasMore) {
      final createdList = await RhttpUtils.instance.get(
        ApiConstants.createdList,
        query: {
          'up_mid': userId,
          'ps': '20',
          'pn': '$currentPage',
        },
      );

      final data = CreatedList.fromJson(createdList.bodyToJson).data;
      if (data != null && data.list != null && data.list!.isNotEmpty) {
        allCollects.addAll(data.list!);
        hasMore = data.hasMore ?? false;
        currentPage++;
      } else {
        hasMore = false;
      }
    }

    return allCollects;
  }

  //获取当前用户创建的所有收藏夹信息
  static Future<CollectsListAllDto> getAllCreatedAllCollects(
      String userId) async {
    // final mid = await CookieUtils.getUserId();

    final createdListAll = await RhttpUtils.instance
        .get(ApiConstants.createdListAll, query: {'up_mid': userId});

    return CreatedListAll.fromJson(createdListAll.bodyToJson).data ??
        CollectsListAllDto(count: 0);
  }

  //获取收藏夹封面信息
  static Future<CollectsDataDto> getCollectsInfo(int collectId) async {
    final collectsInfo = await RhttpUtils.instance.get(
        ApiConstants.resourceInfo,
        query: {'media_id': collectId.toString()});
    return ResponseCollectsInfo.fromJson(collectsInfo.bodyToJson).data ??
        CollectsDataDto(cover: Constants.bili_video_default_cover);
  }

  //获取收藏夹内容明细
  static Future<CollectPlaylist> getAllCollectsResource(int mid) async {
    List<AudioInfo> allMedias = [];
    CollectsDataDto collectsResourceDataInfo = CollectsDataDto();
    int pn = 1;
    bool hasMore = true;

    while (hasMore) {
      final collectsResourceData = await _getCollectsResource(mid, pn);

      allMedias.addAll(AudioInfo.convertBiliMediaListToAudioInfoList(
          collectsResourceData.medias));

      hasMore = collectsResourceData.has_more ?? false;

      if (hasMore) {
        pn++;
      } else {
        collectsResourceDataInfo =
            collectsResourceData.info ?? CollectsDataDto();
      }
    }

    return CollectPlaylist(
        id: 'bili_collect_${collectsResourceDataInfo.id}',
        title: '${collectsResourceDataInfo.title}',
        cover: '${collectsResourceDataInfo.cover}',
        songs: allMedias,
        songIds: allMedias.map((media) => media.id).toList(),
        upper: Upper(
            id: collectsResourceDataInfo.upper?.mid.toString() ?? '0',
            name: collectsResourceDataInfo.upper?.name.toString() ?? '',
            face: collectsResourceDataInfo.upper?.face.toString() ?? ''),
        createTime: DateTime.now().second,
        collectCurrentType: CollectTypeEnum.biliCollect,
        collectSourceType: CollectTypeEnum.biliCollect,
        onlineId: collectsResourceDataInfo.id?.toString());
  }

  static Future<CollectsResourceData> _getCollectsResource(
      int mid, int pn) async {
    int ps = 20; //每页20条

    final collectsResource =
        await RhttpUtils.instance.get(ApiConstants.resourceList, query: {
      'media_id': mid.toString(),
      'ps': ps.toString(),
      'pn': pn.toString(),
    });

    return CollectsResource.fromJson(collectsResource.bodyToJson).data ??
        CollectsResourceData();
  }

  //获取当前用户创建的所有合集信息
  static Future<CollectsListAllDto> getAllCreatedCollects2(
      String userId) async {
    final createdListAll = await RhttpUtils.instance.get(
        ApiConstants.collect2ListAll,
        query: {'up_mid': userId, 'ps': '70', 'pn': '1', 'platform': 'web'});

    return CreatedListAll.fromJson(createdListAll.bodyToJson).data ??
        CollectsListAllDto(count: 0);
  }

  static Future<List<AudioInfo>> getAllSeason(int seasonId) async {
    final collectsResourceData = await _getSeasons(seasonId, 1, 40);

    return AudioInfo.convertBiliSeasonResponseArchivesToAudioInfoList(
        collectsResourceData.archives);
  }

  static Future<CollectPlaylist> getSeasons(int seasonId) async {
    List<AudioInfo> allMedias = [];
    CollectsDataDto collectsResourceDataInfo = CollectsDataDto();
    int pn = 1;
    int ps = 100; //每页100条
    bool hasMore = true;

    CollectsUpperDto upperDto = CollectsUpperDto();

    while (hasMore) {
      final collectsResourceData = await _getSeasons(seasonId, pn, ps);

      allMedias.addAll(
          AudioInfo.convertBiliSeasonResponseArchivesToAudioInfoList(
              collectsResourceData.archives));

      if (collectsResourceData.page!.total! - ps * pn <= 0) {
        final seasonResponseMeta = collectsResourceData.meta;
        hasMore = false;
        final user = await BiliUserApi.getCollects2Resource(
            seasonResponseMeta!.mid!.toString());
        upperDto = CollectsUpperDto(
            mid: seasonResponseMeta.mid, name: user.name, face: user.face);
        collectsResourceDataInfo = CollectsDataDto(
            title: seasonResponseMeta.name ?? '',
            cover: seasonResponseMeta.cover,
            upper: upperDto,
            id: seasonResponseMeta.mid);
      } else {
        pn++;
      }
    }

    final upper = Upper(
        id: collectsResourceDataInfo.upper?.mid.toString() ?? '0',
        name: collectsResourceDataInfo.upper?.name.toString() ?? '',
        face: collectsResourceDataInfo.upper?.face.toString() ?? '');

    final medias = allMedias.map((video) {
      return video.copyWith(upper: upper);
    }).toList();

    return CollectPlaylist(
        id: 'bili_season_${collectsResourceDataInfo.id}',
        title: '${collectsResourceDataInfo.title}',
        cover: '${collectsResourceDataInfo.cover}',
        songs: medias,
        songIds: medias.map((media) => media.id).toList(),
        upper: upper,
        createTime: DateTime.now().second,
        collectCurrentType: CollectTypeEnum.biliSeason,
        collectSourceType: CollectTypeEnum.biliSeason,
        onlineId: collectsResourceDataInfo.id?.toString());
  }

  static Future<List<AudioInfo>> getSeasonsSample(int seasonId) async {
    List<AudioInfo> allMedias = [];

    final collectsResourceData =
        await _getSeasons(seasonId, 1, Constants.maxOfPreviewAudios);

    allMedias.addAll(AudioInfo.convertBiliSeasonResponseArchivesToAudioInfoList(
        collectsResourceData.archives));

    final seasonResponseMeta = collectsResourceData.meta;
    final user = await BiliUserApi.getCollects2Resource(
        seasonResponseMeta?.mid.toString() ?? '');
    final upperDto = CollectsUpperDto(
        mid: seasonResponseMeta?.mid, name: user.name, face: user.face);

    final upper = Upper(
        id: upperDto.mid.toString() ?? '0',
        name: upperDto.name.toString() ?? '',
        face: upperDto.face.toString() ?? '');

    final medias = allMedias.map((video) {
      return video.copyWith(upper: upper);
    }).toList();

    return medias;
  }

  static Future<BiliSeasonResponseData> _getSeasons(
      int seasonId, int pn, int ps) async {
    final collectsResource =
        await RhttpUtils.instance.get(ApiConstants.getSeasons, query: {
      'season_id': seasonId.toString(),
      'mid': '1',
      'page_size': ps.toString(),
      'page_num': pn.toString(),
    });

    return BiliSeasonResponse.fromJson(collectsResource.bodyToJson).data ??
        BiliSeasonResponseData();
  }

  static Future<List<AudioInfo>> getAllSeries(String uid, int seriesId) async {
    List<AudioInfo> allMedias = [];
    int pn = 1;
    int ps = 100;
    bool hasMore = true;

    while (hasMore) {
      final collectsResourceData = await _getAllSeries(uid, seriesId, pn, ps);

      allMedias.addAll(
          AudioInfo.convertBiliSeasonResponseArchivesToAudioInfoList(
              collectsResourceData.archives));

      if (collectsResourceData.page!.total! - ps * pn <= 0) {
        hasMore = false;
      } else {
        pn++;
      }
    }

    return allMedias;
  }

  static Future<BiliSeriesResponseDtoData> _getAllSeries(
      String uid, int seriesId, int pn, int ps) async {
    final collectsResource =
        await RhttpUtils.instance.get(ApiConstants.getSeasons, query: {
      'series_id': seriesId.toString(),
      'mid': uid,
      'page_size': ps.toString(),
      'page_num': pn.toString(),
    });

    return BiliSeriesResponseDto.fromJson(collectsResource.bodyToJson).data ??
        BiliSeriesResponseDtoData();
  }
}
