import 'package:hive_ce/hive.dart';

part 'audio_player_style_enum.g.dart';

@HiveType(typeId: 14)
enum AudioPlayerStyleEnum {

  @HiveField(0)
  column1, //移动版默认，垂直样式

  @HiveField(1)
  row1;


  String getLabel() {
    switch (this) {
      case AudioPlayerStyleEnum.column1:
        return '垂直布局1(手机默认)';
      case AudioPlayerStyleEnum.row1:
        return '水平布局1(pc默认)';
    }
  }

  //适配移动端的也能适配pc端，反之不然
  bool isCompatibleMobile() {
    switch (this) {
      case AudioPlayerStyleEnum.column1:
        return true;
      case AudioPlayerStyleEnum.row1:
        return false;
    }
  }

  //是否有歌词页
  bool hasLyricsPage() {
    switch (this) {
      case AudioPlayerStyleEnum.column1:
        return true;
      case AudioPlayerStyleEnum.row1:
        return false;
    }
  }
}



