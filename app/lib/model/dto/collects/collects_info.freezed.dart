// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCollectsInfo _$ResponseCollectsInfoFromJson(Map<String, dynamic> json) {
  return _ResponseCollectsInfo.fromJson(json);
}

/// @nodoc
mixin _$ResponseCollectsInfo {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  CollectsDataDto? get data => throw _privateConstructorUsedError;

  /// Serializes this ResponseCollectsInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCollectsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCollectsInfoCopyWith<ResponseCollectsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCollectsInfoCopyWith<$Res> {
  factory $ResponseCollectsInfoCopyWith(ResponseCollectsInfo value,
          $Res Function(ResponseCollectsInfo) then) =
      _$ResponseCollectsInfoCopyWithImpl<$Res, ResponseCollectsInfo>;
  @useResult
  $Res call({int? code, String? message, int? ttl, CollectsDataDto? data});

  $CollectsDataDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseCollectsInfoCopyWithImpl<$Res,
        $Val extends ResponseCollectsInfo>
    implements $ResponseCollectsInfoCopyWith<$Res> {
  _$ResponseCollectsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCollectsInfo
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
              as CollectsDataDto?,
    ) as $Val);
  }

  /// Create a copy of ResponseCollectsInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectsDataDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CollectsDataDtoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCollectsInfoImplCopyWith<$Res>
    implements $ResponseCollectsInfoCopyWith<$Res> {
  factory _$$ResponseCollectsInfoImplCopyWith(_$ResponseCollectsInfoImpl value,
          $Res Function(_$ResponseCollectsInfoImpl) then) =
      __$$ResponseCollectsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, CollectsDataDto? data});

  @override
  $CollectsDataDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseCollectsInfoImplCopyWithImpl<$Res>
    extends _$ResponseCollectsInfoCopyWithImpl<$Res, _$ResponseCollectsInfoImpl>
    implements _$$ResponseCollectsInfoImplCopyWith<$Res> {
  __$$ResponseCollectsInfoImplCopyWithImpl(_$ResponseCollectsInfoImpl _value,
      $Res Function(_$ResponseCollectsInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCollectsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseCollectsInfoImpl(
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
              as CollectsDataDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCollectsInfoImpl implements _ResponseCollectsInfo {
  const _$ResponseCollectsInfoImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$ResponseCollectsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCollectsInfoImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final CollectsDataDto? data;

  @override
  String toString() {
    return 'ResponseCollectsInfo(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCollectsInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of ResponseCollectsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCollectsInfoImplCopyWith<_$ResponseCollectsInfoImpl>
      get copyWith =>
          __$$ResponseCollectsInfoImplCopyWithImpl<_$ResponseCollectsInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCollectsInfoImplToJson(
      this,
    );
  }
}

abstract class _ResponseCollectsInfo implements ResponseCollectsInfo {
  const factory _ResponseCollectsInfo(
      {final int? code,
      final String? message,
      final int? ttl,
      final CollectsDataDto? data}) = _$ResponseCollectsInfoImpl;

  factory _ResponseCollectsInfo.fromJson(Map<String, dynamic> json) =
      _$ResponseCollectsInfoImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  CollectsDataDto? get data;

  /// Create a copy of ResponseCollectsInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCollectsInfoImplCopyWith<_$ResponseCollectsInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
