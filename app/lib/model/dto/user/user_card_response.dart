import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_card_response.freezed.dart';
part 'user_card_response.g.dart';

@freezed
class UserCardResponse with _$UserCardResponse {
  const factory UserCardResponse({
    int? code,
    String? message,
    int? ttl,
    List<UserCardResponseData>? data,
  }) = _UserCardResponse;

  factory UserCardResponse.fromJson(Map<String, Object?> json) =>
      _$UserCardResponseFromJson(json);
}

@freezed
class UserCardResponseData with _$UserCardResponseData {
  const factory UserCardResponseData({
    int? mid,
    String? name,
    String? face,
    String? sign,
    int? rank,
    int? level,
    int? silence,
  }) = _UserCardResponseData;

  factory UserCardResponseData.fromJson(Map<String, Object?> json) => _$UserCardResponseDataFromJson(json);
}
