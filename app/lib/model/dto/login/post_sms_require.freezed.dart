// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_sms_require.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostSmsRequireResponse _$PostSmsRequireResponseFromJson(
    Map<String, dynamic> json) {
  return _PostSmsRequireResponse.fromJson(json);
}

/// @nodoc
mixin _$PostSmsRequireResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PostSmsRequireResponseData? get data => throw _privateConstructorUsedError;

  /// Serializes this PostSmsRequireResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostSmsRequireResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostSmsRequireResponseCopyWith<PostSmsRequireResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSmsRequireResponseCopyWith<$Res> {
  factory $PostSmsRequireResponseCopyWith(PostSmsRequireResponse value,
          $Res Function(PostSmsRequireResponse) then) =
      _$PostSmsRequireResponseCopyWithImpl<$Res, PostSmsRequireResponse>;
  @useResult
  $Res call({int code, String message, PostSmsRequireResponseData? data});

  $PostSmsRequireResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PostSmsRequireResponseCopyWithImpl<$Res,
        $Val extends PostSmsRequireResponse>
    implements $PostSmsRequireResponseCopyWith<$Res> {
  _$PostSmsRequireResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostSmsRequireResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostSmsRequireResponseData?,
    ) as $Val);
  }

  /// Create a copy of PostSmsRequireResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostSmsRequireResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PostSmsRequireResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostSmsRequireResponseImplCopyWith<$Res>
    implements $PostSmsRequireResponseCopyWith<$Res> {
  factory _$$PostSmsRequireResponseImplCopyWith(
          _$PostSmsRequireResponseImpl value,
          $Res Function(_$PostSmsRequireResponseImpl) then) =
      __$$PostSmsRequireResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, PostSmsRequireResponseData? data});

  @override
  $PostSmsRequireResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PostSmsRequireResponseImplCopyWithImpl<$Res>
    extends _$PostSmsRequireResponseCopyWithImpl<$Res,
        _$PostSmsRequireResponseImpl>
    implements _$$PostSmsRequireResponseImplCopyWith<$Res> {
  __$$PostSmsRequireResponseImplCopyWithImpl(
      _$PostSmsRequireResponseImpl _value,
      $Res Function(_$PostSmsRequireResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostSmsRequireResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$PostSmsRequireResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PostSmsRequireResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSmsRequireResponseImpl implements _PostSmsRequireResponse {
  const _$PostSmsRequireResponseImpl(
      {required this.code, required this.message, this.data});

  factory _$PostSmsRequireResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostSmsRequireResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final PostSmsRequireResponseData? data;

  @override
  String toString() {
    return 'PostSmsRequireResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSmsRequireResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of PostSmsRequireResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSmsRequireResponseImplCopyWith<_$PostSmsRequireResponseImpl>
      get copyWith => __$$PostSmsRequireResponseImplCopyWithImpl<
          _$PostSmsRequireResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSmsRequireResponseImplToJson(
      this,
    );
  }
}

abstract class _PostSmsRequireResponse implements PostSmsRequireResponse {
  const factory _PostSmsRequireResponse(
      {required final int code,
      required final String message,
      final PostSmsRequireResponseData? data}) = _$PostSmsRequireResponseImpl;

  factory _PostSmsRequireResponse.fromJson(Map<String, dynamic> json) =
      _$PostSmsRequireResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  PostSmsRequireResponseData? get data;

  /// Create a copy of PostSmsRequireResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostSmsRequireResponseImplCopyWith<_$PostSmsRequireResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostSmsRequireResponseData _$PostSmsRequireResponseDataFromJson(
    Map<String, dynamic> json) {
  return _PostSmsRequireResponseData.fromJson(json);
}

/// @nodoc
mixin _$PostSmsRequireResponseData {
  String get captcha_key => throw _privateConstructorUsedError;

  /// Serializes this PostSmsRequireResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostSmsRequireResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostSmsRequireResponseDataCopyWith<PostSmsRequireResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSmsRequireResponseDataCopyWith<$Res> {
  factory $PostSmsRequireResponseDataCopyWith(PostSmsRequireResponseData value,
          $Res Function(PostSmsRequireResponseData) then) =
      _$PostSmsRequireResponseDataCopyWithImpl<$Res,
          PostSmsRequireResponseData>;
  @useResult
  $Res call({String captcha_key});
}

/// @nodoc
class _$PostSmsRequireResponseDataCopyWithImpl<$Res,
        $Val extends PostSmsRequireResponseData>
    implements $PostSmsRequireResponseDataCopyWith<$Res> {
  _$PostSmsRequireResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostSmsRequireResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captcha_key = null,
  }) {
    return _then(_value.copyWith(
      captcha_key: null == captcha_key
          ? _value.captcha_key
          : captcha_key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostSmsRequireResponseDataImplCopyWith<$Res>
    implements $PostSmsRequireResponseDataCopyWith<$Res> {
  factory _$$PostSmsRequireResponseDataImplCopyWith(
          _$PostSmsRequireResponseDataImpl value,
          $Res Function(_$PostSmsRequireResponseDataImpl) then) =
      __$$PostSmsRequireResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String captcha_key});
}

/// @nodoc
class __$$PostSmsRequireResponseDataImplCopyWithImpl<$Res>
    extends _$PostSmsRequireResponseDataCopyWithImpl<$Res,
        _$PostSmsRequireResponseDataImpl>
    implements _$$PostSmsRequireResponseDataImplCopyWith<$Res> {
  __$$PostSmsRequireResponseDataImplCopyWithImpl(
      _$PostSmsRequireResponseDataImpl _value,
      $Res Function(_$PostSmsRequireResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostSmsRequireResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captcha_key = null,
  }) {
    return _then(_$PostSmsRequireResponseDataImpl(
      captcha_key: null == captcha_key
          ? _value.captcha_key
          : captcha_key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSmsRequireResponseDataImpl implements _PostSmsRequireResponseData {
  const _$PostSmsRequireResponseDataImpl({required this.captcha_key});

  factory _$PostSmsRequireResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostSmsRequireResponseDataImplFromJson(json);

  @override
  final String captcha_key;

  @override
  String toString() {
    return 'PostSmsRequireResponseData(captcha_key: $captcha_key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSmsRequireResponseDataImpl &&
            (identical(other.captcha_key, captcha_key) ||
                other.captcha_key == captcha_key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, captcha_key);

  /// Create a copy of PostSmsRequireResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSmsRequireResponseDataImplCopyWith<_$PostSmsRequireResponseDataImpl>
      get copyWith => __$$PostSmsRequireResponseDataImplCopyWithImpl<
          _$PostSmsRequireResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSmsRequireResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PostSmsRequireResponseData
    implements PostSmsRequireResponseData {
  const factory _PostSmsRequireResponseData(
      {required final String captcha_key}) = _$PostSmsRequireResponseDataImpl;

  factory _PostSmsRequireResponseData.fromJson(Map<String, dynamic> json) =
      _$PostSmsRequireResponseDataImpl.fromJson;

  @override
  String get captcha_key;

  /// Create a copy of PostSmsRequireResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostSmsRequireResponseDataImplCopyWith<_$PostSmsRequireResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
