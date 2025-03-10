import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_password_login_response.freezed.dart';
part 'post_password_login_response.g.dart';

@freezed
class PostPasswordLoginResponse with _$PostPasswordLoginResponse {
  const factory PostPasswordLoginResponse({
    required  int code,
    required  String message,
    required  PostPasswordLoginResponseData data,
}) = _PostPasswordLoginResponse;

  factory PostPasswordLoginResponse.fromJson(Map<String, dynamic> json) => _$PostPasswordLoginResponseFromJson(json);
}


@freezed
class PostPasswordLoginResponseData with _$PostPasswordLoginResponseData {
  const factory PostPasswordLoginResponseData({
    required int status,
    required String refresh_token,
    required String message,
    required int timestamp,
    required String url,
  }) = _PostPasswordLoginResponseData;

  factory PostPasswordLoginResponseData.fromJson(Map<String, dynamic> json) => _$PostPasswordLoginResponseDataFromJson(json);
}



