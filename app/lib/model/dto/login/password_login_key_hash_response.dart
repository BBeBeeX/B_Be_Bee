import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_login_key_hash_response.freezed.dart';
part 'password_login_key_hash_response.g.dart';

@freezed
class PasswordLoginKeyHashResponse with _$PasswordLoginKeyHashResponse {
  const factory PasswordLoginKeyHashResponse({
    required  int code,
    required  String message,
    required  int ttl,
    required  PasswordLoginKeyHashResponseData data
}) = _PasswordLoginKeyHashResponse;

  factory PasswordLoginKeyHashResponse.fromJson(Map<String, dynamic> json) => _$PasswordLoginKeyHashResponseFromJson(json);
}

@freezed
class PasswordLoginKeyHashResponseData with _$PasswordLoginKeyHashResponseData {
  const factory PasswordLoginKeyHashResponseData({
    required String hash,
    required String key,
  }) = _PasswordLoginKeyHashResponseData;

  factory PasswordLoginKeyHashResponseData.fromJson(Map<String, dynamic> json) => _$PasswordLoginKeyHashResponseDataFromJson(json);
}

