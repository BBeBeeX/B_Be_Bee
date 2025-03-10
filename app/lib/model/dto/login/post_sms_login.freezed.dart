// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_sms_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostSmsLoginResponse _$PostSmsLoginResponseFromJson(Map<String, dynamic> json) {
  return _PostSmsLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$PostSmsLoginResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PostSmsLoginResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this PostSmsLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostSmsLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostSmsLoginResponseCopyWith<PostSmsLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSmsLoginResponseCopyWith<$Res> {
  factory $PostSmsLoginResponseCopyWith(PostSmsLoginResponse value,
          $Res Function(PostSmsLoginResponse) then) =
      _$PostSmsLoginResponseCopyWithImpl<$Res, PostSmsLoginResponse>;
  @useResult
  $Res call({int code, String message, PostSmsLoginResponseData data});

  $PostSmsLoginResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PostSmsLoginResponseCopyWithImpl<$Res,
        $Val extends PostSmsLoginResponse>
    implements $PostSmsLoginResponseCopyWith<$Res> {
  _$PostSmsLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostSmsLoginResponse
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
              as PostSmsLoginResponseData,
    ) as $Val);
  }

  /// Create a copy of PostSmsLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostSmsLoginResponseDataCopyWith<$Res> get data {
    return $PostSmsLoginResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostSmsLoginResponseImplCopyWith<$Res>
    implements $PostSmsLoginResponseCopyWith<$Res> {
  factory _$$PostSmsLoginResponseImplCopyWith(_$PostSmsLoginResponseImpl value,
          $Res Function(_$PostSmsLoginResponseImpl) then) =
      __$$PostSmsLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, PostSmsLoginResponseData data});

  @override
  $PostSmsLoginResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostSmsLoginResponseImplCopyWithImpl<$Res>
    extends _$PostSmsLoginResponseCopyWithImpl<$Res, _$PostSmsLoginResponseImpl>
    implements _$$PostSmsLoginResponseImplCopyWith<$Res> {
  __$$PostSmsLoginResponseImplCopyWithImpl(_$PostSmsLoginResponseImpl _value,
      $Res Function(_$PostSmsLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostSmsLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$PostSmsLoginResponseImpl(
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
              as PostSmsLoginResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSmsLoginResponseImpl implements _PostSmsLoginResponse {
  const _$PostSmsLoginResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$PostSmsLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostSmsLoginResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final PostSmsLoginResponseData data;

  @override
  String toString() {
    return 'PostSmsLoginResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSmsLoginResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of PostSmsLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSmsLoginResponseImplCopyWith<_$PostSmsLoginResponseImpl>
      get copyWith =>
          __$$PostSmsLoginResponseImplCopyWithImpl<_$PostSmsLoginResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSmsLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _PostSmsLoginResponse implements PostSmsLoginResponse {
  const factory _PostSmsLoginResponse(
          {required final int code,
          required final String message,
          required final PostSmsLoginResponseData data}) =
      _$PostSmsLoginResponseImpl;

  factory _PostSmsLoginResponse.fromJson(Map<String, dynamic> json) =
      _$PostSmsLoginResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  PostSmsLoginResponseData get data;

  /// Create a copy of PostSmsLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostSmsLoginResponseImplCopyWith<_$PostSmsLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostSmsLoginResponseData _$PostSmsLoginResponseDataFromJson(
    Map<String, dynamic> json) {
  return _PostSmsLoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$PostSmsLoginResponseData {
  bool get is_new => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  /// Serializes this PostSmsLoginResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostSmsLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostSmsLoginResponseDataCopyWith<PostSmsLoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSmsLoginResponseDataCopyWith<$Res> {
  factory $PostSmsLoginResponseDataCopyWith(PostSmsLoginResponseData value,
          $Res Function(PostSmsLoginResponseData) then) =
      _$PostSmsLoginResponseDataCopyWithImpl<$Res, PostSmsLoginResponseData>;
  @useResult
  $Res call({bool is_new, int status, String url, String refresh_token});
}

/// @nodoc
class _$PostSmsLoginResponseDataCopyWithImpl<$Res,
        $Val extends PostSmsLoginResponseData>
    implements $PostSmsLoginResponseDataCopyWith<$Res> {
  _$PostSmsLoginResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostSmsLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_new = null,
    Object? status = null,
    Object? url = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      is_new: null == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostSmsLoginResponseDataImplCopyWith<$Res>
    implements $PostSmsLoginResponseDataCopyWith<$Res> {
  factory _$$PostSmsLoginResponseDataImplCopyWith(
          _$PostSmsLoginResponseDataImpl value,
          $Res Function(_$PostSmsLoginResponseDataImpl) then) =
      __$$PostSmsLoginResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool is_new, int status, String url, String refresh_token});
}

/// @nodoc
class __$$PostSmsLoginResponseDataImplCopyWithImpl<$Res>
    extends _$PostSmsLoginResponseDataCopyWithImpl<$Res,
        _$PostSmsLoginResponseDataImpl>
    implements _$$PostSmsLoginResponseDataImplCopyWith<$Res> {
  __$$PostSmsLoginResponseDataImplCopyWithImpl(
      _$PostSmsLoginResponseDataImpl _value,
      $Res Function(_$PostSmsLoginResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostSmsLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_new = null,
    Object? status = null,
    Object? url = null,
    Object? refresh_token = null,
  }) {
    return _then(_$PostSmsLoginResponseDataImpl(
      is_new: null == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSmsLoginResponseDataImpl implements _PostSmsLoginResponseData {
  const _$PostSmsLoginResponseDataImpl(
      {required this.is_new,
      required this.status,
      required this.url,
      required this.refresh_token});

  factory _$PostSmsLoginResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostSmsLoginResponseDataImplFromJson(json);

  @override
  final bool is_new;
  @override
  final int status;
  @override
  final String url;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'PostSmsLoginResponseData(is_new: $is_new, status: $status, url: $url, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSmsLoginResponseDataImpl &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, is_new, status, url, refresh_token);

  /// Create a copy of PostSmsLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSmsLoginResponseDataImplCopyWith<_$PostSmsLoginResponseDataImpl>
      get copyWith => __$$PostSmsLoginResponseDataImplCopyWithImpl<
          _$PostSmsLoginResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSmsLoginResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PostSmsLoginResponseData implements PostSmsLoginResponseData {
  const factory _PostSmsLoginResponseData(
      {required final bool is_new,
      required final int status,
      required final String url,
      required final String refresh_token}) = _$PostSmsLoginResponseDataImpl;

  factory _PostSmsLoginResponseData.fromJson(Map<String, dynamic> json) =
      _$PostSmsLoginResponseDataImpl.fromJson;

  @override
  bool get is_new;
  @override
  int get status;
  @override
  String get url;
  @override
  String get refresh_token;

  /// Create a copy of PostSmsLoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostSmsLoginResponseDataImplCopyWith<_$PostSmsLoginResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
