// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_login_key_hash_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordLoginKeyHashResponse _$PasswordLoginKeyHashResponseFromJson(
    Map<String, dynamic> json) {
  return _PasswordLoginKeyHashResponse.fromJson(json);
}

/// @nodoc
mixin _$PasswordLoginKeyHashResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get ttl => throw _privateConstructorUsedError;
  PasswordLoginKeyHashResponseData get data =>
      throw _privateConstructorUsedError;

  /// Serializes this PasswordLoginKeyHashResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordLoginKeyHashResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordLoginKeyHashResponseCopyWith<PasswordLoginKeyHashResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordLoginKeyHashResponseCopyWith<$Res> {
  factory $PasswordLoginKeyHashResponseCopyWith(
          PasswordLoginKeyHashResponse value,
          $Res Function(PasswordLoginKeyHashResponse) then) =
      _$PasswordLoginKeyHashResponseCopyWithImpl<$Res,
          PasswordLoginKeyHashResponse>;
  @useResult
  $Res call(
      {int code,
      String message,
      int ttl,
      PasswordLoginKeyHashResponseData data});

  $PasswordLoginKeyHashResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PasswordLoginKeyHashResponseCopyWithImpl<$Res,
        $Val extends PasswordLoginKeyHashResponse>
    implements $PasswordLoginKeyHashResponseCopyWith<$Res> {
  _$PasswordLoginKeyHashResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordLoginKeyHashResponse
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
              as PasswordLoginKeyHashResponseData,
    ) as $Val);
  }

  /// Create a copy of PasswordLoginKeyHashResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordLoginKeyHashResponseDataCopyWith<$Res> get data {
    return $PasswordLoginKeyHashResponseDataCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PasswordLoginKeyHashResponseImplCopyWith<$Res>
    implements $PasswordLoginKeyHashResponseCopyWith<$Res> {
  factory _$$PasswordLoginKeyHashResponseImplCopyWith(
          _$PasswordLoginKeyHashResponseImpl value,
          $Res Function(_$PasswordLoginKeyHashResponseImpl) then) =
      __$$PasswordLoginKeyHashResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      int ttl,
      PasswordLoginKeyHashResponseData data});

  @override
  $PasswordLoginKeyHashResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PasswordLoginKeyHashResponseImplCopyWithImpl<$Res>
    extends _$PasswordLoginKeyHashResponseCopyWithImpl<$Res,
        _$PasswordLoginKeyHashResponseImpl>
    implements _$$PasswordLoginKeyHashResponseImplCopyWith<$Res> {
  __$$PasswordLoginKeyHashResponseImplCopyWithImpl(
      _$PasswordLoginKeyHashResponseImpl _value,
      $Res Function(_$PasswordLoginKeyHashResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordLoginKeyHashResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ttl = null,
    Object? data = null,
  }) {
    return _then(_$PasswordLoginKeyHashResponseImpl(
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
              as PasswordLoginKeyHashResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordLoginKeyHashResponseImpl
    implements _PasswordLoginKeyHashResponse {
  const _$PasswordLoginKeyHashResponseImpl(
      {required this.code,
      required this.message,
      required this.ttl,
      required this.data});

  factory _$PasswordLoginKeyHashResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasswordLoginKeyHashResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final int ttl;
  @override
  final PasswordLoginKeyHashResponseData data;

  @override
  String toString() {
    return 'PasswordLoginKeyHashResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordLoginKeyHashResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of PasswordLoginKeyHashResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordLoginKeyHashResponseImplCopyWith<
          _$PasswordLoginKeyHashResponseImpl>
      get copyWith => __$$PasswordLoginKeyHashResponseImplCopyWithImpl<
          _$PasswordLoginKeyHashResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordLoginKeyHashResponseImplToJson(
      this,
    );
  }
}

abstract class _PasswordLoginKeyHashResponse
    implements PasswordLoginKeyHashResponse {
  const factory _PasswordLoginKeyHashResponse(
          {required final int code,
          required final String message,
          required final int ttl,
          required final PasswordLoginKeyHashResponseData data}) =
      _$PasswordLoginKeyHashResponseImpl;

  factory _PasswordLoginKeyHashResponse.fromJson(Map<String, dynamic> json) =
      _$PasswordLoginKeyHashResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  int get ttl;
  @override
  PasswordLoginKeyHashResponseData get data;

  /// Create a copy of PasswordLoginKeyHashResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordLoginKeyHashResponseImplCopyWith<
          _$PasswordLoginKeyHashResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PasswordLoginKeyHashResponseData _$PasswordLoginKeyHashResponseDataFromJson(
    Map<String, dynamic> json) {
  return _PasswordLoginKeyHashResponseData.fromJson(json);
}

/// @nodoc
mixin _$PasswordLoginKeyHashResponseData {
  String get hash => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  /// Serializes this PasswordLoginKeyHashResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordLoginKeyHashResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordLoginKeyHashResponseDataCopyWith<PasswordLoginKeyHashResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordLoginKeyHashResponseDataCopyWith<$Res> {
  factory $PasswordLoginKeyHashResponseDataCopyWith(
          PasswordLoginKeyHashResponseData value,
          $Res Function(PasswordLoginKeyHashResponseData) then) =
      _$PasswordLoginKeyHashResponseDataCopyWithImpl<$Res,
          PasswordLoginKeyHashResponseData>;
  @useResult
  $Res call({String hash, String key});
}

/// @nodoc
class _$PasswordLoginKeyHashResponseDataCopyWithImpl<$Res,
        $Val extends PasswordLoginKeyHashResponseData>
    implements $PasswordLoginKeyHashResponseDataCopyWith<$Res> {
  _$PasswordLoginKeyHashResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordLoginKeyHashResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordLoginKeyHashResponseDataImplCopyWith<$Res>
    implements $PasswordLoginKeyHashResponseDataCopyWith<$Res> {
  factory _$$PasswordLoginKeyHashResponseDataImplCopyWith(
          _$PasswordLoginKeyHashResponseDataImpl value,
          $Res Function(_$PasswordLoginKeyHashResponseDataImpl) then) =
      __$$PasswordLoginKeyHashResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash, String key});
}

/// @nodoc
class __$$PasswordLoginKeyHashResponseDataImplCopyWithImpl<$Res>
    extends _$PasswordLoginKeyHashResponseDataCopyWithImpl<$Res,
        _$PasswordLoginKeyHashResponseDataImpl>
    implements _$$PasswordLoginKeyHashResponseDataImplCopyWith<$Res> {
  __$$PasswordLoginKeyHashResponseDataImplCopyWithImpl(
      _$PasswordLoginKeyHashResponseDataImpl _value,
      $Res Function(_$PasswordLoginKeyHashResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordLoginKeyHashResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? key = null,
  }) {
    return _then(_$PasswordLoginKeyHashResponseDataImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordLoginKeyHashResponseDataImpl
    implements _PasswordLoginKeyHashResponseData {
  const _$PasswordLoginKeyHashResponseDataImpl(
      {required this.hash, required this.key});

  factory _$PasswordLoginKeyHashResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PasswordLoginKeyHashResponseDataImplFromJson(json);

  @override
  final String hash;
  @override
  final String key;

  @override
  String toString() {
    return 'PasswordLoginKeyHashResponseData(hash: $hash, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordLoginKeyHashResponseDataImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hash, key);

  /// Create a copy of PasswordLoginKeyHashResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordLoginKeyHashResponseDataImplCopyWith<
          _$PasswordLoginKeyHashResponseDataImpl>
      get copyWith => __$$PasswordLoginKeyHashResponseDataImplCopyWithImpl<
          _$PasswordLoginKeyHashResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordLoginKeyHashResponseDataImplToJson(
      this,
    );
  }
}

abstract class _PasswordLoginKeyHashResponseData
    implements PasswordLoginKeyHashResponseData {
  const factory _PasswordLoginKeyHashResponseData(
      {required final String hash,
      required final String key}) = _$PasswordLoginKeyHashResponseDataImpl;

  factory _PasswordLoginKeyHashResponseData.fromJson(
          Map<String, dynamic> json) =
      _$PasswordLoginKeyHashResponseDataImpl.fromJson;

  @override
  String get hash;
  @override
  String get key;

  /// Create a copy of PasswordLoginKeyHashResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordLoginKeyHashResponseDataImplCopyWith<
          _$PasswordLoginKeyHashResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
