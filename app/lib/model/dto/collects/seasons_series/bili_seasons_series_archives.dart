import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_seasons_series_archives.freezed.dart';
part 'bili_seasons_series_archives.g.dart';


@freezed
class BiliSeasonsSeriesArchives with _$BiliSeasonsSeriesArchives {
  const factory BiliSeasonsSeriesArchives({
    int? aid,
    String? bvid,
    int? ctime,
    int? duration,
    // bool? enable_vt,
    bool? interactive_video,
    String? pic,
    int? playback_position,
    int? pubdate,
    BiliSeasonsSeriesArchivesStat? stat,
    int? state,
    String? title,
    int? ugc_pay,
    String? vt_display,
  }) = _BiliSeasonsSeriesArchives;

  factory BiliSeasonsSeriesArchives.fromJson(Map<String, Object?> json) =>
      _$BiliSeasonsSeriesArchivesFromJson(json);
}

@freezed
class BiliSeasonsSeriesArchivesStat with _$BiliSeasonsSeriesArchivesStat {
  const factory BiliSeasonsSeriesArchivesStat({
    int? view,
    int? vt,
  }) = _BiliSeasonsSeriesArchivesStat;

  factory BiliSeasonsSeriesArchivesStat.fromJson(Map<String, Object?> json) => _$BiliSeasonsSeriesArchivesStatFromJson(json);
}