// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cookie_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCookieInfo _$GetCookieInfoFromJson(Map<String, dynamic> json) {
  return _GetCookieInfo.fromJson(json);
}

/// @nodoc
mixin _$GetCookieInfo {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this GetCookieInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCookieInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCookieInfoCopyWith<GetCookieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCookieInfoCopyWith<$Res> {
  factory $GetCookieInfoCopyWith(
          GetCookieInfo value, $Res Function(GetCookieInfo) then) =
      _$GetCookieInfoCopyWithImpl<$Res, GetCookieInfo>;
  @useResult
  $Res call({int? code, String? message, int? ttl, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetCookieInfoCopyWithImpl<$Res, $Val extends GetCookieInfo>
    implements $GetCookieInfoCopyWith<$Res> {
  _$GetCookieInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCookieInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of GetCookieInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetCookieInfoImplCopyWith<$Res>
    implements $GetCookieInfoCopyWith<$Res> {
  factory _$$GetCookieInfoImplCopyWith(
          _$GetCookieInfoImpl value, $Res Function(_$GetCookieInfoImpl) then) =
      __$$GetCookieInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCookieInfoImplCopyWithImpl<$Res>
    extends _$GetCookieInfoCopyWithImpl<$Res, _$GetCookieInfoImpl>
    implements _$$GetCookieInfoImplCopyWith<$Res> {
  __$$GetCookieInfoImplCopyWithImpl(
      _$GetCookieInfoImpl _value, $Res Function(_$GetCookieInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCookieInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetCookieInfoImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCookieInfoImpl extends _GetCookieInfo {
  const _$GetCookieInfoImpl({this.code, this.message, this.ttl, this.data})
      : super._();

  factory _$GetCookieInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCookieInfoImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final Data? data;

  @override
  String toString() {
    return 'GetCookieInfo(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCookieInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of GetCookieInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCookieInfoImplCopyWith<_$GetCookieInfoImpl> get copyWith =>
      __$$GetCookieInfoImplCopyWithImpl<_$GetCookieInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCookieInfoImplToJson(
      this,
    );
  }
}

abstract class _GetCookieInfo extends GetCookieInfo {
  const factory _GetCookieInfo(
      {final int? code,
      final String? message,
      final int? ttl,
      final Data? data}) = _$GetCookieInfoImpl;
  const _GetCookieInfo._() : super._();

  factory _GetCookieInfo.fromJson(Map<String, dynamic> json) =
      _$GetCookieInfoImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  Data? get data;

  /// Create a copy of GetCookieInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCookieInfoImplCopyWith<_$GetCookieInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool get refresh => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({bool refresh, int timestamp});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool refresh, int timestamp});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? timestamp = null,
  }) {
    return _then(_$DataImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({required this.refresh, required this.timestamp});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final bool refresh;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'Data(refresh: $refresh, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refresh, timestamp);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final bool refresh, required final int timestamp}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  bool get refresh;
  @override
  int get timestamp;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
