import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_info_response.freezed.dart';
part 'audio_info_response.g.dart';

@freezed
class AudioInfoResponse with _$AudioInfoResponse {
  const factory AudioInfoResponse({
    int? code,
    String? message,
    int? ttl,
    AudioInfoResponseData? data,
  }) = _AudioInfoResponse;

  factory AudioInfoResponse.fromJson(Map<String, Object?> json) =>
      _$AudioInfoResponseFromJson(json);
}

@freezed
class AudioInfoResponseData with _$AudioInfoResponseData {
  const factory AudioInfoResponseData({
    String? bvid,
    int? aid,
    int? videos,
    int? tid,
    String? tname,
    int? copyright,
    String? pic,
    String? title,
    int? pubdate,
    int? ctime,
    String? desc,
    List<DescV2>? descV2,
    int? state,
    int? duration,
    int? missionId,
    Rights? rights,
    Owner? owner,
    Stat? stat,
    ArgueInfo? argueInfo,
    String? dynamicProperty,
    int? cid,
    Dimension? dimension,
    int? teenageMode,
    bool? isChargeableSeason,
    bool? isStory,
    bool? isUpowerExclusive,
    bool? isUpowerPlay,
    int? enableVt,
    String? vtDisplay,
    bool? noCache,
    List<Pages>? pages,
    Subtitle? subtitle,
    List<Staff>? staff,
    bool? isSeasonDisplay,
    UserGarb? userGarb,
    HonorReply? honorReply,
    String? likeIcon,
    bool? needJumpBv,
    bool? disableShowUpInfo,
  }) = _AudioInfoResponseData;

  factory AudioInfoResponseData.fromJson(Map<String, Object?> json) => _$AudioInfoResponseDataFromJson(json);
}

@freezed
class DescV2 with _$DescV2 {
  const factory DescV2({
    String? rawText,
    int? type,
    int? bizId,
  }) = _DescV2;

  factory DescV2.fromJson(Map<String, Object?> json) => _$DescV2FromJson(json);
}

@freezed
class Rights with _$Rights {
  const factory Rights({
    int? bp,
    int? elec,
    int? download,
    int? movie,
    int? pay,
    int? hd5,
    int? noReprint,
    int? autoplay,
    int? ugcPay,
    int? isCooperation,
    int? ugcPayPreview,
    int? noBackground,
    int? cleanMode,
    int? isSteinGate,
    int? is360,
    int? noShare,
    int? arcPay,
    int? freeWatch,
  }) = _Rights;

  factory Rights.fromJson(Map<String, Object?> json) => _$RightsFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    int? mid,
    String? name,
    String? face,
  }) = _Owner;

  factory Owner.fromJson(Map<String, Object?> json) => _$OwnerFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    int? aid,
    int? view,
    int? danmaku,
    int? reply,
    int? favorite,
    int? coin,
    int? share,
    int? nowRank,
    int? hisRank,
    int? like,
    int? dislike,
    String? evaluation,
    int? vt,
  }) = _Stat;

  factory Stat.fromJson(Map<String, Object?> json) => _$StatFromJson(json);
}

@freezed
class ArgueInfo with _$ArgueInfo {
  const factory ArgueInfo({
    String? argueMsg,
    int? argueType,
    String? argueLink,
  }) = _ArgueInfo;

  factory ArgueInfo.fromJson(Map<String, Object?> json) =>
      _$ArgueInfoFromJson(json);
}

@freezed
class Dimension with _$Dimension {
  const factory Dimension({
    int? width,
    int? height,
    int? rotate,
  }) = _Dimension;

  factory Dimension.fromJson(Map<String, Object?> json) =>
      _$DimensionFromJson(json);
}

@freezed
class Pages with _$Pages {
  const factory Pages({
    int? cid,
    int? page,
    String? from,
    String? partProperty,
    int? duration,
    String? vid,
    String? weblink,
    Dimension? dimension,
  }) = _Pages;

  factory Pages.fromJson(Map<String, Object?> json) => _$PagesFromJson(json);
}

@freezed
class Subtitle with _$Subtitle {
  const factory Subtitle({
    bool? allowSubmit,
    List<SubtitleList>? list,
  }) = _Subtitle;

  factory Subtitle.fromJson(Map<String, Object?> json) =>
      _$SubtitleFromJson(json);
}

@freezed
class SubtitleList with _$SubtitleList {
  const factory SubtitleList({
    int? id,
    String? lan,
    String? lanDoc,
    bool? isLock,
    String? subtitleUrl,
    int? type,
    String? idStr,
    int? aiType,
    int? aiStatus,
    Author? author,
  }) = _SubtitleList;

  factory SubtitleList.fromJson(Map<String, Object?> json) => _$SubtitleListFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    int? mid,
    String? name,
    String? sex,
    String? face,
    String? sign,
    int? rank,
    int? birthday,
    int? isFakeAccount,
    int? isDeleted,
    int? inRegAudit,
    int? isSeniorMember,
  }) = _Author;

  factory Author.fromJson(Map<String, Object?> json) => _$AuthorFromJson(json);
}

@freezed
class Staff with _$Staff {
  const factory Staff({
    int? mid,
    String? title,
    String? name,
    String? face,
    Vip? vip,
    Official? official,
    int? follower,
    int? labelStyle,
  }) = _Staff;

  factory Staff.fromJson(Map<String, Object?> json) => _$StaffFromJson(json);
}

@freezed
class Vip with _$Vip {
  const factory Vip({
    int? type,
    int? status,
    int? dueDate,
    int? vipPayType,
    int? themeType,
    Label? label,
    int? avatarSubscript,
    String? nicknameColor,
    int? role,
    String? avatarSubscriptUrl,
    int? tvVipStatus,
    int? tvVipPayType,
    int? tvDueDate,
  }) = _Vip;

  factory Vip.fromJson(Map<String, Object?> json) => _$VipFromJson(json);
}

@freezed
class Label with _$Label {
  const factory Label({
    String? path,
    String? text,
    String? labelTheme,
    String? textColor,
    int? bgStyle,
    String? bgColor,
    String? borderColor,
    bool? useImgLabel,
    String? imgLabelUriHans,
    String? imgLabelUriHant,
    String? imgLabelUriHansStatic,
    String? imgLabelUriHantStatic,
  }) = _Label;

  factory Label.fromJson(Map<String, Object?> json) => _$LabelFromJson(json);
}

@freezed
class Official with _$Official {
  const factory Official({
    int? role,
    String? title,
    String? desc,
    int? type,
  }) = _Official;

  factory Official.fromJson(Map<String, Object?> json) =>
      _$OfficialFromJson(json);
}

@freezed
class UserGarb with _$UserGarb {
  const factory UserGarb({
    String? urlImageAniCut,
  }) = _UserGarb;

  factory UserGarb.fromJson(Map<String, Object?> json) =>
      _$UserGarbFromJson(json);
}

@freezed
class HonorReply with _$HonorReply {
  const factory HonorReply({
    List<Honor>? honor,
  }) = _HonorReply;

  factory HonorReply.fromJson(Map<String, Object?> json) =>
      _$HonorReplyFromJson(json);
}

@freezed
class Honor with _$Honor {
  const factory Honor({
    int? aid,
    int? type,
    String? desc,
    int? weeklyRecommendNum,
  }) = _Honor;

  factory Honor.fromJson(Map<String, Object?> json) => _$HonorFromJson(json);
}
