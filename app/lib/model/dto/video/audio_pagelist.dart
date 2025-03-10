import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_pagelist.freezed.dart';
part 'audio_pagelist.g.dart';

//通过aid/bvid 获取cid
@freezed
class AudioPagelist with _$AudioPagelist {
  const factory AudioPagelist({
    int? code,
    String? message,
    int? ttl,
    List<AudioPagelistData>? data,
  }) = _AudioPagelist;

  factory AudioPagelist.fromJson(Map<String, Object?> json) =>
      _$AudioPagelistFromJson(json);
}

@freezed
class AudioPagelistData with _$AudioPagelistData {
  const factory AudioPagelistData({
    int? cid,
    int? page,
    String? from,
    String? part_property,
    int? duration,
    String? vid,
    String? weblink,
    Dimension? dimension,
    String? first_frame,
  }) = _AudioPagelistData;

  factory AudioPagelistData.fromJson(Map<String, Object?> json) => _$AudioPagelistDataFromJson(json);
}

@freezed
class Dimension with _$Dimension {
  const factory Dimension({
    int? width,
    int? height,
    int? rotate,
  }) = _Dimension;

  factory Dimension.fromJson(Map<String, Object?> json) =>
      _$DimensionFromJson(json);
}
