import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_sms_require.freezed.dart';
part 'post_sms_require.g.dart';

@freezed
class PostSmsRequireResponse with _$PostSmsRequireResponse {
  const factory PostSmsRequireResponse({
    required int code,
    required String message,
    PostSmsRequireResponseData? data,
}) = _PostSmsRequireResponse;

  factory PostSmsRequireResponse.fromJson(Map<String, dynamic> json) => _$PostSmsRequireResponseFromJson(json);
}


@freezed
class PostSmsRequireResponseData with _$PostSmsRequireResponseData {
  const factory PostSmsRequireResponseData({
    required String captcha_key,
  }) = _PostSmsRequireResponseData;

  factory PostSmsRequireResponseData.fromJson(Map<String, dynamic> json) => _$PostSmsRequireResponseDataFromJson(json);
}

