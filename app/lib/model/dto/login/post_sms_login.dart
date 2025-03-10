import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_sms_login.freezed.dart';
part 'post_sms_login.g.dart';

@freezed
class PostSmsLoginResponse with _$PostSmsLoginResponse {
  const factory PostSmsLoginResponse({
    required int code,
    required String message,
    required PostSmsLoginResponseData data,
}) = _PostSmsLoginResponse;

  factory PostSmsLoginResponse.fromJson(Map<String, dynamic> json) => _$PostSmsLoginResponseFromJson(json);
}


@freezed
class PostSmsLoginResponseData with _$PostSmsLoginResponseData {
  const factory PostSmsLoginResponseData({
    required bool is_new,
    required int status,
    required String url,
    required String refresh_token,
  }) = _PostSmsLoginResponseData;

  factory PostSmsLoginResponseData.fromJson(Map<String, dynamic> json) => _$PostSmsLoginResponseDataFromJson(json);
}


