import 'package:hive_ce/hive.dart';

part 'download_status_enum.g.dart';

@HiveType(typeId: 2)
enum DownloadStatusEnum {
  @HiveField(0)
  error, //发生错误

  @HiveField(1)
  canceled, //取消

  @HiveField(2)
  pending, //等待

  // 下载
  @HiveField(3)
  downloadPaused,
  @HiveField(4)
  downloading,
  @HiveField(5)
  downloadSuccess,

  // 下载歌词
  @HiveField(6)
  lyricsPaused,
  @HiveField(7)
  lyrics,
  @HiveField(8)
  lyricsSuccess,

  // 下载图片
  @HiveField(9)
  imagePaused,
  @HiveField(10)
  image,
  @HiveField(11)
  imageSuccess,

  // 文件转换
  @HiveField(12)
  convertPaused,
  @HiveField(13)
  converting,
  @HiveField(14)
  convertSuccess,

  @HiveField(15)
  completedPaused,
  @HiveField(16)
  completed, //完成
}

const pausedStatuses = {
  DownloadStatusEnum.downloadPaused,
  DownloadStatusEnum.lyricsPaused,
  DownloadStatusEnum.convertPaused,
  DownloadStatusEnum.imagePaused,
  DownloadStatusEnum.completedPaused,
};

extension DownloadStatusExtension on DownloadStatusEnum {
  bool isBefore(DownloadStatusEnum other) {
    return index - other.index < 0 ? true : false ;
  }

  bool isPaused() {
    return pausedStatuses.contains(this);
  }

}