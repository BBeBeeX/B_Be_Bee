class BiliSubtitleDto {
  BiliSubtitleDto({
    this.aid,
    this.bvid,
    this.cid,
    this.loginMid,
    this.loginMidHash,
    this.isOwner,
    this.name,
    this.subtitles,
  });

  int? aid;
  String? bvid;
  int? cid;
  int? loginMid;
  String? loginMidHash;
  bool? isOwner;
  String? name;
  List<SubTitlteItemModel>? subtitles;

  factory BiliSubtitleDto.fromJson(Map<String, dynamic> json) => BiliSubtitleDto(
    aid: json["aid"],
    bvid: json["bvid"],
    cid: json["cid"],
    loginMid: json["login_mid"],
    loginMidHash: json["login_mid_hash"],
    isOwner: json["is_owner"],
    name: json["name"],
    subtitles: json["subtitle"] != null
        ? json["subtitle"]["subtitles"]
        .map<SubTitlteItemModel>((x) => SubTitlteItemModel.fromJson(x))
        .toList()
        : [],
  );
}

class SubTitlteItemModel {
  SubTitlteItemModel({
    this.id,
    this.lan,
    this.lanDoc,
    this.isLock,
    this.subtitleUrl,
    this.type,
    this.aiType,
    this.aiStatus,
    this.title,
    this.code,
    this.content,
    this.body,
  });

  int? id;
  String? lan; //语言类型英文字母缩写
  String? lanDoc; //语言类型中文字母缩写
  bool? isLock;
  String? subtitleUrl;
  int? type;
  int? aiType;
  int? aiStatus;
  String? title;
  int? code;
  String? content; //webvtt 字符串
  List? body; //序列化字幕

  factory SubTitlteItemModel.fromJson(Map<String, dynamic> json) =>
      SubTitlteItemModel(
        id: json["id"],
        lan: json["lan"].replaceAll('-', ''),
        lanDoc: json["lan_doc"],
        isLock: json["is_lock"],
        subtitleUrl: json["subtitle_url"],
        type: json["type"],
        aiType: json["ai_type"],
        aiStatus: json["ai_status"],
        title: json["lan_doc"],
        content: '',
        body: [],
      );
}
