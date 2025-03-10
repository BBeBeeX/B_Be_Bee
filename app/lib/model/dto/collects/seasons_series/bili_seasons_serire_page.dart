
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_seasons_serire_page.freezed.dart';
part 'bili_seasons_serire_page.g.dart';

@freezed
class BiliSeasonsSerirePage with _$BiliSeasonsSerirePage {
  const factory BiliSeasonsSerirePage({
    int? page_num,
    int? page_size,
    int? total,
  }) = _SeasonResponsePage;

  factory BiliSeasonsSerirePage.fromJson(Map<String, Object?> json) => _$BiliSeasonsSerirePageFromJson(json);
}
