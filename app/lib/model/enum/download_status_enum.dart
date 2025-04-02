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

  @HiveField(3)
  init, //下载器初始化，下载ffmpeg

  // 下载
  @HiveField(4)
  downloadPaused,
  @HiveField(5)
  downloading,
  @HiveField(6)
  downloadSuccess,

  // 下载歌词
  @HiveField(7)
  lyricsPaused,
  @HiveField(8)
  lyrics,
  @HiveField(9)
  lyricsSuccess,

  // 下载图片
  @HiveField(10)
  imagePaused,
  @HiveField(11)
  image,
  @HiveField(12)
  imageSuccess,

  // 文件转换
  @HiveField(13)
  convertPaused,
  @HiveField(14)
  converting,
  @HiveField(15)
  convertSuccess,

  @HiveField(16)
  completedPaused,
  @HiveField(17)
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
    return index - other.index < 0 ? true : false;
  }

  bool isPaused() {
    return pausedStatuses.contains(this);
  }
}
