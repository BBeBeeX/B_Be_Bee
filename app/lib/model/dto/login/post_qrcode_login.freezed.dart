// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_qrcode_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostQrcodeLogin _$PostQrcodeLoginFromJson(Map<String, dynamic> json) {
  return _PostQrcodeLogin.fromJson(json);
}

/// @nodoc
mixin _$PostQrcodeLogin {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PostQrcodeLoginData get data => throw _privateConstructorUsedError;

  /// Serializes this PostQrcodeLogin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostQrcodeLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostQrcodeLoginCopyWith<PostQrcodeLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQrcodeLoginCopyWith<$Res> {
  factory $PostQrcodeLoginCopyWith(
          PostQrcodeLogin value, $Res Function(PostQrcodeLogin) then) =
      _$PostQrcodeLoginCopyWithImpl<$Res, PostQrcodeLogin>;
  @useResult
  $Res call({int code, String message, PostQrcodeLoginData data});

  $PostQrcodeLoginDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PostQrcodeLoginCopyWithImpl<$Res, $Val extends PostQrcodeLogin>
    implements $PostQrcodeLoginCopyWith<$Res> {
  _$PostQrcodeLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostQrcodeLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostQrcodeLoginData,
    ) as $Val);
  }

  /// Create a copy of PostQrcodeLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostQrcodeLoginDataCopyWith<$Res> get data {
    return $PostQrcodeLoginDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostQrcodeLoginImplCopyWith<$Res>
    implements $PostQrcodeLoginCopyWith<$Res> {
  factory _$$PostQrcodeLoginImplCopyWith(_$PostQrcodeLoginImpl value,
          $Res Function(_$PostQrcodeLoginImpl) then) =
      __$$PostQrcodeLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, PostQrcodeLoginData data});

  @override
  $PostQrcodeLoginDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostQrcodeLoginImplCopyWithImpl<$Res>
    extends _$PostQrcodeLoginCopyWithImpl<$Res, _$PostQrcodeLoginImpl>
    implements _$$PostQrcodeLoginImplCopyWith<$Res> {
  __$$PostQrcodeLoginImplCopyWithImpl(
      _$PostQrcodeLoginImpl _value, $Res Function(_$PostQrcodeLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostQrcodeLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$PostQrcodeLoginImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostQrcodeLoginData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostQrcodeLoginImpl implements _PostQrcodeLogin {
  const _$PostQrcodeLoginImpl(
      {required this.code, required this.message, required this.data});

  factory _$PostQrcodeLoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostQrcodeLoginImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final PostQrcodeLoginData data;

  @override
  String toString() {
    return 'PostQrcodeLogin(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostQrcodeLoginImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of PostQrcodeLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostQrcodeLoginImplCopyWith<_$PostQrcodeLoginImpl> get copyWith =>
      __$$PostQrcodeLoginImplCopyWithImpl<_$PostQrcodeLoginImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostQrcodeLoginImplToJson(
      this,
    );
  }
}

abstract class _PostQrcodeLogin implements PostQrcodeLogin {
  const factory _PostQrcodeLogin(
      {required final int code,
      required final String message,
      required final PostQrcodeLoginData data}) = _$PostQrcodeLoginImpl;

  factory _PostQrcodeLogin.fromJson(Map<String, dynamic> json) =
      _$PostQrcodeLoginImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  PostQrcodeLoginData get data;

  /// Create a copy of PostQrcodeLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostQrcodeLoginImplCopyWith<_$PostQrcodeLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostQrcodeLoginData _$PostQrcodeLoginDataFromJson(Map<String, dynamic> json) {
  return _PostQrcodeLoginData.fromJson(json);
}

/// @nodoc
mixin _$PostQrcodeLoginData {
  String? get url => throw _privateConstructorUsedError;
  String? get refresh_token => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PostQrcodeLoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostQrcodeLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostQrcodeLoginDataCopyWith<PostQrcodeLoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQrcodeLoginDataCopyWith<$Res> {
  factory $PostQrcodeLoginDataCopyWith(
          PostQrcodeLoginData value, $Res Function(PostQrcodeLoginData) then) =
      _$PostQrcodeLoginDataCopyWithImpl<$Res, PostQrcodeLoginData>;
  @useResult
  $Res call(
      {String? url,
      String? refresh_token,
      int? timestamp,
      int? code,
      String? message});
}

/// @nodoc
class _$PostQrcodeLoginDataCopyWithImpl<$Res, $Val extends PostQrcodeLoginData>
    implements $PostQrcodeLoginDataCopyWith<$Res> {
  _$PostQrcodeLoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostQrcodeLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? refresh_token = freezed,
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostQrcodeLoginDataImplCopyWith<$Res>
    implements $PostQrcodeLoginDataCopyWith<$Res> {
  factory _$$PostQrcodeLoginDataImplCopyWith(_$PostQrcodeLoginDataImpl value,
          $Res Function(_$PostQrcodeLoginDataImpl) then) =
      __$$PostQrcodeLoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String? refresh_token,
      int? timestamp,
      int? code,
      String? message});
}

/// @nodoc
class __$$PostQrcodeLoginDataImplCopyWithImpl<$Res>
    extends _$PostQrcodeLoginDataCopyWithImpl<$Res, _$PostQrcodeLoginDataImpl>
    implements _$$PostQrcodeLoginDataImplCopyWith<$Res> {
  __$$PostQrcodeLoginDataImplCopyWithImpl(_$PostQrcodeLoginDataImpl _value,
      $Res Function(_$PostQrcodeLoginDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostQrcodeLoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? refresh_token = freezed,
    Object? timestamp = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PostQrcodeLoginDataImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: freezed == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostQrcodeLoginDataImpl implements _PostQrcodeLoginData {
  const _$PostQrcodeLoginDataImpl(
      {this.url, this.refresh_token, this.timestamp, this.code, this.message});

  factory _$PostQrcodeLoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostQrcodeLoginDataImplFromJson(json);

  @override
  final String? url;
  @override
  final String? refresh_token;
  @override
  final int? timestamp;
  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostQrcodeLoginData(url: $url, refresh_token: $refresh_token, timestamp: $timestamp, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostQrcodeLoginDataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, refresh_token, timestamp, code, message);

  /// Create a copy of PostQrcodeLoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostQrcodeLoginDataImplCopyWith<_$PostQrcodeLoginDataImpl> get copyWith =>
      __$$PostQrcodeLoginDataImplCopyWithImpl<_$PostQrcodeLoginDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostQrcodeLoginDataImplToJson(
      this,
    );
  }
}

abstract class _PostQrcodeLoginData implements PostQrcodeLoginData {
  const factory _PostQrcodeLoginData(
      {final String? url,
      final String? refresh_token,
      final int? timestamp,
      final int? code,
      final String? message}) = _$PostQrcodeLoginDataImpl;

  factory _PostQrcodeLoginData.fromJson(Map<String, dynamic> json) =
      _$PostQrcodeLoginDataImpl.fromJson;

  @override
  String? get url;
  @override
  String? get refresh_token;
  @override
  int? get timestamp;
  @override
  int? get code;
  @override
  String? get message;

  /// Create a copy of PostQrcodeLoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostQrcodeLoginDataImplCopyWith<_$PostQrcodeLoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
