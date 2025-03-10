import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cookie_info.freezed.dart';
part 'get_cookie_info.g.dart';

GetCookieInfo getCookieInfoFromJson(String str) => GetCookieInfo.fromJson(json.decode(str));

String getCookieInfoToJson(GetCookieInfo data) => json.encode(data.toJson());

@freezed
class GetCookieInfo with _$GetCookieInfo {
  const GetCookieInfo._();
  const factory GetCookieInfo({
     int? code,
     String? message,
     int? ttl,
     Data? data,
  }) = _GetCookieInfo;

  factory GetCookieInfo.fromJson(Map<String, dynamic> json) => _$GetCookieInfoFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required bool refresh,
    required int timestamp,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
