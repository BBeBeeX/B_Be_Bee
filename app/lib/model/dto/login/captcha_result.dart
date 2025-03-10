import 'package:freezed_annotation/freezed_annotation.dart';

part 'captcha_result.freezed.dart';
part 'captcha_result.g.dart';

@unfreezed
class CaptchaResultModel with _$CaptchaResultModel {
    factory CaptchaResultModel({
     String? validate,
     String? seccode,
     CaptchaDataResponse? captchaData,
}) = _CaptchaResultModel;

  factory CaptchaResultModel.fromJson(Map<String, dynamic> json) => _$CaptchaResultModelFromJson(json);
}


@freezed
class CaptchaDataResponse with _$CaptchaDataResponse {
  const factory CaptchaDataResponse({
    required  int code,
    required  String message,
    required  int ttl,
    required CaptchaDataResponseData? data
  }) = _CaptchaDataResponse;


  factory CaptchaDataResponse.fromJson(Map<String, dynamic> json) => _$CaptchaDataResponseFromJson(json);
}

@freezed
class CaptchaDataResponseData with _$CaptchaDataResponseData {
  const factory CaptchaDataResponseData({
    required String type,
    required String token,
    required Geetest geetest,
    required Tencent tencent

  }) = _CaptchaDataResponseData;

  factory CaptchaDataResponseData.fromJson(Map<String, dynamic> json) => _$CaptchaDataResponseDataFromJson(json);
}

@freezed
class Geetest with _$Geetest {
  const factory Geetest({
    required String challenge,
    required String gt,

  }) = _Geetest;

  factory Geetest.fromJson(Map<String, dynamic> json) => _$GeetestFromJson(json);
}

@freezed
class Tencent with _$Tencent {
  const factory Tencent({
    required String appid,
  }) = _Tencent;

  factory Tencent.fromJson(Map<String, dynamic> json) => _$TencentFromJson(json);
}






