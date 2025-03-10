import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_qrcode_info.freezed.dart';
part 'login_qrcode_info.g.dart';

@unfreezed
class LoginQRcode with _$LoginQRcode {
  LoginQRcode._();
  factory LoginQRcode({
    int? code,
    String? message ,
    int? ttl,
    required LoginQRcodeInfo data,
  }) = _LoginQRcode;

  factory LoginQRcode.fromJson(Map<String, dynamic> json) => _$LoginQRcodeFromJson(json);
}


@unfreezed
class LoginQRcodeInfo with _$LoginQRcodeInfo {
   LoginQRcodeInfo._();
   factory LoginQRcodeInfo({
     String? url,  //以该url作为内容生成二维码
     String? qrcode_key , //用来作为检查扫码登陆状态的函数参数
}) = _LoginQRcodeInfo;

  factory LoginQRcodeInfo.fromJson(Map<String, dynamic> json) => _$LoginQRcodeInfoFromJson(json);
}


