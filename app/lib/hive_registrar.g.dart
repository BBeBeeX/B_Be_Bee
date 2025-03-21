// Generated by Hive CE
// Do not modify
// Check in to version control

import 'package:hive_ce/hive.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/dao/download_state.dart';
import 'package:b_be_bee_app/model/dao/play_statistics.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/dto/video/audio_play_item.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/model/enum/download_status_enum.dart';
import 'package:b_be_bee_app/model/enum/repeat_mode_enum.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(AudioInfoImplAdapter());
    registerAdapter(AudioPlayItemImplAdapter());
    registerAdapter(AudioQualityAdapter());
    registerAdapter(AudioSourceTypeEnumAdapter());
    registerAdapter(CollectPlaylistAdapter());
    registerAdapter(CollectTypeEnumAdapter());
    registerAdapter(DownloadStateAdapter());
    registerAdapter(DownloadStatusEnumAdapter());
    registerAdapter(DownloadTaskAdapter());
    registerAdapter(PlayStatisticsAdapter());
    registerAdapter(RepeatModeEnumAdapter());
    registerAdapter(UpperAdapter());
  }
}
