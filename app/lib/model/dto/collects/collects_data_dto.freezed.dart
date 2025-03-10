// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectsDataDto _$CollectsDataDtoFromJson(Map<String, dynamic> json) {
  return _CollectsDataDto.fromJson(json);
}

/// @nodoc
mixin _$CollectsDataDto {
  int? get id => throw _privateConstructorUsedError;
  int? get fid => throw _privateConstructorUsedError;
  int? get mid => throw _privateConstructorUsedError;
  int? get attr => throw _privateConstructorUsedError; //属性	0：正常  1：失效
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  CollectsUpperDto? get upper => throw _privateConstructorUsedError;
  int? get cover_type => throw _privateConstructorUsedError;
  CollectsCntDto? get cnt_info => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  int? get ctime => throw _privateConstructorUsedError;
  int? get mtime => throw _privateConstructorUsedError;
  int? get state => throw _privateConstructorUsedError;
  int? get fav_state => throw _privateConstructorUsedError;
  int? get like_state => throw _privateConstructorUsedError;
  int? get media_count => throw _privateConstructorUsedError;
  bool? get is_top => throw _privateConstructorUsedError;

  /// Serializes this CollectsDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsDataDtoCopyWith<CollectsDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsDataDtoCopyWith<$Res> {
  factory $CollectsDataDtoCopyWith(
          CollectsDataDto value, $Res Function(CollectsDataDto) then) =
      _$CollectsDataDtoCopyWithImpl<$Res, CollectsDataDto>;
  @useResult
  $Res call(
      {int? id,
      int? fid,
      int? mid,
      int? attr,
      String? title,
      String? cover,
      CollectsUpperDto? upper,
      int? cover_type,
      CollectsCntDto? cnt_info,
      int? type,
      String? intro,
      int? ctime,
      int? mtime,
      int? state,
      int? fav_state,
      int? like_state,
      int? media_count,
      bool? is_top});

  $CollectsUpperDtoCopyWith<$Res>? get upper;
  $CollectsCntDtoCopyWith<$Res>? get cnt_info;
}

/// @nodoc
class _$CollectsDataDtoCopyWithImpl<$Res, $Val extends CollectsDataDto>
    implements $CollectsDataDtoCopyWith<$Res> {
  _$CollectsDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fid = freezed,
    Object? mid = freezed,
    Object? attr = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? upper = freezed,
    Object? cover_type = freezed,
    Object? cnt_info = freezed,
    Object? type = freezed,
    Object? intro = freezed,
    Object? ctime = freezed,
    Object? mtime = freezed,
    Object? state = freezed,
    Object? fav_state = freezed,
    Object? like_state = freezed,
    Object? media_count = freezed,
    Object? is_top = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fid: freezed == fid
          ? _value.fid
          : fid // ignore: cast_nullable_to_non_nullable
              as int?,
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      attr: freezed == attr
          ? _value.attr
          : attr // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as CollectsUpperDto?,
      cover_type: freezed == cover_type
          ? _value.cover_type
          : cover_type // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt_info: freezed == cnt_info
          ? _value.cnt_info
          : cnt_info // ignore: cast_nullable_to_non_nullable
              as CollectsCntDto?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      mtime: freezed == mtime
          ? _value.mtime
          : mtime // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      fav_state: freezed == fav_state
          ? _value.fav_state
          : fav_state // ignore: cast_nullable_to_non_nullable
              as int?,
      like_state: freezed == like_state
          ? _value.like_state
          : like_state // ignore: cast_nullable_to_non_nullable
              as int?,
      media_count: freezed == media_count
          ? _value.media_count
          : media_count // ignore: cast_nullable_to_non_nullable
              as int?,
      is_top: freezed == is_top
          ? _value.is_top
          : is_top // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectsUpperDtoCopyWith<$Res>? get upper {
    if (_value.upper == null) {
      return null;
    }

    return $CollectsUpperDtoCopyWith<$Res>(_value.upper!, (value) {
      return _then(_value.copyWith(upper: value) as $Val);
    });
  }

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectsCntDtoCopyWith<$Res>? get cnt_info {
    if (_value.cnt_info == null) {
      return null;
    }

    return $CollectsCntDtoCopyWith<$Res>(_value.cnt_info!, (value) {
      return _then(_value.copyWith(cnt_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectsDataDtoImplCopyWith<$Res>
    implements $CollectsDataDtoCopyWith<$Res> {
  factory _$$CollectsDataDtoImplCopyWith(_$CollectsDataDtoImpl value,
          $Res Function(_$CollectsDataDtoImpl) then) =
      __$$CollectsDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? fid,
      int? mid,
      int? attr,
      String? title,
      String? cover,
      CollectsUpperDto? upper,
      int? cover_type,
      CollectsCntDto? cnt_info,
      int? type,
      String? intro,
      int? ctime,
      int? mtime,
      int? state,
      int? fav_state,
      int? like_state,
      int? media_count,
      bool? is_top});

  @override
  $CollectsUpperDtoCopyWith<$Res>? get upper;
  @override
  $CollectsCntDtoCopyWith<$Res>? get cnt_info;
}

/// @nodoc
class __$$CollectsDataDtoImplCopyWithImpl<$Res>
    extends _$CollectsDataDtoCopyWithImpl<$Res, _$CollectsDataDtoImpl>
    implements _$$CollectsDataDtoImplCopyWith<$Res> {
  __$$CollectsDataDtoImplCopyWithImpl(
      _$CollectsDataDtoImpl _value, $Res Function(_$CollectsDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fid = freezed,
    Object? mid = freezed,
    Object? attr = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? upper = freezed,
    Object? cover_type = freezed,
    Object? cnt_info = freezed,
    Object? type = freezed,
    Object? intro = freezed,
    Object? ctime = freezed,
    Object? mtime = freezed,
    Object? state = freezed,
    Object? fav_state = freezed,
    Object? like_state = freezed,
    Object? media_count = freezed,
    Object? is_top = freezed,
  }) {
    return _then(_$CollectsDataDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fid: freezed == fid
          ? _value.fid
          : fid // ignore: cast_nullable_to_non_nullable
              as int?,
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      attr: freezed == attr
          ? _value.attr
          : attr // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as CollectsUpperDto?,
      cover_type: freezed == cover_type
          ? _value.cover_type
          : cover_type // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt_info: freezed == cnt_info
          ? _value.cnt_info
          : cnt_info // ignore: cast_nullable_to_non_nullable
              as CollectsCntDto?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      mtime: freezed == mtime
          ? _value.mtime
          : mtime // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      fav_state: freezed == fav_state
          ? _value.fav_state
          : fav_state // ignore: cast_nullable_to_non_nullable
              as int?,
      like_state: freezed == like_state
          ? _value.like_state
          : like_state // ignore: cast_nullable_to_non_nullable
              as int?,
      media_count: freezed == media_count
          ? _value.media_count
          : media_count // ignore: cast_nullable_to_non_nullable
              as int?,
      is_top: freezed == is_top
          ? _value.is_top
          : is_top // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsDataDtoImpl implements _CollectsDataDto {
  const _$CollectsDataDtoImpl(
      {this.id,
      this.fid,
      this.mid,
      this.attr,
      this.title,
      this.cover,
      this.upper,
      this.cover_type,
      this.cnt_info,
      this.type,
      this.intro,
      this.ctime,
      this.mtime,
      this.state,
      this.fav_state,
      this.like_state,
      this.media_count,
      this.is_top});

  factory _$CollectsDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsDataDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final int? fid;
  @override
  final int? mid;
  @override
  final int? attr;
//属性	0：正常  1：失效
  @override
  final String? title;
  @override
  final String? cover;
  @override
  final CollectsUpperDto? upper;
  @override
  final int? cover_type;
  @override
  final CollectsCntDto? cnt_info;
  @override
  final int? type;
  @override
  final String? intro;
  @override
  final int? ctime;
  @override
  final int? mtime;
  @override
  final int? state;
  @override
  final int? fav_state;
  @override
  final int? like_state;
  @override
  final int? media_count;
  @override
  final bool? is_top;

  @override
  String toString() {
    return 'CollectsDataDto(id: $id, fid: $fid, mid: $mid, attr: $attr, title: $title, cover: $cover, upper: $upper, cover_type: $cover_type, cnt_info: $cnt_info, type: $type, intro: $intro, ctime: $ctime, mtime: $mtime, state: $state, fav_state: $fav_state, like_state: $like_state, media_count: $media_count, is_top: $is_top)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsDataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fid, fid) || other.fid == fid) &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.attr, attr) || other.attr == attr) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.upper, upper) || other.upper == upper) &&
            (identical(other.cover_type, cover_type) ||
                other.cover_type == cover_type) &&
            (identical(other.cnt_info, cnt_info) ||
                other.cnt_info == cnt_info) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.ctime, ctime) || other.ctime == ctime) &&
            (identical(other.mtime, mtime) || other.mtime == mtime) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.fav_state, fav_state) ||
                other.fav_state == fav_state) &&
            (identical(other.like_state, like_state) ||
                other.like_state == like_state) &&
            (identical(other.media_count, media_count) ||
                other.media_count == media_count) &&
            (identical(other.is_top, is_top) || other.is_top == is_top));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fid,
      mid,
      attr,
      title,
      cover,
      upper,
      cover_type,
      cnt_info,
      type,
      intro,
      ctime,
      mtime,
      state,
      fav_state,
      like_state,
      media_count,
      is_top);

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsDataDtoImplCopyWith<_$CollectsDataDtoImpl> get copyWith =>
      __$$CollectsDataDtoImplCopyWithImpl<_$CollectsDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsDataDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectsDataDto implements CollectsDataDto {
  const factory _CollectsDataDto(
      {final int? id,
      final int? fid,
      final int? mid,
      final int? attr,
      final String? title,
      final String? cover,
      final CollectsUpperDto? upper,
      final int? cover_type,
      final CollectsCntDto? cnt_info,
      final int? type,
      final String? intro,
      final int? ctime,
      final int? mtime,
      final int? state,
      final int? fav_state,
      final int? like_state,
      final int? media_count,
      final bool? is_top}) = _$CollectsDataDtoImpl;

  factory _CollectsDataDto.fromJson(Map<String, dynamic> json) =
      _$CollectsDataDtoImpl.fromJson;

  @override
  int? get id;
  @override
  int? get fid;
  @override
  int? get mid;
  @override
  int? get attr; //属性	0：正常  1：失效
  @override
  String? get title;
  @override
  String? get cover;
  @override
  CollectsUpperDto? get upper;
  @override
  int? get cover_type;
  @override
  CollectsCntDto? get cnt_info;
  @override
  int? get type;
  @override
  String? get intro;
  @override
  int? get ctime;
  @override
  int? get mtime;
  @override
  int? get state;
  @override
  int? get fav_state;
  @override
  int? get like_state;
  @override
  int? get media_count;
  @override
  bool? get is_top;

  /// Create a copy of CollectsDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsDataDtoImplCopyWith<_$CollectsDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
