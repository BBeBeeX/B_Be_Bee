// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_password_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPasswordLoginResponse _$PostPasswordLoginResponseFromJson(
    Map<String, dynamic> json) {
  return _PostPasswordLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$PostPasswordLoginResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PostPasswordLoginResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this PostPasswordLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPasswordLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPasswordLoginResponseCopyWith<PostPasswordLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPasswordLoginResponseCopyWith<$Res> {
  factory $PostPasswordLoginResponseCopyWith(PostPasswordLoginResponse value,
          $Res Function(PostPasswordLoginResponse) then) =
      _$PostPasswordLoginResponseCopyWithImpl<$Res, PostPasswordLoginResponse>;
  @useResult
  $Res call({int code, String message, PostPasswordLoginResponseData data});

  $PostPasswordLoginResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PostPasswordLoginResponseCopyWithImpl<$Res,
        $Val extends PostPasswordLoginResponse>
    implements $PostPasswordLoginResponseCopyWith<$Res> {
  _$PostPasswordLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPasswordLoginResponse
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
              as PostPasswordLoginResponseData,
    ) as $Val);
  }

  /// Create a copy of PostPasswordLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostPasswordLoginResponseDataCopyWith<$Res> get data {
    return $PostPasswordLoginResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostPasswordLoginResponseImplCopyWith<$Res>
    implements $PostPasswordLoginResponseCopyWith<$Res> {
  factory _$$PostPasswordLoginResponseImplCopyWith(
          _$PostPasswordLoginResponseImpl value,
          $Res Function(_$PostPasswordLoginResponseImpl) then) =
      __$$PostPasswordLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, PostPasswordLoginResponseData data});

  @override
  $PostPasswordLoginResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostPasswordLoginResponseImplCopyWithImpl<$Res>
    extends _$PostPasswordLoginResponseCopyWithImpl<$Res,
        _$PostPasswordLoginResponseImpl>
    implements _$$PostPasswordLoginResponseImplCopyWith<$Res> {
  __$$PostPasswordLoginResponseImplCopyWithImpl(
      _$PostPasswordLoginResponseImpl _value,
      $Res Function(_$PostPasswordLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPasswordLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$PostPasswordLoginResponseImpl(
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
              as PostPasswordLoginResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPasswordLoginResponseImpl implements _PostPasswordLoginResponse {
  const _$PostPasswordLoginResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$PostPasswordLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPasswordLoginResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final PostPasswordLoginResponseData data;

  @override
  String toString() {
    return 'PostPasswordLoginResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPasswordLoginResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of PostPasswordLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPasswordLoginResponseImplCopyWith<_$PostPasswordLoginResponseImpl>
      get copyWith => __$$PostPasswordLoginResponseImplCopyWithImpl<
          _$PostPasswordLoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPasswordLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _PostPasswordLoginResponse implements PostPasswordLoginResponse {
  const factory _PostPasswordLoginResponse(
          {required final int code,
          required final String message,
          required final PostPasswordLoginResponseData data}) =
      _$PostPasswordLoginResponseImpl;

  factory _PostPasswordLoginResponse.fromJson(Map<String, dynamic> json) =
      _$PostPasswordLoginResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  PostPasswordLoginResponseData get data;

  /// Create a copy of PostPasswordLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPasswordLoginResponseImplCopyWith<_$PostPasswordLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostPasswordLoginResponseData _$PostPasswordLoginResponseDataFromJson(
    Map<String, dynamic> json) {
  return _PostPasswordLoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$PostPasswordLoginResponseData {
  int get status => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PostPasswordLoginResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPasswordLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPasswordLoginResponseDataCopyWith<PostPasswordLoginResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPasswordLoginResponseDataCopyWith<$Res> {
  factory $PostPasswordLoginResponseDataCopyWith(
          PostPasswordLoginResponseData value,
          $Res Function(PostPasswordLoginResponseData) then) =
      _$PostPasswordLoginResponseDataCopyWithImpl<$Res,
          PostPasswordLoginResponseData>;
  @useResult
  $Res call(
      {int status,
      String refresh_token,
      String message,
      int timestamp,
      String url});
}

/// @nodoc
class _$PostPasswordLoginResponseDataCopyWithImpl<$Res,
        $Val extends PostPasswordLoginResponseData>
    implements $PostPasswordLoginResponseDataCopyWith<$Res> {
  _$PostPasswordLoginResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPasswordLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? refresh_token = null,
    Object? message = null,
    Object? timestamp = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPasswordLoginResponseDataImplCopyWith<$Res>
    implements $PostPasswordLoginResponseDataCopyWith<$Res> {
  factory _$$PostPasswordLoginResponseDataImplCopyWith(
          _$PostPasswordLoginResponseDataImpl value,
          $Res Function(_$PostPasswordLoginResponseDataImpl) then) =
      __$$PostPasswordLoginResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String refresh_token,
      String message,
      int timestamp,
      String url});
}

/// @nodoc
class __$$PostPasswordLoginResponseDataImplCopyWithImpl<$Res>
    extends _$PostPasswordLoginResponseDataCopyWithImpl<$Res,
        _$PostPasswordLoginResponseDataImpl>
    implements _$$PostPasswordLoginResponseDataImplCopyWith<$Res> {
  __$$PostPasswordLoginResponseDataImplCopyWithImpl(
      _$PostPasswordLoginResponseDataImpl _value,
      $Res Function(_$PostPasswordLoginResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPasswordLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? refresh_token = null,
    Object? message = null,
    Object? timestamp = null,
    Object? url = null,
  }) {
    return _then(_$PostPasswordLoginResponseDataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPasswordLoginResponseDataImpl
    implements _PostPasswordLoginResponseData {
  const _$PostPasswordLoginResponseDataImpl(
      {required this.status,
      required this.refresh_token,
      required this.message,
      required this.timestamp,
      required this.url});

  factory _$PostPasswordLoginResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostPasswordLoginResponseDataImplFromJson(json);

  @override
  final int status;
  @override
  final String refresh_token;
  @override
  final String message;
  @override
  final int timestamp;
  @override
  final String url;

  @override
  String toString() {
    return 'PostPasswordLoginResponseData(status: $status, refresh_token: $refresh_token, message: $message, timestamp: $timestamp, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPasswordLoginResponseDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, refresh_token, message, timestamp, url);

  /// Create a copy of PostPasswordLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPasswordLoginResponseDataImplCopyWith<
          _$PostPasswordLoginResponseDataImpl>
      get copyWith => __$$PostPasswordLoginResponseDataImplCopyWithImpl<
          _$PostPasswordLoginResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPasswordLoginResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PostPasswordLoginResponseData
    implements PostPasswordLoginResponseData {
  const factory _PostPasswordLoginResponseData(
      {required final int status,
      required final String refresh_token,
      required final String message,
      required final int timestamp,
      required final String url}) = _$PostPasswordLoginResponseDataImpl;

  factory _PostPasswordLoginResponseData.fromJson(Map<String, dynamic> json) =
      _$PostPasswordLoginResponseDataImpl.fromJson;

  @override
  int get status;
  @override
  String get refresh_token;
  @override
  String get message;
  @override
  int get timestamp;
  @override
  String get url;

  /// Create a copy of PostPasswordLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPasswordLoginResponseDataImplCopyWith<
          _$PostPasswordLoginResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
