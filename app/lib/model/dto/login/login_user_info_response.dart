import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_user_info_response.freezed.dart';
part 'login_user_info_response.g.dart';

@freezed
class LoginUserInfoResponse with _$LoginUserInfoResponse {
  const factory LoginUserInfoResponse({
    int? code,
    String? message,
    int? ttl,
    UserInfoResponseData? data,
  }) = _LoginUserInfoResponse;

  factory LoginUserInfoResponse.fromJson(Map<String, Object?> json) =>
      _$LoginUserInfoResponseFromJson(json);
}

@freezed
class UserInfoResponseData with _$UserInfoResponseData {
  const factory UserInfoResponseData({
    bool? isLogin,
    int? email_verified,
    String? face,
    int? face_nft,
    int? face_nft_type,
    LevelInfo? level_info,
    int? mid,
    int? mobile_verified,
    double? money,
    int? moral,
    Official? official,
    OfficialVerify? officialVerify,
    Pendant? pendant,
    int? scores,
    String? uname,
    int? vipDueDate,
    int? vipStatus,
    int? vipType,
    int? vip_pay_type,
    int? vip_theme_type,
    VipLabel? vip_label,
    int? vip_avatar_subscript,
    String? vip_nickname_color,
    Vip? vip,
    Wallet? wallet,
    bool? has_shop,
    String? shop_url,
    int? allowance_count,
    int? answer_status,
    int? is_senior_member,
    WbiImg? wbi_img,
    bool? is_jury,
  }) = _UserInfoResponseData;

  factory UserInfoResponseData.fromJson(Map<String, Object?> json) => _$UserInfoResponseDataFromJson(json);
}

@freezed
class LevelInfo with _$LevelInfo {
  const factory LevelInfo({
    int? current_level,
    int? current_min,
    int? current_exp,
    String? next_exp,
  }) = _LevelInfo;

  factory LevelInfo.fromJson(Map<String, Object?> json) =>
      _$LevelInfoFromJson(json);
}

@freezed
class Official with _$Official {
  const factory Official({
    int? role,
    String? title,
    String? desc,
    int? type,
  }) = _Official;

  factory Official.fromJson(Map<String, Object?> json) =>
      _$OfficialFromJson(json);
}

@freezed
class OfficialVerify with _$OfficialVerify {
  const factory OfficialVerify({
    int? type,
    String? desc,
  }) = _OfficialVerify;

  factory OfficialVerify.fromJson(Map<String, Object?> json) =>
      _$OfficialVerifyFromJson(json);
}

@freezed
class Pendant with _$Pendant {
  const factory Pendant({
    int? pid,
    String? name,
    String? image,
    int? expire,
    String? image_enhance,
    String? image_enhance_frame,
  }) = _Pendant;

  factory Pendant.fromJson(Map<String, Object?> json) =>
      _$PendantFromJson(json);
}

@freezed
class VipLabel with _$VipLabel {
  const factory VipLabel({
    String? path,
    String? text,
    String? label_theme,
    String? text_color,
    int? bg_style,
    String? bg_color,
    String? border_color,
    bool? use_img_label,
    String? img_label_uri_hans,
    String? img_label_uri_hant,
    String? img_label_uri_han_static,
    String? img_label_uri_hant_static,
  }) = _VipLabel;

  factory VipLabel.fromJson(Map<String, Object?> json) =>
      _$VipLabelFromJson(json);
}

@freezed
class Vip with _$Vip {
  const factory Vip({
    int? type,
    int? status,
    int? due_date,
    int? vip_pay_type,
    int? theme_type,
    Label? label,
    int? avatar_subscript,
    String? nickname_color,
    int? role,
    String? avatar_subscript_url,
    int? tv_vip_status,
    int? tv_vip_pay_type,
    int? tv_due_date,
  }) = _Vip;

  factory Vip.fromJson(Map<String, Object?> json) => _$VipFromJson(json);
}

@freezed
class Label with _$Label {
  const factory Label({
    String? path,
    String? text,
    String? label_theme,
    String? text_color,
    int? bg_style,
    String? bg_color,
    String? border_color,
    bool? use_img_label,
    String? img_label_uri_hans,
    String? img_label_uri_hant,
    String? img_label_uri_hans_static,
    String? img_label_uri_hant_static,
  }) = _Label;

  factory Label.fromJson(Map<String, Object?> json) => _$LabelFromJson(json);
}

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    int? mid,
    int? bcoin_balance,
    int? coupon_balance,
    int? coupon_due_time,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, Object?> json) => _$WalletFromJson(json);
}

@freezed
class WbiImg with _$WbiImg {
  const factory WbiImg({
    String? img_url,
    String? sub_url,
  }) = _WbiImg;

  factory WbiImg.fromJson(Map<String, Object?> json) => _$WbiImgFromJson(json);
}
