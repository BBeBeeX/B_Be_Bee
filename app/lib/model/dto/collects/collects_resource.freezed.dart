// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectsResource _$CollectsResourceFromJson(Map<String, dynamic> json) {
  return _CollectsResource.fromJson(json);
}

/// @nodoc
mixin _$CollectsResource {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  CollectsResourceData? get data => throw _privateConstructorUsedError;

  /// Serializes this CollectsResource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsResourceCopyWith<CollectsResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsResourceCopyWith<$Res> {
  factory $CollectsResourceCopyWith(
          CollectsResource value, $Res Function(CollectsResource) then) =
      _$CollectsResourceCopyWithImpl<$Res, CollectsResource>;
  @useResult
  $Res call({int? code, String? message, int? ttl, CollectsResourceData? data});

  $CollectsResourceDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CollectsResourceCopyWithImpl<$Res, $Val extends CollectsResource>
    implements $CollectsResourceCopyWith<$Res> {
  _$CollectsResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsResource
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
              as CollectsResourceData?,
    ) as $Val);
  }

  /// Create a copy of CollectsResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectsResourceDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CollectsResourceDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectsResourceImplCopyWith<$Res>
    implements $CollectsResourceCopyWith<$Res> {
  factory _$$CollectsResourceImplCopyWith(_$CollectsResourceImpl value,
          $Res Function(_$CollectsResourceImpl) then) =
      __$$CollectsResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, CollectsResourceData? data});

  @override
  $CollectsResourceDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CollectsResourceImplCopyWithImpl<$Res>
    extends _$CollectsResourceCopyWithImpl<$Res, _$CollectsResourceImpl>
    implements _$$CollectsResourceImplCopyWith<$Res> {
  __$$CollectsResourceImplCopyWithImpl(_$CollectsResourceImpl _value,
      $Res Function(_$CollectsResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CollectsResourceImpl(
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
              as CollectsResourceData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsResourceImpl implements _CollectsResource {
  const _$CollectsResourceImpl({this.code, this.message, this.ttl, this.data});

  factory _$CollectsResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsResourceImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final CollectsResourceData? data;

  @override
  String toString() {
    return 'CollectsResource(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsResourceImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of CollectsResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsResourceImplCopyWith<_$CollectsResourceImpl> get copyWith =>
      __$$CollectsResourceImplCopyWithImpl<_$CollectsResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsResourceImplToJson(
      this,
    );
  }
}

abstract class _CollectsResource implements CollectsResource {
  const factory _CollectsResource(
      {final int? code,
      final String? message,
      final int? ttl,
      final CollectsResourceData? data}) = _$CollectsResourceImpl;

  factory _CollectsResource.fromJson(Map<String, dynamic> json) =
      _$CollectsResourceImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  CollectsResourceData? get data;

  /// Create a copy of CollectsResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsResourceImplCopyWith<_$CollectsResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectsResourceData _$CollectsResourceDataFromJson(Map<String, dynamic> json) {
  return _CollectsResourceData.fromJson(json);
}

/// @nodoc
mixin _$CollectsResourceData {
  CollectsDataDto? get info => throw _privateConstructorUsedError;
  List<CollectsBiliMediaDto>? get medias => throw _privateConstructorUsedError;
  bool? get has_more => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;

  /// Serializes this CollectsResourceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsResourceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsResourceDataCopyWith<CollectsResourceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsResourceDataCopyWith<$Res> {
  factory $CollectsResourceDataCopyWith(CollectsResourceData value,
          $Res Function(CollectsResourceData) then) =
      _$CollectsResourceDataCopyWithImpl<$Res, CollectsResourceData>;
  @useResult
  $Res call(
      {CollectsDataDto? info,
      List<CollectsBiliMediaDto>? medias,
      bool? has_more,
      int? ttl});

  $CollectsDataDtoCopyWith<$Res>? get info;
}

/// @nodoc
class _$CollectsResourceDataCopyWithImpl<$Res,
        $Val extends CollectsResourceData>
    implements $CollectsResourceDataCopyWith<$Res> {
  _$CollectsResourceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsResourceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? medias = freezed,
    Object? has_more = freezed,
    Object? ttl = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CollectsDataDto?,
      medias: freezed == medias
          ? _value.medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<CollectsBiliMediaDto>?,
      has_more: freezed == has_more
          ? _value.has_more
          : has_more // ignore: cast_nullable_to_non_nullable
              as bool?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of CollectsResourceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectsDataDtoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $CollectsDataDtoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectsResourceDataImplCopyWith<$Res>
    implements $CollectsResourceDataCopyWith<$Res> {
  factory _$$CollectsResourceDataImplCopyWith(_$CollectsResourceDataImpl value,
          $Res Function(_$CollectsResourceDataImpl) then) =
      __$$CollectsResourceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CollectsDataDto? info,
      List<CollectsBiliMediaDto>? medias,
      bool? has_more,
      int? ttl});

  @override
  $CollectsDataDtoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$CollectsResourceDataImplCopyWithImpl<$Res>
    extends _$CollectsResourceDataCopyWithImpl<$Res, _$CollectsResourceDataImpl>
    implements _$$CollectsResourceDataImplCopyWith<$Res> {
  __$$CollectsResourceDataImplCopyWithImpl(_$CollectsResourceDataImpl _value,
      $Res Function(_$CollectsResourceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsResourceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? medias = freezed,
    Object? has_more = freezed,
    Object? ttl = freezed,
  }) {
    return _then(_$CollectsResourceDataImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CollectsDataDto?,
      medias: freezed == medias
          ? _value._medias
          : medias // ignore: cast_nullable_to_non_nullable
              as List<CollectsBiliMediaDto>?,
      has_more: freezed == has_more
          ? _value.has_more
          : has_more // ignore: cast_nullable_to_non_nullable
              as bool?,
      ttl: freezed == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsResourceDataImpl implements _CollectsResourceData {
  const _$CollectsResourceDataImpl(
      {this.info,
      final List<CollectsBiliMediaDto>? medias,
      this.has_more,
      this.ttl})
      : _medias = medias;

  factory _$CollectsResourceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsResourceDataImplFromJson(json);

  @override
  final CollectsDataDto? info;
  final List<CollectsBiliMediaDto>? _medias;
  @override
  List<CollectsBiliMediaDto>? get medias {
    final value = _medias;
    if (value == null) return null;
    if (_medias is EqualUnmodifiableListView) return _medias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? has_more;
  @override
  final int? ttl;

  @override
  String toString() {
    return 'CollectsResourceData(info: $info, medias: $medias, has_more: $has_more, ttl: $ttl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsResourceDataImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._medias, _medias) &&
            (identical(other.has_more, has_more) ||
                other.has_more == has_more) &&
            (identical(other.ttl, ttl) || other.ttl == ttl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info,
      const DeepCollectionEquality().hash(_medias), has_more, ttl);

  /// Create a copy of CollectsResourceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsResourceDataImplCopyWith<_$CollectsResourceDataImpl>
      get copyWith =>
          __$$CollectsResourceDataImplCopyWithImpl<_$CollectsResourceDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsResourceDataImplToJson(
      this,
    );
  }
}

abstract class _CollectsResourceData implements CollectsResourceData {
  const factory _CollectsResourceData(
      {final CollectsDataDto? info,
      final List<CollectsBiliMediaDto>? medias,
      final bool? has_more,
      final int? ttl}) = _$CollectsResourceDataImpl;

  factory _CollectsResourceData.fromJson(Map<String, dynamic> json) =
      _$CollectsResourceDataImpl.fromJson;

  @override
  CollectsDataDto? get info;
  @override
  List<CollectsBiliMediaDto>? get medias;
  @override
  bool? get has_more;
  @override
  int? get ttl;

  /// Create a copy of CollectsResourceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsResourceDataImplCopyWith<_$CollectsResourceDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
