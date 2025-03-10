// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_bili_media_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectsBiliMediaDto _$CollectsBiliMediaDtoFromJson(Map<String, dynamic> json) {
  return _CollectsBiliMediaDto.fromJson(json);
}

/// @nodoc
mixin _$CollectsBiliMediaDto {
  int? get id =>
      throw _privateConstructorUsedError; //内容id 视频稿件：视频稿件avid   音频：音频auid  视频合集：视频合集id
  int? get type =>
      throw _privateConstructorUsedError; //内容类型  2：视频稿件  12：音频  21：视频合集
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  CollectsUpperDto? get upper => throw _privateConstructorUsedError;
  int? get attr =>
      throw _privateConstructorUsedError; // 失效 0: 正常；9: up自己删除；1: 其他原因删除
  BiliMediaInfo? get cnt_info => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  int? get ctime => throw _privateConstructorUsedError;
  int? get pubtime => throw _privateConstructorUsedError;
  int? get fav_time => throw _privateConstructorUsedError;
  String? get bv_id => throw _privateConstructorUsedError;
  String? get bvid => throw _privateConstructorUsedError;
  BiliMediaUgc? get ugc => throw _privateConstructorUsedError;
  String? get media_list_link => throw _privateConstructorUsedError;

  /// Serializes this CollectsBiliMediaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsBiliMediaDtoCopyWith<CollectsBiliMediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsBiliMediaDtoCopyWith<$Res> {
  factory $CollectsBiliMediaDtoCopyWith(CollectsBiliMediaDto value,
          $Res Function(CollectsBiliMediaDto) then) =
      _$CollectsBiliMediaDtoCopyWithImpl<$Res, CollectsBiliMediaDto>;
  @useResult
  $Res call(
      {int? id,
      int? type,
      String? title,
      String? cover,
      String? intro,
      int? page,
      int? duration,
      CollectsUpperDto? upper,
      int? attr,
      BiliMediaInfo? cnt_info,
      String? link,
      int? ctime,
      int? pubtime,
      int? fav_time,
      String? bv_id,
      String? bvid,
      BiliMediaUgc? ugc,
      String? media_list_link});

  $CollectsUpperDtoCopyWith<$Res>? get upper;
  $BiliMediaInfoCopyWith<$Res>? get cnt_info;
  $BiliMediaUgcCopyWith<$Res>? get ugc;
}

/// @nodoc
class _$CollectsBiliMediaDtoCopyWithImpl<$Res,
        $Val extends CollectsBiliMediaDto>
    implements $CollectsBiliMediaDtoCopyWith<$Res> {
  _$CollectsBiliMediaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? intro = freezed,
    Object? page = freezed,
    Object? duration = freezed,
    Object? upper = freezed,
    Object? attr = freezed,
    Object? cnt_info = freezed,
    Object? link = freezed,
    Object? ctime = freezed,
    Object? pubtime = freezed,
    Object? fav_time = freezed,
    Object? bv_id = freezed,
    Object? bvid = freezed,
    Object? ugc = freezed,
    Object? media_list_link = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as CollectsUpperDto?,
      attr: freezed == attr
          ? _value.attr
          : attr // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt_info: freezed == cnt_info
          ? _value.cnt_info
          : cnt_info // ignore: cast_nullable_to_non_nullable
              as BiliMediaInfo?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      pubtime: freezed == pubtime
          ? _value.pubtime
          : pubtime // ignore: cast_nullable_to_non_nullable
              as int?,
      fav_time: freezed == fav_time
          ? _value.fav_time
          : fav_time // ignore: cast_nullable_to_non_nullable
              as int?,
      bv_id: freezed == bv_id
          ? _value.bv_id
          : bv_id // ignore: cast_nullable_to_non_nullable
              as String?,
      bvid: freezed == bvid
          ? _value.bvid
          : bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      ugc: freezed == ugc
          ? _value.ugc
          : ugc // ignore: cast_nullable_to_non_nullable
              as BiliMediaUgc?,
      media_list_link: freezed == media_list_link
          ? _value.media_list_link
          : media_list_link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CollectsBiliMediaDto
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

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliMediaInfoCopyWith<$Res>? get cnt_info {
    if (_value.cnt_info == null) {
      return null;
    }

    return $BiliMediaInfoCopyWith<$Res>(_value.cnt_info!, (value) {
      return _then(_value.copyWith(cnt_info: value) as $Val);
    });
  }

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliMediaUgcCopyWith<$Res>? get ugc {
    if (_value.ugc == null) {
      return null;
    }

    return $BiliMediaUgcCopyWith<$Res>(_value.ugc!, (value) {
      return _then(_value.copyWith(ugc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectsBiliMediaDtoImplCopyWith<$Res>
    implements $CollectsBiliMediaDtoCopyWith<$Res> {
  factory _$$CollectsBiliMediaDtoImplCopyWith(_$CollectsBiliMediaDtoImpl value,
          $Res Function(_$CollectsBiliMediaDtoImpl) then) =
      __$$CollectsBiliMediaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? type,
      String? title,
      String? cover,
      String? intro,
      int? page,
      int? duration,
      CollectsUpperDto? upper,
      int? attr,
      BiliMediaInfo? cnt_info,
      String? link,
      int? ctime,
      int? pubtime,
      int? fav_time,
      String? bv_id,
      String? bvid,
      BiliMediaUgc? ugc,
      String? media_list_link});

  @override
  $CollectsUpperDtoCopyWith<$Res>? get upper;
  @override
  $BiliMediaInfoCopyWith<$Res>? get cnt_info;
  @override
  $BiliMediaUgcCopyWith<$Res>? get ugc;
}

/// @nodoc
class __$$CollectsBiliMediaDtoImplCopyWithImpl<$Res>
    extends _$CollectsBiliMediaDtoCopyWithImpl<$Res, _$CollectsBiliMediaDtoImpl>
    implements _$$CollectsBiliMediaDtoImplCopyWith<$Res> {
  __$$CollectsBiliMediaDtoImplCopyWithImpl(_$CollectsBiliMediaDtoImpl _value,
      $Res Function(_$CollectsBiliMediaDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? cover = freezed,
    Object? intro = freezed,
    Object? page = freezed,
    Object? duration = freezed,
    Object? upper = freezed,
    Object? attr = freezed,
    Object? cnt_info = freezed,
    Object? link = freezed,
    Object? ctime = freezed,
    Object? pubtime = freezed,
    Object? fav_time = freezed,
    Object? bv_id = freezed,
    Object? bvid = freezed,
    Object? ugc = freezed,
    Object? media_list_link = freezed,
  }) {
    return _then(_$CollectsBiliMediaDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as CollectsUpperDto?,
      attr: freezed == attr
          ? _value.attr
          : attr // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt_info: freezed == cnt_info
          ? _value.cnt_info
          : cnt_info // ignore: cast_nullable_to_non_nullable
              as BiliMediaInfo?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      pubtime: freezed == pubtime
          ? _value.pubtime
          : pubtime // ignore: cast_nullable_to_non_nullable
              as int?,
      fav_time: freezed == fav_time
          ? _value.fav_time
          : fav_time // ignore: cast_nullable_to_non_nullable
              as int?,
      bv_id: freezed == bv_id
          ? _value.bv_id
          : bv_id // ignore: cast_nullable_to_non_nullable
              as String?,
      bvid: freezed == bvid
          ? _value.bvid
          : bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      ugc: freezed == ugc
          ? _value.ugc
          : ugc // ignore: cast_nullable_to_non_nullable
              as BiliMediaUgc?,
      media_list_link: freezed == media_list_link
          ? _value.media_list_link
          : media_list_link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsBiliMediaDtoImpl implements _CollectsBiliMediaDto {
  const _$CollectsBiliMediaDtoImpl(
      {this.id,
      this.type,
      this.title,
      this.cover,
      this.intro,
      this.page,
      this.duration,
      this.upper,
      this.attr,
      this.cnt_info,
      this.link,
      this.ctime,
      this.pubtime,
      this.fav_time,
      this.bv_id,
      this.bvid,
      this.ugc,
      this.media_list_link});

  factory _$CollectsBiliMediaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsBiliMediaDtoImplFromJson(json);

  @override
  final int? id;
//内容id 视频稿件：视频稿件avid   音频：音频auid  视频合集：视频合集id
  @override
  final int? type;
//内容类型  2：视频稿件  12：音频  21：视频合集
  @override
  final String? title;
  @override
  final String? cover;
  @override
  final String? intro;
  @override
  final int? page;
  @override
  final int? duration;
  @override
  final CollectsUpperDto? upper;
  @override
  final int? attr;
// 失效 0: 正常；9: up自己删除；1: 其他原因删除
  @override
  final BiliMediaInfo? cnt_info;
  @override
  final String? link;
  @override
  final int? ctime;
  @override
  final int? pubtime;
  @override
  final int? fav_time;
  @override
  final String? bv_id;
  @override
  final String? bvid;
  @override
  final BiliMediaUgc? ugc;
  @override
  final String? media_list_link;

  @override
  String toString() {
    return 'CollectsBiliMediaDto(id: $id, type: $type, title: $title, cover: $cover, intro: $intro, page: $page, duration: $duration, upper: $upper, attr: $attr, cnt_info: $cnt_info, link: $link, ctime: $ctime, pubtime: $pubtime, fav_time: $fav_time, bv_id: $bv_id, bvid: $bvid, ugc: $ugc, media_list_link: $media_list_link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsBiliMediaDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.upper, upper) || other.upper == upper) &&
            (identical(other.attr, attr) || other.attr == attr) &&
            (identical(other.cnt_info, cnt_info) ||
                other.cnt_info == cnt_info) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.ctime, ctime) || other.ctime == ctime) &&
            (identical(other.pubtime, pubtime) || other.pubtime == pubtime) &&
            (identical(other.fav_time, fav_time) ||
                other.fav_time == fav_time) &&
            (identical(other.bv_id, bv_id) || other.bv_id == bv_id) &&
            (identical(other.bvid, bvid) || other.bvid == bvid) &&
            (identical(other.ugc, ugc) || other.ugc == ugc) &&
            (identical(other.media_list_link, media_list_link) ||
                other.media_list_link == media_list_link));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      title,
      cover,
      intro,
      page,
      duration,
      upper,
      attr,
      cnt_info,
      link,
      ctime,
      pubtime,
      fav_time,
      bv_id,
      bvid,
      ugc,
      media_list_link);

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsBiliMediaDtoImplCopyWith<_$CollectsBiliMediaDtoImpl>
      get copyWith =>
          __$$CollectsBiliMediaDtoImplCopyWithImpl<_$CollectsBiliMediaDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsBiliMediaDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectsBiliMediaDto implements CollectsBiliMediaDto {
  const factory _CollectsBiliMediaDto(
      {final int? id,
      final int? type,
      final String? title,
      final String? cover,
      final String? intro,
      final int? page,
      final int? duration,
      final CollectsUpperDto? upper,
      final int? attr,
      final BiliMediaInfo? cnt_info,
      final String? link,
      final int? ctime,
      final int? pubtime,
      final int? fav_time,
      final String? bv_id,
      final String? bvid,
      final BiliMediaUgc? ugc,
      final String? media_list_link}) = _$CollectsBiliMediaDtoImpl;

  factory _CollectsBiliMediaDto.fromJson(Map<String, dynamic> json) =
      _$CollectsBiliMediaDtoImpl.fromJson;

  @override
  int? get id; //内容id 视频稿件：视频稿件avid   音频：音频auid  视频合集：视频合集id
  @override
  int? get type; //内容类型  2：视频稿件  12：音频  21：视频合集
  @override
  String? get title;
  @override
  String? get cover;
  @override
  String? get intro;
  @override
  int? get page;
  @override
  int? get duration;
  @override
  CollectsUpperDto? get upper;
  @override
  int? get attr; // 失效 0: 正常；9: up自己删除；1: 其他原因删除
  @override
  BiliMediaInfo? get cnt_info;
  @override
  String? get link;
  @override
  int? get ctime;
  @override
  int? get pubtime;
  @override
  int? get fav_time;
  @override
  String? get bv_id;
  @override
  String? get bvid;
  @override
  BiliMediaUgc? get ugc;
  @override
  String? get media_list_link;

  /// Create a copy of CollectsBiliMediaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsBiliMediaDtoImplCopyWith<_$CollectsBiliMediaDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliMediaInfo _$BiliMediaInfoFromJson(Map<String, dynamic> json) {
  return _BiliMediaInfo.fromJson(json);
}

/// @nodoc
mixin _$BiliMediaInfo {
  int? get collect => throw _privateConstructorUsedError;
  int? get play => throw _privateConstructorUsedError;
  int? get thumb_up => throw _privateConstructorUsedError; //收藏的
  int? get share => throw _privateConstructorUsedError;
  int? get danmaku => throw _privateConstructorUsedError; //视频的
  int? get vt => throw _privateConstructorUsedError;
  int? get play_switch => throw _privateConstructorUsedError;
  int? get reply => throw _privateConstructorUsedError;
  String? get view_text1 => throw _privateConstructorUsedError;

  /// Serializes this BiliMediaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliMediaInfoCopyWith<BiliMediaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliMediaInfoCopyWith<$Res> {
  factory $BiliMediaInfoCopyWith(
          BiliMediaInfo value, $Res Function(BiliMediaInfo) then) =
      _$BiliMediaInfoCopyWithImpl<$Res, BiliMediaInfo>;
  @useResult
  $Res call(
      {int? collect,
      int? play,
      int? thumb_up,
      int? share,
      int? danmaku,
      int? vt,
      int? play_switch,
      int? reply,
      String? view_text1});
}

/// @nodoc
class _$BiliMediaInfoCopyWithImpl<$Res, $Val extends BiliMediaInfo>
    implements $BiliMediaInfoCopyWith<$Res> {
  _$BiliMediaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collect = freezed,
    Object? play = freezed,
    Object? thumb_up = freezed,
    Object? share = freezed,
    Object? danmaku = freezed,
    Object? vt = freezed,
    Object? play_switch = freezed,
    Object? reply = freezed,
    Object? view_text1 = freezed,
  }) {
    return _then(_value.copyWith(
      collect: freezed == collect
          ? _value.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as int?,
      play: freezed == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as int?,
      thumb_up: freezed == thumb_up
          ? _value.thumb_up
          : thumb_up // ignore: cast_nullable_to_non_nullable
              as int?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int?,
      danmaku: freezed == danmaku
          ? _value.danmaku
          : danmaku // ignore: cast_nullable_to_non_nullable
              as int?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
      play_switch: freezed == play_switch
          ? _value.play_switch
          : play_switch // ignore: cast_nullable_to_non_nullable
              as int?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as int?,
      view_text1: freezed == view_text1
          ? _value.view_text1
          : view_text1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiliMediaInfoImplCopyWith<$Res>
    implements $BiliMediaInfoCopyWith<$Res> {
  factory _$$BiliMediaInfoImplCopyWith(
          _$BiliMediaInfoImpl value, $Res Function(_$BiliMediaInfoImpl) then) =
      __$$BiliMediaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? collect,
      int? play,
      int? thumb_up,
      int? share,
      int? danmaku,
      int? vt,
      int? play_switch,
      int? reply,
      String? view_text1});
}

/// @nodoc
class __$$BiliMediaInfoImplCopyWithImpl<$Res>
    extends _$BiliMediaInfoCopyWithImpl<$Res, _$BiliMediaInfoImpl>
    implements _$$BiliMediaInfoImplCopyWith<$Res> {
  __$$BiliMediaInfoImplCopyWithImpl(
      _$BiliMediaInfoImpl _value, $Res Function(_$BiliMediaInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collect = freezed,
    Object? play = freezed,
    Object? thumb_up = freezed,
    Object? share = freezed,
    Object? danmaku = freezed,
    Object? vt = freezed,
    Object? play_switch = freezed,
    Object? reply = freezed,
    Object? view_text1 = freezed,
  }) {
    return _then(_$BiliMediaInfoImpl(
      collect: freezed == collect
          ? _value.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as int?,
      play: freezed == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as int?,
      thumb_up: freezed == thumb_up
          ? _value.thumb_up
          : thumb_up // ignore: cast_nullable_to_non_nullable
              as int?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int?,
      danmaku: freezed == danmaku
          ? _value.danmaku
          : danmaku // ignore: cast_nullable_to_non_nullable
              as int?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
      play_switch: freezed == play_switch
          ? _value.play_switch
          : play_switch // ignore: cast_nullable_to_non_nullable
              as int?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as int?,
      view_text1: freezed == view_text1
          ? _value.view_text1
          : view_text1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliMediaInfoImpl implements _BiliMediaInfo {
  const _$BiliMediaInfoImpl(
      {this.collect,
      this.play,
      this.thumb_up,
      this.share,
      this.danmaku,
      this.vt,
      this.play_switch,
      this.reply,
      this.view_text1});

  factory _$BiliMediaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliMediaInfoImplFromJson(json);

  @override
  final int? collect;
  @override
  final int? play;
  @override
  final int? thumb_up;
//收藏的
  @override
  final int? share;
  @override
  final int? danmaku;
//视频的
  @override
  final int? vt;
  @override
  final int? play_switch;
  @override
  final int? reply;
  @override
  final String? view_text1;

  @override
  String toString() {
    return 'BiliMediaInfo(collect: $collect, play: $play, thumb_up: $thumb_up, share: $share, danmaku: $danmaku, vt: $vt, play_switch: $play_switch, reply: $reply, view_text1: $view_text1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliMediaInfoImpl &&
            (identical(other.collect, collect) || other.collect == collect) &&
            (identical(other.play, play) || other.play == play) &&
            (identical(other.thumb_up, thumb_up) ||
                other.thumb_up == thumb_up) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.danmaku, danmaku) || other.danmaku == danmaku) &&
            (identical(other.vt, vt) || other.vt == vt) &&
            (identical(other.play_switch, play_switch) ||
                other.play_switch == play_switch) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.view_text1, view_text1) ||
                other.view_text1 == view_text1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, collect, play, thumb_up, share,
      danmaku, vt, play_switch, reply, view_text1);

  /// Create a copy of BiliMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliMediaInfoImplCopyWith<_$BiliMediaInfoImpl> get copyWith =>
      __$$BiliMediaInfoImplCopyWithImpl<_$BiliMediaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliMediaInfoImplToJson(
      this,
    );
  }
}

abstract class _BiliMediaInfo implements BiliMediaInfo {
  const factory _BiliMediaInfo(
      {final int? collect,
      final int? play,
      final int? thumb_up,
      final int? share,
      final int? danmaku,
      final int? vt,
      final int? play_switch,
      final int? reply,
      final String? view_text1}) = _$BiliMediaInfoImpl;

  factory _BiliMediaInfo.fromJson(Map<String, dynamic> json) =
      _$BiliMediaInfoImpl.fromJson;

  @override
  int? get collect;
  @override
  int? get play;
  @override
  int? get thumb_up; //收藏的
  @override
  int? get share;
  @override
  int? get danmaku; //视频的
  @override
  int? get vt;
  @override
  int? get play_switch;
  @override
  int? get reply;
  @override
  String? get view_text1;

  /// Create a copy of BiliMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliMediaInfoImplCopyWith<_$BiliMediaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BiliMediaUgc _$BiliMediaUgcFromJson(Map<String, dynamic> json) {
  return _BiliMediaUgc.fromJson(json);
}

/// @nodoc
mixin _$BiliMediaUgc {
  int? get first_cid => throw _privateConstructorUsedError;

  /// Serializes this BiliMediaUgc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliMediaUgc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliMediaUgcCopyWith<BiliMediaUgc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliMediaUgcCopyWith<$Res> {
  factory $BiliMediaUgcCopyWith(
          BiliMediaUgc value, $Res Function(BiliMediaUgc) then) =
      _$BiliMediaUgcCopyWithImpl<$Res, BiliMediaUgc>;
  @useResult
  $Res call({int? first_cid});
}

/// @nodoc
class _$BiliMediaUgcCopyWithImpl<$Res, $Val extends BiliMediaUgc>
    implements $BiliMediaUgcCopyWith<$Res> {
  _$BiliMediaUgcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliMediaUgc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_cid = freezed,
  }) {
    return _then(_value.copyWith(
      first_cid: freezed == first_cid
          ? _value.first_cid
          : first_cid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiliMediaUgcImplCopyWith<$Res>
    implements $BiliMediaUgcCopyWith<$Res> {
  factory _$$BiliMediaUgcImplCopyWith(
          _$BiliMediaUgcImpl value, $Res Function(_$BiliMediaUgcImpl) then) =
      __$$BiliMediaUgcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? first_cid});
}

/// @nodoc
class __$$BiliMediaUgcImplCopyWithImpl<$Res>
    extends _$BiliMediaUgcCopyWithImpl<$Res, _$BiliMediaUgcImpl>
    implements _$$BiliMediaUgcImplCopyWith<$Res> {
  __$$BiliMediaUgcImplCopyWithImpl(
      _$BiliMediaUgcImpl _value, $Res Function(_$BiliMediaUgcImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliMediaUgc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_cid = freezed,
  }) {
    return _then(_$BiliMediaUgcImpl(
      first_cid: freezed == first_cid
          ? _value.first_cid
          : first_cid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliMediaUgcImpl implements _BiliMediaUgc {
  const _$BiliMediaUgcImpl({this.first_cid});

  factory _$BiliMediaUgcImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliMediaUgcImplFromJson(json);

  @override
  final int? first_cid;

  @override
  String toString() {
    return 'BiliMediaUgc(first_cid: $first_cid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliMediaUgcImpl &&
            (identical(other.first_cid, first_cid) ||
                other.first_cid == first_cid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first_cid);

  /// Create a copy of BiliMediaUgc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliMediaUgcImplCopyWith<_$BiliMediaUgcImpl> get copyWith =>
      __$$BiliMediaUgcImplCopyWithImpl<_$BiliMediaUgcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliMediaUgcImplToJson(
      this,
    );
  }
}

abstract class _BiliMediaUgc implements BiliMediaUgc {
  const factory _BiliMediaUgc({final int? first_cid}) = _$BiliMediaUgcImpl;

  factory _BiliMediaUgc.fromJson(Map<String, dynamic> json) =
      _$BiliMediaUgcImpl.fromJson;

  @override
  int? get first_cid;

  /// Create a copy of BiliMediaUgc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliMediaUgcImplCopyWith<_$BiliMediaUgcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
