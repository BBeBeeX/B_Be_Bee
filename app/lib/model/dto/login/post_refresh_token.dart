import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_refresh_token.freezed.dart';
part 'post_refresh_token.g.dart';

@freezed
class PostRefreshToken with _$PostRefreshToken {
  const factory PostRefreshToken({
    required int code,
    required String message,
    required int ttl,
    required PostRefreshTokenData data,
}) = _PostRefreshToken;

  factory PostRefreshToken.fromJson(Map<String, dynamic> json) => _$PostRefreshTokenFromJson(json);
}


@freezed
class PostRefreshTokenData with _$PostRefreshTokenData {
  const factory PostRefreshTokenData({
    required int status,
     String? message,
    required String refresh_token,
  }) = _PostRefreshTokenData;

  factory PostRefreshTokenData.fromJson(Map<String, dynamic> json) => _$PostRefreshTokenDataFromJson(json);
}