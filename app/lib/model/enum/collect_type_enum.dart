import 'package:hive_ce/hive.dart';

import '../../gen/strings.g.dart';

part 'collect_type_enum.g.dart';

@HiveType(typeId: 11)
enum CollectTypeEnum{

  @HiveField(0) biliCollect,  // 收藏夹
  @HiveField(1) biliSeason,   // 合集
  @HiveField(2) biliSeries,   // 系列
  @HiveField(3) biliUpper, //upper

  @HiveField(4) playlist, // 播放列表
  @HiveField(5) local, //本地收藏夹
  @HiveField(6) localAudios; //本地音频文件

  bool get isSourceFromOnline{
     switch(this){
       case CollectTypeEnum.biliCollect:
       case CollectTypeEnum.biliSeason:
       case CollectTypeEnum.biliSeries:
       case CollectTypeEnum.biliUpper:
         return true;
       case CollectTypeEnum.playlist:
       case CollectTypeEnum.local:
       case CollectTypeEnum.localAudios:
         return false;
    }
  }
}


extension CollectTypeEnumTitle on CollectTypeEnum {
  String get title {
    return switch (this) {
      CollectTypeEnum.biliCollect => t.collectsPage.biliCollectsTitle,
      CollectTypeEnum.biliSeason => t.collectsPage.biliSeasonTitle,
      CollectTypeEnum.biliSeries => t.collectsPage.biliSeriesTitle,

    //TODO i18n
      CollectTypeEnum.biliUpper => 'upper',
      CollectTypeEnum.playlist => t.collectsPage.playlistTitle,
      CollectTypeEnum.local => t.collectsPage.localTitle,
      CollectTypeEnum.localAudios => t.collectsPage.localAudiosTitle,
    };
  }
}