// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_pagelist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioPagelist _$AudioPagelistFromJson(Map<String, dynamic> json) {
  return _AudioPagelist.fromJson(json);
}

/// @nodoc
mixin _$AudioPagelist {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  List<AudioPagelistData>? get data => throw _privateConstructorUsedError;

  /// Serializes this AudioPagelist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioPagelist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioPagelistCopyWith<AudioPagelist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPagelistCopyWith<$Res> {
  factory $AudioPagelistCopyWith(
          AudioPagelist value, $Res Function(AudioPagelist) then) =
      _$AudioPagelistCopyWithImpl<$Res, AudioPagelist>;
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, List<AudioPagelistData>? data});
}

/// @nodoc
class _$AudioPagelistCopyWithImpl<$Res, $Val extends AudioPagelist>
    implements $AudioPagelistCopyWith<$Res> {
  _$AudioPagelistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPagelist
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
              as List<AudioPagelistData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioPagelistImplCopyWith<$Res>
    implements $AudioPagelistCopyWith<$Res> {
  factory _$$AudioPagelistImplCopyWith(
          _$AudioPagelistImpl value, $Res Function(_$AudioPagelistImpl) then) =
      __$$AudioPagelistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, List<AudioPagelistData>? data});
}

/// @nodoc
class __$$AudioPagelistImplCopyWithImpl<$Res>
    extends _$AudioPagelistCopyWithImpl<$Res, _$AudioPagelistImpl>
    implements _$$AudioPagelistImplCopyWith<$Res> {
  __$$AudioPagelistImplCopyWithImpl(
      _$AudioPagelistImpl _value, $Res Function(_$AudioPagelistImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPagelist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AudioPagelistImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AudioPagelistData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioPagelistImpl
    with DiagnosticableTreeMixin
    implements _AudioPagelist {
  const _$AudioPagelistImpl(
      {this.code, this.message, this.ttl, final List<AudioPagelistData>? data})
      : _data = data;

  factory _$AudioPagelistImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioPagelistImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  final List<AudioPagelistData>? _data;
  @override
  List<AudioPagelistData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPagelist(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPagelist'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPagelistImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of AudioPagelist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPagelistImplCopyWith<_$AudioPagelistImpl> get copyWith =>
      __$$AudioPagelistImplCopyWithImpl<_$AudioPagelistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioPagelistImplToJson(
      this,
    );
  }
}

abstract class _AudioPagelist implements AudioPagelist {
  const factory _AudioPagelist(
      {final int? code,
      final String? message,
      final int? ttl,
      final List<AudioPagelistData>? data}) = _$AudioPagelistImpl;

  factory _AudioPagelist.fromJson(Map<String, dynamic> json) =
      _$AudioPagelistImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  List<AudioPagelistData>? get data;

  /// Create a copy of AudioPagelist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioPagelistImplCopyWith<_$AudioPagelistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioPagelistData _$AudioPagelistDataFromJson(Map<String, dynamic> json) {
  return _AudioPagelistData.fromJson(json);
}

/// @nodoc
mixin _$AudioPagelistData {
  int? get cid => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get part_property => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get vid => throw _privateConstructorUsedError;
  String? get weblink => throw _privateConstructorUsedError;
  Dimension? get dimension => throw _privateConstructorUsedError;
  String? get first_frame => throw _privateConstructorUsedError;

  /// Serializes this AudioPagelistData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioPagelistData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioPagelistDataCopyWith<AudioPagelistData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPagelistDataCopyWith<$Res> {
  factory $AudioPagelistDataCopyWith(
          AudioPagelistData value, $Res Function(AudioPagelistData) then) =
      _$AudioPagelistDataCopyWithImpl<$Res, AudioPagelistData>;
  @useResult
  $Res call(
      {int? cid,
      int? page,
      String? from,
      String? part_property,
      int? duration,
      String? vid,
      String? weblink,
      Dimension? dimension,
      String? first_frame});

  $DimensionCopyWith<$Res>? get dimension;
}

/// @nodoc
class _$AudioPagelistDataCopyWithImpl<$Res, $Val extends AudioPagelistData>
    implements $AudioPagelistDataCopyWith<$Res> {
  _$AudioPagelistDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPagelistData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = freezed,
    Object? page = freezed,
    Object? from = freezed,
    Object? part_property = freezed,
    Object? duration = freezed,
    Object? vid = freezed,
    Object? weblink = freezed,
    Object? dimension = freezed,
    Object? first_frame = freezed,
  }) {
    return _then(_value.copyWith(
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      part_property: freezed == part_property
          ? _value.part_property
          : part_property // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      vid: freezed == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String?,
      weblink: freezed == weblink
          ? _value.weblink
          : weblink // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      first_frame: freezed == first_frame
          ? _value.first_frame
          : first_frame // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AudioPagelistData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionCopyWith<$Res>? get dimension {
    if (_value.dimension == null) {
      return null;
    }

    return $DimensionCopyWith<$Res>(_value.dimension!, (value) {
      return _then(_value.copyWith(dimension: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioPagelistDataImplCopyWith<$Res>
    implements $AudioPagelistDataCopyWith<$Res> {
  factory _$$AudioPagelistDataImplCopyWith(_$AudioPagelistDataImpl value,
          $Res Function(_$AudioPagelistDataImpl) then) =
      __$$AudioPagelistDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? cid,
      int? page,
      String? from,
      String? part_property,
      int? duration,
      String? vid,
      String? weblink,
      Dimension? dimension,
      String? first_frame});

  @override
  $DimensionCopyWith<$Res>? get dimension;
}

/// @nodoc
class __$$AudioPagelistDataImplCopyWithImpl<$Res>
    extends _$AudioPagelistDataCopyWithImpl<$Res, _$AudioPagelistDataImpl>
    implements _$$AudioPagelistDataImplCopyWith<$Res> {
  __$$AudioPagelistDataImplCopyWithImpl(_$AudioPagelistDataImpl _value,
      $Res Function(_$AudioPagelistDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPagelistData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = freezed,
    Object? page = freezed,
    Object? from = freezed,
    Object? part_property = freezed,
    Object? duration = freezed,
    Object? vid = freezed,
    Object? weblink = freezed,
    Object? dimension = freezed,
    Object? first_frame = freezed,
  }) {
    return _then(_$AudioPagelistDataImpl(
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      part_property: freezed == part_property
          ? _value.part_property
          : part_property // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      vid: freezed == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as String?,
      weblink: freezed == weblink
          ? _value.weblink
          : weblink // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      first_frame: freezed == first_frame
          ? _value.first_frame
          : first_frame // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioPagelistDataImpl
    with DiagnosticableTreeMixin
    implements _AudioPagelistData {
  const _$AudioPagelistDataImpl(
      {this.cid,
      this.page,
      this.from,
      this.part_property,
      this.duration,
      this.vid,
      this.weblink,
      this.dimension,
      this.first_frame});

  factory _$AudioPagelistDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioPagelistDataImplFromJson(json);

  @override
  final int? cid;
  @override
  final int? page;
  @override
  final String? from;
  @override
  final String? part_property;
  @override
  final int? duration;
  @override
  final String? vid;
  @override
  final String? weblink;
  @override
  final Dimension? dimension;
  @override
  final String? first_frame;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPagelistData(cid: $cid, page: $page, from: $from, part_property: $part_property, duration: $duration, vid: $vid, weblink: $weblink, dimension: $dimension, first_frame: $first_frame)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPagelistData'))
      ..add(DiagnosticsProperty('cid', cid))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('part_property', part_property))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('vid', vid))
      ..add(DiagnosticsProperty('weblink', weblink))
      ..add(DiagnosticsProperty('dimension', dimension))
      ..add(DiagnosticsProperty('first_frame', first_frame));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPagelistDataImpl &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.part_property, part_property) ||
                other.part_property == part_property) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.vid, vid) || other.vid == vid) &&
            (identical(other.weblink, weblink) || other.weblink == weblink) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.first_frame, first_frame) ||
                other.first_frame == first_frame));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cid, page, from, part_property,
      duration, vid, weblink, dimension, first_frame);

  /// Create a copy of AudioPagelistData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPagelistDataImplCopyWith<_$AudioPagelistDataImpl> get copyWith =>
      __$$AudioPagelistDataImplCopyWithImpl<_$AudioPagelistDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioPagelistDataImplToJson(
      this,
    );
  }
}

abstract class _AudioPagelistData implements AudioPagelistData {
  const factory _AudioPagelistData(
      {final int? cid,
      final int? page,
      final String? from,
      final String? part_property,
      final int? duration,
      final String? vid,
      final String? weblink,
      final Dimension? dimension,
      final String? first_frame}) = _$AudioPagelistDataImpl;

  factory _AudioPagelistData.fromJson(Map<String, dynamic> json) =
      _$AudioPagelistDataImpl.fromJson;

  @override
  int? get cid;
  @override
  int? get page;
  @override
  String? get from;
  @override
  String? get part_property;
  @override
  int? get duration;
  @override
  String? get vid;
  @override
  String? get weblink;
  @override
  Dimension? get dimension;
  @override
  String? get first_frame;

  /// Create a copy of AudioPagelistData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioPagelistDataImplCopyWith<_$AudioPagelistDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimension _$DimensionFromJson(Map<String, dynamic> json) {
  return _Dimension.fromJson(json);
}

/// @nodoc
mixin _$Dimension {
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get rotate => throw _privateConstructorUsedError;

  /// Serializes this Dimension to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DimensionCopyWith<Dimension> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionCopyWith<$Res> {
  factory $DimensionCopyWith(Dimension value, $Res Function(Dimension) then) =
      _$DimensionCopyWithImpl<$Res, Dimension>;
  @useResult
  $Res call({int? width, int? height, int? rotate});
}

/// @nodoc
class _$DimensionCopyWithImpl<$Res, $Val extends Dimension>
    implements $DimensionCopyWith<$Res> {
  _$DimensionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? rotate = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      rotate: freezed == rotate
          ? _value.rotate
          : rotate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DimensionImplCopyWith<$Res>
    implements $DimensionCopyWith<$Res> {
  factory _$$DimensionImplCopyWith(
          _$DimensionImpl value, $Res Function(_$DimensionImpl) then) =
      __$$DimensionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? width, int? height, int? rotate});
}

/// @nodoc
class __$$DimensionImplCopyWithImpl<$Res>
    extends _$DimensionCopyWithImpl<$Res, _$DimensionImpl>
    implements _$$DimensionImplCopyWith<$Res> {
  __$$DimensionImplCopyWithImpl(
      _$DimensionImpl _value, $Res Function(_$DimensionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? rotate = freezed,
  }) {
    return _then(_$DimensionImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      rotate: freezed == rotate
          ? _value.rotate
          : rotate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionImpl with DiagnosticableTreeMixin implements _Dimension {
  const _$DimensionImpl({this.width, this.height, this.rotate});

  factory _$DimensionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionImplFromJson(json);

  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? rotate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Dimension(width: $width, height: $height, rotate: $rotate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Dimension'))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('rotate', rotate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.rotate, rotate) || other.rotate == rotate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, rotate);

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionImplCopyWith<_$DimensionImpl> get copyWith =>
      __$$DimensionImplCopyWithImpl<_$DimensionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionImplToJson(
      this,
    );
  }
}

abstract class _Dimension implements Dimension {
  const factory _Dimension(
      {final int? width,
      final int? height,
      final int? rotate}) = _$DimensionImpl;

  factory _Dimension.fromJson(Map<String, dynamic> json) =
      _$DimensionImpl.fromJson;

  @override
  int? get width;
  @override
  int? get height;
  @override
  int? get rotate;

  /// Create a copy of Dimension
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DimensionImplCopyWith<_$DimensionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
