import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_top_list_dto.freezed.dart';
part 'audio_top_list_dto.g.dart';

@freezed
class AudioToplistResponse with _$AudioToplistResponse {
  const factory AudioToplistResponse({
    int? code,
    String? message,
    int? ttl,
    AudioToplistData? data,
  }) = _AudioToplistResponse;

  factory AudioToplistResponse.fromJson(Map<String, dynamic> json) =>
      _$AudioToplistResponseFromJson(json);
}
@freezed
class AudioToplistData with _$AudioToplistData {
  const factory AudioToplistData({
     Map<String, List<AudioToplistPeriodItem>>? list,
  }) = _AudioToplistData;

  factory AudioToplistData.fromJson(Map<String, dynamic> json) =>
      _$AudioToplistDataFromJson(json);
}

@freezed
class AudioToplistPeriodItem with _$AudioToplistPeriodItem {
  const factory AudioToplistPeriodItem({
    @JsonKey(name: 'ID') required int id,
    required int priod,
    @JsonKey(name: 'publish_time') required int publishTime,
  }) = _AudioToplistPeriodItem;

  factory AudioToplistPeriodItem.fromJson(Map<String, dynamic> json) =>
      _$AudioToplistPeriodItemFromJson(json);
}