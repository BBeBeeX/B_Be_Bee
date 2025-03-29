import 'package:b_be_bee_app/gen/strings.g.dart';

enum SortMethodEnum {
  default_,  // 默认排序
  titleAZ,   // 按歌曲名A-Z
  artistAZ,  // 按歌手名A-Z
  recentPlay, // 最近播放
  alphabet;   // 字母排序

  String get label {
    switch (this) {
      case SortMethodEnum.default_:
        return t.model.sortMethodDefault;
      case SortMethodEnum.titleAZ:
        return t.model.sortMethodTitleAZ;
      case SortMethodEnum.artistAZ:
        return t.model.sortMethodArtistAZ;
      case SortMethodEnum.recentPlay:
        return t.model.sortMethodRecentPlay;
      case SortMethodEnum.alphabet:
        return t.model.sortMethodAlphabet;
    }
  }
}