import 'package:b_be_bee_app/model/dao/audio_info.dart';

import '../../gen/strings.g.dart';

class SearchResult {
  //bili video: bvid
  //bili user : mid
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final SearchItemTypeEnum type;
  final AudioInfo? audioInfo;

  SearchResult({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.type,
    this.audioInfo
  });
}

enum SearchItemTypeEnum{
  all,
  biliUser,
  biliVideo;

  factory SearchItemTypeEnum.fromJson(String json) => values.byName(json);
  String toJson() => name;

  String getLabel() {
    switch (this) {
      case SearchItemTypeEnum.all:
        return t.model.all;
      case SearchItemTypeEnum.biliUser:
        return t.model.user;
      case SearchItemTypeEnum.biliVideo:
        return t.model.video;
    }
  }

  bool isUser() => switch(this) {
    SearchItemTypeEnum.all => false,
    SearchItemTypeEnum.biliUser => true,
    SearchItemTypeEnum.biliVideo => false
  };

  bool isVideo() => switch(this) {
    SearchItemTypeEnum.all => false,
    SearchItemTypeEnum.biliUser => false,
    SearchItemTypeEnum.biliVideo => true
  };
}