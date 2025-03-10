// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_qrcode_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginQRcode _$LoginQRcodeFromJson(Map<String, dynamic> json) {
  return _LoginQRcode.fromJson(json);
}

/// @nodoc
mixin _$LoginQRcode {
  int? get code => throw _privateConstructorUsedError;
  set code(int? value) => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  set message(String? value) => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  set ttl(int? value) => throw _privateConstructorUsedError;
  LoginQRcodeInfo get data => throw _privateConstructorUsedError;
  set data(LoginQRcodeInfo value) => throw _privateConstructorUsedError;

  /// Serializes this LoginQRcode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginQRcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginQRcodeCopyWith<LoginQRcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginQRcodeCopyWith<$Res> {
  factory $LoginQRcodeCopyWith(
          LoginQRcode value, $Res Function(LoginQRcode) then) =
      _$LoginQRcodeCopyWithImpl<$Res, LoginQRcode>;
  @useResult
  $Res call({int? code, String? message, int? ttl, LoginQRcodeInfo data});

  $LoginQRcodeInfoCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginQRcodeCopyWithImpl<$Res, $Val extends LoginQRcode>
    implements $LoginQRcodeCopyWith<$Res> {
  _$LoginQRcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginQRcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginQRcodeInfo,
    ) as $Val);
  }

  /// Create a copy of LoginQRcode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginQRcodeInfoCopyWith<$Res> get data {
    return $LoginQRcodeInfoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginQRcodeImplCopyWith<$Res>
    implements $LoginQRcodeCopyWith<$Res> {
  factory _$$LoginQRcodeImplCopyWith(
          _$LoginQRcodeImpl value, $Res Function(_$LoginQRcodeImpl) then) =
      __$$LoginQRcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, LoginQRcodeInfo data});

  @override
  $LoginQRcodeInfoCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginQRcodeImplCopyWithImpl<$Res>
    extends _$LoginQRcodeCopyWithImpl<$Res, _$LoginQRcodeImpl>
    implements _$$LoginQRcodeImplCopyWith<$Res> {
  __$$LoginQRcodeImplCopyWithImpl(
      _$LoginQRcodeImpl _value, $Res Function(_$LoginQRcodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginQRcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = null,
  }) {
    return _then(_$LoginQRcodeImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginQRcodeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginQRcodeImpl extends _LoginQRcode {
  _$LoginQRcodeImpl({this.code, this.message, this.ttl, required this.data})
      : super._();

  factory _$LoginQRcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginQRcodeImplFromJson(json);

  @override
  int? code;
  @override
  String? message;
  @override
  int? ttl;
  @override
  LoginQRcodeInfo data;

  @override
  String toString() {
    return 'LoginQRcode(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  /// Create a copy of LoginQRcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginQRcodeImplCopyWith<_$LoginQRcodeImpl> get copyWith =>
      __$$LoginQRcodeImplCopyWithImpl<_$LoginQRcodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginQRcodeImplToJson(
      this,
    );
  }
}

abstract class _LoginQRcode extends LoginQRcode {
  factory _LoginQRcode(
      {int? code,
      String? message,
      int? ttl,
      required LoginQRcodeInfo data}) = _$LoginQRcodeImpl;
  _LoginQRcode._() : super._();

  factory _LoginQRcode.fromJson(Map<String, dynamic> json) =
      _$LoginQRcodeImpl.fromJson;

  @override
  int? get code;
  set code(int? value);
  @override
  String? get message;
  set message(String? value);
  @override
  int? get ttl;
  set ttl(int? value);
  @override
  LoginQRcodeInfo get data;
  set data(LoginQRcodeInfo value);

  /// Create a copy of LoginQRcode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginQRcodeImplCopyWith<_$LoginQRcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginQRcodeInfo _$LoginQRcodeInfoFromJson(Map<String, dynamic> json) {
  return _LoginQRcodeInfo.fromJson(json);
}

/// @nodoc
mixin _$LoginQRcodeInfo {
  String? get url => throw _privateConstructorUsedError;
  set url(String? value) => throw _privateConstructorUsedError; //以该url作为内容生成二维码
  String? get qrcode_key => throw _privateConstructorUsedError; //以该url作为内容生成二维码
  set qrcode_key(String? value) => throw _privateConstructorUsedError;

  /// Serializes this LoginQRcodeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginQRcodeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginQRcodeInfoCopyWith<LoginQRcodeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginQRcodeInfoCopyWith<$Res> {
  factory $LoginQRcodeInfoCopyWith(
          LoginQRcodeInfo value, $Res Function(LoginQRcodeInfo) then) =
      _$LoginQRcodeInfoCopyWithImpl<$Res, LoginQRcodeInfo>;
  @useResult
  $Res call({String? url, String? qrcode_key});
}

/// @nodoc
class _$LoginQRcodeInfoCopyWithImpl<$Res, $Val extends LoginQRcodeInfo>
    implements $LoginQRcodeInfoCopyWith<$Res> {
  _$LoginQRcodeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginQRcodeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? qrcode_key = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode_key: freezed == qrcode_key
          ? _value.qrcode_key
          : qrcode_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginQRcodeInfoImplCopyWith<$Res>
    implements $LoginQRcodeInfoCopyWith<$Res> {
  factory _$$LoginQRcodeInfoImplCopyWith(_$LoginQRcodeInfoImpl value,
          $Res Function(_$LoginQRcodeInfoImpl) then) =
      __$$LoginQRcodeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? qrcode_key});
}

/// @nodoc
class __$$LoginQRcodeInfoImplCopyWithImpl<$Res>
    extends _$LoginQRcodeInfoCopyWithImpl<$Res, _$LoginQRcodeInfoImpl>
    implements _$$LoginQRcodeInfoImplCopyWith<$Res> {
  __$$LoginQRcodeInfoImplCopyWithImpl(
      _$LoginQRcodeInfoImpl _value, $Res Function(_$LoginQRcodeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginQRcodeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? qrcode_key = freezed,
  }) {
    return _then(_$LoginQRcodeInfoImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      qrcode_key: freezed == qrcode_key
          ? _value.qrcode_key
          : qrcode_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginQRcodeInfoImpl extends _LoginQRcodeInfo {
  _$LoginQRcodeInfoImpl({this.url, this.qrcode_key}) : super._();

  factory _$LoginQRcodeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginQRcodeInfoImplFromJson(json);

  @override
  String? url;
//以该url作为内容生成二维码
  @override
  String? qrcode_key;

  @override
  String toString() {
    return 'LoginQRcodeInfo(url: $url, qrcode_key: $qrcode_key)';
  }

  /// Create a copy of LoginQRcodeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginQRcodeInfoImplCopyWith<_$LoginQRcodeInfoImpl> get copyWith =>
      __$$LoginQRcodeInfoImplCopyWithImpl<_$LoginQRcodeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginQRcodeInfoImplToJson(
      this,
    );
  }
}

abstract class _LoginQRcodeInfo extends LoginQRcodeInfo {
  factory _LoginQRcodeInfo({String? url, String? qrcode_key}) =
      _$LoginQRcodeInfoImpl;
  _LoginQRcodeInfo._() : super._();

  factory _LoginQRcodeInfo.fromJson(Map<String, dynamic> json) =
      _$LoginQRcodeInfoImpl.fromJson;

  @override
  String? get url;
  set url(String? value); //以该url作为内容生成二维码
  @override
  String? get qrcode_key; //以该url作为内容生成二维码
  set qrcode_key(String? value);

  /// Create a copy of LoginQRcodeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginQRcodeInfoImplCopyWith<_$LoginQRcodeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
