
import 'package:b_be_bee_app/common/api_constants.dart';
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/dto/search_result_dto.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:b_be_bee_app/util/string_utils.dart';

class BiliSearchApi{
  static Future<dynamic> _requestSearch({
    required String keyword,
    required int page,
    required bool isSearchUser,
  }) async {
    var response = await RhttpUtils().get(
      ApiConstants.searchWithType,
      query: {
        'keyword': keyword,
        'search_type': isSearchUser?'bili_user':'video',
        'page': page.toString(),
      },
    );
    if (response.bodyToJson['code'] != 0) {
      throw "getSearch bili ${isSearchUser?'user':'video'} error: code:${response.bodyToJson['code']}, message:${response.bodyToJson['message']}";
    }
    return response.bodyToJson['data']?['result'] ?? [];
  }

  ///搜索视频
  static Future<List<SearchResult>> getSearchVideos({
    required String keyWord,
    required int page,
  }) async {
    List<SearchResult> list = [];
    try{
      final response =await _requestSearch(keyword: keyWord, page: page, isSearchUser: false,);
      if (response == null || response.length == 0) {
        return list;
      }
      for (Map<String, dynamic> i in response) {
        final title = StringUtils.replaceAllHtmlEntitiesToCharacter(
            StringUtils.keyWordTitleToRawTitle(i['title'] ?? ''));
        list.add(SearchResult(
            id: i['bvid'] ?? '',
            title: title,
            subtitle: i['author'] ?? '',
            imageUrl:  "http:${i['pic'] ?? ""}",
            type: SearchItemTypeEnum.biliVideo,
          audioInfo: AudioInfo(
              id: 'bili_video_${i['bvid']}',
              title: title,
            upper: Upper(
                id: i['mid'].toString(),
                name: i['author'],
            ),
              coverWebUrl:"http:${i['pic'] ?? ""}",
              duration: StringUtils.parseTimeStringToSeconds(i['duration']),
            onlineId: i['bvid'],
            audioCurrentType: AudioSourceTypeEnum.bili,
            audioSourceType: AudioSourceTypeEnum.bili,
          )
        ));
      }
    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('getSearchVideos error : ${e.toString()}');
      });
      return list;
    }

    return list;
  }


  static Future<List<SearchResult>> getSearchUsers(
      {required String keyWord, required int page}) async {
    List<SearchResult> list = [];
    try{
      final response = await _requestSearch(keyword: keyWord, page: page, isSearchUser: true,);
      if (response == null || response.length == 0) {
        return list;
      }

      for (Map<String, dynamic> i in response) {
        list.add(SearchResult(
            id: i['mid'].toString(),
            title: i['uname'],
            imageUrl: "http:${i['upic']}",
            subtitle: i['usign'],
            type: SearchItemTypeEnum.biliUser
        ));
      }
    }catch(e){
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('getSearchVideos error : ${e.toString()}');
      });
      return list;
    }

    return list;
  }
}