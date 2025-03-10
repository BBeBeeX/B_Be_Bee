// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_refresh_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostRefreshToken _$PostRefreshTokenFromJson(Map<String, dynamic> json) {
  return _PostRefreshToken.fromJson(json);
}

/// @nodoc
mixin _$PostRefreshToken {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get ttl => throw _privateConstructorUsedError;
  PostRefreshTokenData get data => throw _privateConstructorUsedError;

  /// Serializes this PostRefreshToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostRefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostRefreshTokenCopyWith<PostRefreshToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRefreshTokenCopyWith<$Res> {
  factory $PostRefreshTokenCopyWith(
          PostRefreshToken value, $Res Function(PostRefreshToken) then) =
      _$PostRefreshTokenCopyWithImpl<$Res, PostRefreshToken>;
  @useResult
  $Res call({int code, String message, int ttl, PostRefreshTokenData data});

  $PostRefreshTokenDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PostRefreshTokenCopyWithImpl<$Res, $Val extends PostRefreshToken>
    implements $PostRefreshTokenCopyWith<$Res> {
  _$PostRefreshTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostRefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ttl = null,
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
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostRefreshTokenData,
    ) as $Val);
  }

  /// Create a copy of PostRefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostRefreshTokenDataCopyWith<$Res> get data {
    return $PostRefreshTokenDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostRefreshTokenImplCopyWith<$Res>
    implements $PostRefreshTokenCopyWith<$Res> {
  factory _$$PostRefreshTokenImplCopyWith(_$PostRefreshTokenImpl value,
          $Res Function(_$PostRefreshTokenImpl) then) =
      __$$PostRefreshTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, int ttl, PostRefreshTokenData data});

  @override
  $PostRefreshTokenDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostRefreshTokenImplCopyWithImpl<$Res>
    extends _$PostRefreshTokenCopyWithImpl<$Res, _$PostRefreshTokenImpl>
    implements _$$PostRefreshTokenImplCopyWith<$Res> {
  __$$PostRefreshTokenImplCopyWithImpl(_$PostRefreshTokenImpl _value,
      $Res Function(_$PostRefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostRefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ttl = null,
    Object? data = null,
  }) {
    return _then(_$PostRefreshTokenImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostRefreshTokenData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostRefreshTokenImpl implements _PostRefreshToken {
  const _$PostRefreshTokenImpl(
      {required this.code,
      required this.message,
      required this.ttl,
      required this.data});

  factory _$PostRefreshTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostRefreshTokenImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final int ttl;
  @override
  final PostRefreshTokenData data;

  @override
  String toString() {
    return 'PostRefreshToken(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRefreshTokenImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of PostRefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRefreshTokenImplCopyWith<_$PostRefreshTokenImpl> get copyWith =>
      __$$PostRefreshTokenImplCopyWithImpl<_$PostRefreshTokenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostRefreshTokenImplToJson(
      this,
    );
  }
}

abstract class _PostRefreshToken implements PostRefreshToken {
  const factory _PostRefreshToken(
      {required final int code,
      required final String message,
      required final int ttl,
      required final PostRefreshTokenData data}) = _$PostRefreshTokenImpl;

  factory _PostRefreshToken.fromJson(Map<String, dynamic> json) =
      _$PostRefreshTokenImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  int get ttl;
  @override
  PostRefreshTokenData get data;

  /// Create a copy of PostRefreshToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostRefreshTokenImplCopyWith<_$PostRefreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostRefreshTokenData _$PostRefreshTokenDataFromJson(Map<String, dynamic> json) {
  return _PostRefreshTokenData.fromJson(json);
}

/// @nodoc
mixin _$PostRefreshTokenData {
  int get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  /// Serializes this PostRefreshTokenData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostRefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostRefreshTokenDataCopyWith<PostRefreshTokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRefreshTokenDataCopyWith<$Res> {
  factory $PostRefreshTokenDataCopyWith(PostRefreshTokenData value,
          $Res Function(PostRefreshTokenData) then) =
      _$PostRefreshTokenDataCopyWithImpl<$Res, PostRefreshTokenData>;
  @useResult
  $Res call({int status, String? message, String refresh_token});
}

/// @nodoc
class _$PostRefreshTokenDataCopyWithImpl<$Res,
        $Val extends PostRefreshTokenData>
    implements $PostRefreshTokenDataCopyWith<$Res> {
  _$PostRefreshTokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostRefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostRefreshTokenDataImplCopyWith<$Res>
    implements $PostRefreshTokenDataCopyWith<$Res> {
  factory _$$PostRefreshTokenDataImplCopyWith(_$PostRefreshTokenDataImpl value,
          $Res Function(_$PostRefreshTokenDataImpl) then) =
      __$$PostRefreshTokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String? message, String refresh_token});
}

/// @nodoc
class __$$PostRefreshTokenDataImplCopyWithImpl<$Res>
    extends _$PostRefreshTokenDataCopyWithImpl<$Res, _$PostRefreshTokenDataImpl>
    implements _$$PostRefreshTokenDataImplCopyWith<$Res> {
  __$$PostRefreshTokenDataImplCopyWithImpl(_$PostRefreshTokenDataImpl _value,
      $Res Function(_$PostRefreshTokenDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostRefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? refresh_token = null,
  }) {
    return _then(_$PostRefreshTokenDataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostRefreshTokenDataImpl implements _PostRefreshTokenData {
  const _$PostRefreshTokenDataImpl(
      {required this.status, this.message, required this.refresh_token});

  factory _$PostRefreshTokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostRefreshTokenDataImplFromJson(json);

  @override
  final int status;
  @override
  final String? message;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'PostRefreshTokenData(status: $status, message: $message, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRefreshTokenDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, refresh_token);

  /// Create a copy of PostRefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRefreshTokenDataImplCopyWith<_$PostRefreshTokenDataImpl>
      get copyWith =>
          __$$PostRefreshTokenDataImplCopyWithImpl<_$PostRefreshTokenDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostRefreshTokenDataImplToJson(
      this,
    );
  }
}

abstract class _PostRefreshTokenData implements PostRefreshTokenData {
  const factory _PostRefreshTokenData(
      {required final int status,
      final String? message,
      required final String refresh_token}) = _$PostRefreshTokenDataImpl;

  factory _PostRefreshTokenData.fromJson(Map<String, dynamic> json) =
      _$PostRefreshTokenDataImpl.fromJson;

  @override
  int get status;
  @override
  String? get message;
  @override
  String get refresh_token;

  /// Create a copy of PostRefreshTokenData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostRefreshTokenDataImplCopyWith<_$PostRefreshTokenDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
