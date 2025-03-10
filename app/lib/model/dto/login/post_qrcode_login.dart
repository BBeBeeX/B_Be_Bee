

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_qrcode_login.freezed.dart';
part 'post_qrcode_login.g.dart';

@freezed
class PostQrcodeLogin with _$PostQrcodeLogin {
  const factory PostQrcodeLogin({
    required int code,
    required String message,
    required PostQrcodeLoginData data,
}) = _PostQrcodeLogin;

  factory PostQrcodeLogin.fromJson(Map<String, dynamic> json) => _$PostQrcodeLoginFromJson(json);
}


@freezed
class PostQrcodeLoginData with _$PostQrcodeLoginData {
  const factory PostQrcodeLoginData({
    String? url,
    String? refresh_token,
    int? timestamp,
    int? code,
    String? message,

  }) = _PostQrcodeLoginData;

  factory PostQrcodeLoginData.fromJson(Map<String, dynamic> json) => _$PostQrcodeLoginDataFromJson(json);
}
