// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShareDto _$ShareDtoFromJson(Map<String, dynamic> json) {
  return _ShareDto.fromJson(json);
}

/// @nodoc
mixin _$ShareDto {
  String? get id => throw _privateConstructorUsedError;
  ShareTypeEnum get type => throw _privateConstructorUsedError;
  String? get urlCover => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<String>? get songListString => throw _privateConstructorUsedError;
  Upper? get upper => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get cid => throw _privateConstructorUsedError;

  /// Serializes this ShareDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShareDtoCopyWith<ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareDtoCopyWith<$Res> {
  factory $ShareDtoCopyWith(ShareDto value, $Res Function(ShareDto) then) =
      _$ShareDtoCopyWithImpl<$Res, ShareDto>;
  @useResult
  $Res call(
      {String? id,
      ShareTypeEnum type,
      String? urlCover,
      String? title,
      List<String>? songListString,
      Upper? upper,
      int? duration,
      int? cid});

  $UpperCopyWith<$Res>? get upper;
}

/// @nodoc
class _$ShareDtoCopyWithImpl<$Res, $Val extends ShareDto>
    implements $ShareDtoCopyWith<$Res> {
  _$ShareDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? urlCover = freezed,
    Object? title = freezed,
    Object? songListString = freezed,
    Object? upper = freezed,
    Object? duration = freezed,
    Object? cid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShareTypeEnum,
      urlCover: freezed == urlCover
          ? _value.urlCover
          : urlCover // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      songListString: freezed == songListString
          ? _value.songListString
          : songListString // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as Upper?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpperCopyWith<$Res>? get upper {
    if (_value.upper == null) {
      return null;
    }

    return $UpperCopyWith<$Res>(_value.upper!, (value) {
      return _then(_value.copyWith(upper: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShareDtoImplCopyWith<$Res>
    implements $ShareDtoCopyWith<$Res> {
  factory _$$ShareDtoImplCopyWith(
          _$ShareDtoImpl value, $Res Function(_$ShareDtoImpl) then) =
      __$$ShareDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      ShareTypeEnum type,
      String? urlCover,
      String? title,
      List<String>? songListString,
      Upper? upper,
      int? duration,
      int? cid});

  @override
  $UpperCopyWith<$Res>? get upper;
}

/// @nodoc
class __$$ShareDtoImplCopyWithImpl<$Res>
    extends _$ShareDtoCopyWithImpl<$Res, _$ShareDtoImpl>
    implements _$$ShareDtoImplCopyWith<$Res> {
  __$$ShareDtoImplCopyWithImpl(
      _$ShareDtoImpl _value, $Res Function(_$ShareDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? urlCover = freezed,
    Object? title = freezed,
    Object? songListString = freezed,
    Object? upper = freezed,
    Object? duration = freezed,
    Object? cid = freezed,
  }) {
    return _then(_$ShareDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShareTypeEnum,
      urlCover: freezed == urlCover
          ? _value.urlCover
          : urlCover // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      songListString: freezed == songListString
          ? _value._songListString
          : songListString // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as Upper?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareDtoImpl implements _ShareDto {
  const _$ShareDtoImpl(
      {this.id,
      required this.type,
      this.urlCover,
      this.title,
      final List<String>? songListString,
      this.upper,
      this.duration,
      this.cid})
      : _songListString = songListString;

  factory _$ShareDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final ShareTypeEnum type;
  @override
  final String? urlCover;
  @override
  final String? title;
  final List<String>? _songListString;
  @override
  List<String>? get songListString {
    final value = _songListString;
    if (value == null) return null;
    if (_songListString is EqualUnmodifiableListView) return _songListString;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Upper? upper;
  @override
  final int? duration;
  @override
  final int? cid;

  @override
  String toString() {
    return 'ShareDto(id: $id, type: $type, urlCover: $urlCover, title: $title, songListString: $songListString, upper: $upper, duration: $duration, cid: $cid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.urlCover, urlCover) ||
                other.urlCover == urlCover) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._songListString, _songListString) &&
            (identical(other.upper, upper) || other.upper == upper) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      urlCover,
      title,
      const DeepCollectionEquality().hash(_songListString),
      upper,
      duration,
      cid);

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareDtoImplCopyWith<_$ShareDtoImpl> get copyWith =>
      __$$ShareDtoImplCopyWithImpl<_$ShareDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareDtoImplToJson(
      this,
    );
  }
}

abstract class _ShareDto implements ShareDto {
  const factory _ShareDto(
      {final String? id,
      required final ShareTypeEnum type,
      final String? urlCover,
      final String? title,
      final List<String>? songListString,
      final Upper? upper,
      final int? duration,
      final int? cid}) = _$ShareDtoImpl;

  factory _ShareDto.fromJson(Map<String, dynamic> json) =
      _$ShareDtoImpl.fromJson;

  @override
  String? get id;
  @override
  ShareTypeEnum get type;
  @override
  String? get urlCover;
  @override
  String? get title;
  @override
  List<String>? get songListString;
  @override
  Upper? get upper;
  @override
  int? get duration;
  @override
  int? get cid;

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareDtoImplCopyWith<_$ShareDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
