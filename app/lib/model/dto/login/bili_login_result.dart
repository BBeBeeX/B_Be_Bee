
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bili_login_result.freezed.dart';
part 'bili_login_result.g.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({
    required  bool success,
    required  String errorMessage,
    required  String token,
  }) = _LoginResult;


  factory LoginResult.fromJson(Map<String, dynamic> json) => _$LoginResultFromJson(json);
}
