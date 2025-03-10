import 'package:b_be_bee_app/model/dto/collects/collects_upper_dto.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collects_bili_media_dto.freezed.dart';
part 'collects_bili_media_dto.g.dart';
//音视频
@freezed
class CollectsBiliMediaDto with _$CollectsBiliMediaDto {
  const factory CollectsBiliMediaDto({
    int? id, //内容id 视频稿件：视频稿件avid   音频：音频auid  视频合集：视频合集id
    int? type, //内容类型  2：视频稿件  12：音频  21：视频合集
    String? title,
    String? cover,
    String? intro,
    int? page,
    int? duration,
    CollectsUpperDto? upper,
    int? attr, // 失效 0: 正常；9: up自己删除；1: 其他原因删除
    BiliMediaInfo? cnt_info,
    String? link,
    int? ctime,
    int? pubtime,
    int? fav_time,
    String? bv_id,
    String? bvid,
    BiliMediaUgc? ugc,
    String? media_list_link,
  }) = _CollectsBiliMediaDto;

  factory CollectsBiliMediaDto.fromJson(Map<String, Object?> json) => _$CollectsBiliMediaDtoFromJson(json);
}

//音视频的三连
@freezed
class BiliMediaInfo with _$BiliMediaInfo {
  const factory BiliMediaInfo({
    int? collect,
    int? play,

    int? thumb_up,//收藏的
    int? share,

    int? danmaku,//视频的
    int? vt,
    int? play_switch,
    int? reply,
    String? view_text1,
  }) = _BiliMediaInfo;

  factory BiliMediaInfo.fromJson(Map<String, Object?> json) =>
      _$BiliMediaInfoFromJson(json);
}

@freezed
class BiliMediaUgc with _$BiliMediaUgc {
  const factory BiliMediaUgc({
    int? first_cid,
  }) = _BiliMediaUgc;

  factory BiliMediaUgc.fromJson(Map<String, Object?> json) => _$BiliMediaUgcFromJson(json);
}

 List<CollectsBiliMediaDto> convertToCollectsBiliMediaDtoList(
    List<BiliSeasonsSeriesArchives> archivesList,CollectsUpperDto upper) {
  return archivesList.map((archive) {
    return CollectsBiliMediaDto(
      id: archive.aid, // 使用 aid 作为 id
      type: 2, // 根据上下文假定 type 是视频稿件
      title: archive.title,
      cover: archive.pic,
      intro: null, // 如果没有相关字段，可以填 null 或默认值
      page: null, // 填 null，需根据业务逻辑调整
      duration: archive.duration,
      upper: upper, // 填 null，需根据实际 upper 数据逻辑补充
      attr: archive.state, // 映射到 attr 字段
      cnt_info: null, // 填 null，如有对应信息补充
      link: null, // 填 null 或补充链接字段
      ctime: archive.ctime,
      pubtime: archive.pubdate,
      fav_time: null, // 收藏时间，如没有填 null
      bv_id: archive.bvid, // 映射 bvid
      bvid: archive.bvid, // 同 bv_id
      ugc: BiliMediaUgc(first_cid: 0),
      media_list_link: null, // 填 null 或链接字段
    );
  }).toList();
}