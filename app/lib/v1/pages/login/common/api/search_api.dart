//
//
// import 'package:b_be_bee_app/v1/pages/login/common/api/wbi.dart';
//
// import '../../../../../common/api_constants.dart';
// import '../models/local/gender.dart';
// import '../models/local/search/default_search_word.dart';
// import '../models/local/search/hot_word_item.dart';
// import '../models/local/search/search_bangumi_item.dart';
// import '../models/local/search/search_suggest_item.dart';
// import '../models/local/search/search_user_item.dart';
// import '../models/local/search/search_video_item.dart';
// import '../models/network/search/default_search_word.dart';
// import '../models/network/search/hot_words.dart';
// import '../models/network/search/search_bangumi.dart';
// import '../models/network/search/search_suggest.dart';
// import '../models/network/search/search_video.dart';
// import '../models/network/user/user_info.dart';
// import '../../../../util/http_utils.dart';
// import '../utils/string_format_utils.dart';
// import '../../../../common/api_constants.dart';
//
// class SearchApi {
//   static Future<DefaultSearchWordResponse> _requestDefaultSearchWords() async {
//     var response = await HttpUtils().get(ApiConstants.defualtSearchWord,
//         queryParameters: await WbiSign.encodeParams({}));
//     return DefaultSearchWordResponse.fromJson(response.data);
//   }
//
//   ///获取默认搜索词
//   static Future<DefaultSearchWord> getDefaultSearchWords() async {
//     var response = await _requestDefaultSearchWords();
//     if (response.code != 0) {
//       throw "getRequestDefaultSearchWords: code:${response.code}, message:${response.message}";
//     }
//     if (response.data == null) {
//       return DefaultSearchWord.zero;
//     }
//     return DefaultSearchWord(
//         showName: response.data!.showName ?? "",
//         name: response.data!.name ?? "");
//   }
//
//
//
//   ///搜索请求
//   ///keyword 搜索的词
//   ///searchType 搜索类型
//   ///page 页码
//   ///order搜索结果排序方式
//   static Future<dynamic> _requestSearch({
//     required String keyword,
//     required int page,
//     required SearchType searchType,
//     required SearchVideoOrder order,
//   }) async {
//     var response = await HttpUtils().get(
//       ApiConstants.searchWithType,
//       queryParameters: {
//         'keyword': keyword,
//         'search_type': searchType.value,
//         'order': order.value,
//         'page': page,
//       },
//     );
//     if (searchType == SearchType.video) {
//       return SearchVideoResponse.fromJson(response.data);
//     } else {
//       return BangumiSearchResponse.fromJson(response.data);
//     }
//   }
//
//   ///搜索视频请求
//   static Future<SearchVideoResponse> _requestSearchVideo({
//     required String keyword,
//     required int page,
//     required SearchVideoOrder order,
//   }) async {
//     return await _requestSearch(
//         keyword: keyword,
//         page: page,
//         searchType: SearchType.video,
//         order: order);
//   }
//
//   ///搜索视频
//   static Future<List<SearchVideoItem>> getSearchVideos({
//     required String keyWord,
//     required int page,
//     required SearchVideoOrder order,
//   }) async {
//     List<SearchVideoItem> list = [];
//     var response =
//         await _requestSearchVideo(keyword: keyWord, page: page, order: order);
//     if (response.code != 0) {
//       throw "getSearchVideoList: code:${response.code}, message:${response.message}";
//     }
//     if (response.data == null || response.data!.result == null) {
//       return list;
//     }
//     for (var i in response.data!.result!) {
//       list.add(SearchVideoItem(
//           coverUrl: "http:${i.pic ?? ""}",
//           title: StringFormatUtils.replaceAllHtmlEntitiesToCharacter(
//               StringFormatUtils.keyWordTitleToRawTitle(i.title ?? "")),
//           bvid: i.bvid ?? "",
//           upName: i.author ?? "",
//           timeLength: Duration(
//                   minutes: int.tryParse(i.duration!.split(':').first) ?? 0,
//                   seconds: int.tryParse(i.duration!.split(':').last) ?? 0)
//               .inSeconds,
//           playNum: i.play ?? 0,
//           pubDate: i.pubdate ?? 0));
//     }
//     return list;
//   }
//
//
//   static Future<List<SearchUserItem>> getSearchUsers(
//       {required String keyWord, required int page}) async {
//     List<SearchUserItem> list = [];
//     var response =
//         await HttpUtils().get(ApiConstants.searchWithType, queryParameters: {
//       'keyword': keyWord,
//       'search_type': SearchType.user.value,
//       'page': page,
//     });
//     if (response.data['code'] != 0) {
//       throw "getSearchUsers: code:${response.data['code']}, message:${response.data['message']}";
//     }
//     for (Map<String, dynamic> i in response.data['data']?['result'] ?? []) {
//       list.add(SearchUserItem(
//           mid: i['mid'],
//           name: i['uname'],
//           face: "http:${i['upic']}",
//           sign: i['usign'],
//           fansCount: i['fans'],
//           videoCount: i['videos'],
//           level: i['level'],
//           gender: Gender.values[i['gender'] - 1],
//           isUpper: i['is_upuser'] == 1,
//           isLive: i['is_live'] == 1,
//           roomId: i['room_id'],
//           officialVerify: OfficialVerify()
//               // type:
//               //     OfficialVerifyTypeCode.fromCode(i['official_verify']['type']),
//               // description: i['official_verify']['desc'])
//       ));
//     }
//     return list;
//   }
// }
//
// //视频搜索排序类型
// enum SearchVideoOrder {
//   //综合,默认
//   comprehensive,
//   //最多点击
//   click,
//   //最新发布
//   pubdate,
//   //最多弹幕
//   danmaku,
//   //最多收藏
//   favorites,
//   //最多评论
//   comments
// }
//
// //视频搜索排序类型对应的字符串值实现
// extension SearchVideoOrderExtension on SearchVideoOrder {
//   String get value => ['', 'click', 'pubdate', 'dm', 'stow', 'scores'][index];
// }
