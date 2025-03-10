// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bili_seasons_series_archives.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiliSeasonsSeriesArchives _$BiliSeasonsSeriesArchivesFromJson(
    Map<String, dynamic> json) {
  return _BiliSeasonsSeriesArchives.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsSeriesArchives {
  int? get aid => throw _privateConstructorUsedError;
  String? get bvid => throw _privateConstructorUsedError;
  int? get ctime => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError; // bool? enable_vt,
  bool? get interactive_video => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;
  int? get playback_position => throw _privateConstructorUsedError;
  int? get pubdate => throw _privateConstructorUsedError;
  BiliSeasonsSeriesArchivesStat? get stat => throw _privateConstructorUsedError;
  int? get state => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get ugc_pay => throw _privateConstructorUsedError;
  String? get vt_display => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsSeriesArchives to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsSeriesArchives
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsSeriesArchivesCopyWith<BiliSeasonsSeriesArchives> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsSeriesArchivesCopyWith<$Res> {
  factory $BiliSeasonsSeriesArchivesCopyWith(BiliSeasonsSeriesArchives value,
          $Res Function(BiliSeasonsSeriesArchives) then) =
      _$BiliSeasonsSeriesArchivesCopyWithImpl<$Res, BiliSeasonsSeriesArchives>;
  @useResult
  $Res call(
      {int? aid,
      String? bvid,
      int? ctime,
      int? duration,
      bool? interactive_video,
      String? pic,
      int? playback_position,
      int? pubdate,
      BiliSeasonsSeriesArchivesStat? stat,
      int? state,
      String? title,
      int? ugc_pay,
      String? vt_display});

  $BiliSeasonsSeriesArchivesStatCopyWith<$Res>? get stat;
}

/// @nodoc
class _$BiliSeasonsSeriesArchivesCopyWithImpl<$Res,
        $Val extends BiliSeasonsSeriesArchives>
    implements $BiliSeasonsSeriesArchivesCopyWith<$Res> {
  _$BiliSeasonsSeriesArchivesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsSeriesArchives
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aid = freezed,
    Object? bvid = freezed,
    Object? ctime = freezed,
    Object? duration = freezed,
    Object? interactive_video = freezed,
    Object? pic = freezed,
    Object? playback_position = freezed,
    Object? pubdate = freezed,
    Object? stat = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? ugc_pay = freezed,
    Object? vt_display = freezed,
  }) {
    return _then(_value.copyWith(
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      bvid: freezed == bvid
          ? _value.bvid
          : bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      interactive_video: freezed == interactive_video
          ? _value.interactive_video
          : interactive_video // ignore: cast_nullable_to_non_nullable
              as bool?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      playback_position: freezed == playback_position
          ? _value.playback_position
          : playback_position // ignore: cast_nullable_to_non_nullable
              as int?,
      pubdate: freezed == pubdate
          ? _value.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as int?,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesArchivesStat?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ugc_pay: freezed == ugc_pay
          ? _value.ugc_pay
          : ugc_pay // ignore: cast_nullable_to_non_nullable
              as int?,
      vt_display: freezed == vt_display
          ? _value.vt_display
          : vt_display // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonsSeriesArchives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonsSeriesArchivesStatCopyWith<$Res>? get stat {
    if (_value.stat == null) {
      return null;
    }

    return $BiliSeasonsSeriesArchivesStatCopyWith<$Res>(_value.stat!, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeasonsSeriesArchivesImplCopyWith<$Res>
    implements $BiliSeasonsSeriesArchivesCopyWith<$Res> {
  factory _$$BiliSeasonsSeriesArchivesImplCopyWith(
          _$BiliSeasonsSeriesArchivesImpl value,
          $Res Function(_$BiliSeasonsSeriesArchivesImpl) then) =
      __$$BiliSeasonsSeriesArchivesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? aid,
      String? bvid,
      int? ctime,
      int? duration,
      bool? interactive_video,
      String? pic,
      int? playback_position,
      int? pubdate,
      BiliSeasonsSeriesArchivesStat? stat,
      int? state,
      String? title,
      int? ugc_pay,
      String? vt_display});

  @override
  $BiliSeasonsSeriesArchivesStatCopyWith<$Res>? get stat;
}

/// @nodoc
class __$$BiliSeasonsSeriesArchivesImplCopyWithImpl<$Res>
    extends _$BiliSeasonsSeriesArchivesCopyWithImpl<$Res,
        _$BiliSeasonsSeriesArchivesImpl>
    implements _$$BiliSeasonsSeriesArchivesImplCopyWith<$Res> {
  __$$BiliSeasonsSeriesArchivesImplCopyWithImpl(
      _$BiliSeasonsSeriesArchivesImpl _value,
      $Res Function(_$BiliSeasonsSeriesArchivesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsSeriesArchives
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aid = freezed,
    Object? bvid = freezed,
    Object? ctime = freezed,
    Object? duration = freezed,
    Object? interactive_video = freezed,
    Object? pic = freezed,
    Object? playback_position = freezed,
    Object? pubdate = freezed,
    Object? stat = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? ugc_pay = freezed,
    Object? vt_display = freezed,
  }) {
    return _then(_$BiliSeasonsSeriesArchivesImpl(
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      bvid: freezed == bvid
          ? _value.bvid
          : bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      interactive_video: freezed == interactive_video
          ? _value.interactive_video
          : interactive_video // ignore: cast_nullable_to_non_nullable
              as bool?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      playback_position: freezed == playback_position
          ? _value.playback_position
          : playback_position // ignore: cast_nullable_to_non_nullable
              as int?,
      pubdate: freezed == pubdate
          ? _value.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as int?,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesArchivesStat?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      ugc_pay: freezed == ugc_pay
          ? _value.ugc_pay
          : ugc_pay // ignore: cast_nullable_to_non_nullable
              as int?,
      vt_display: freezed == vt_display
          ? _value.vt_display
          : vt_display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonsSeriesArchivesImpl implements _BiliSeasonsSeriesArchives {
  const _$BiliSeasonsSeriesArchivesImpl(
      {this.aid,
      this.bvid,
      this.ctime,
      this.duration,
      this.interactive_video,
      this.pic,
      this.playback_position,
      this.pubdate,
      this.stat,
      this.state,
      this.title,
      this.ugc_pay,
      this.vt_display});

  factory _$BiliSeasonsSeriesArchivesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeasonsSeriesArchivesImplFromJson(json);

  @override
  final int? aid;
  @override
  final String? bvid;
  @override
  final int? ctime;
  @override
  final int? duration;
// bool? enable_vt,
  @override
  final bool? interactive_video;
  @override
  final String? pic;
  @override
  final int? playback_position;
  @override
  final int? pubdate;
  @override
  final BiliSeasonsSeriesArchivesStat? stat;
  @override
  final int? state;
  @override
  final String? title;
  @override
  final int? ugc_pay;
  @override
  final String? vt_display;

  @override
  String toString() {
    return 'BiliSeasonsSeriesArchives(aid: $aid, bvid: $bvid, ctime: $ctime, duration: $duration, interactive_video: $interactive_video, pic: $pic, playback_position: $playback_position, pubdate: $pubdate, stat: $stat, state: $state, title: $title, ugc_pay: $ugc_pay, vt_display: $vt_display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonsSeriesArchivesImpl &&
            (identical(other.aid, aid) || other.aid == aid) &&
            (identical(other.bvid, bvid) || other.bvid == bvid) &&
            (identical(other.ctime, ctime) || other.ctime == ctime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.interactive_video, interactive_video) ||
                other.interactive_video == interactive_video) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.playback_position, playback_position) ||
                other.playback_position == playback_position) &&
            (identical(other.pubdate, pubdate) || other.pubdate == pubdate) &&
            (identical(other.stat, stat) || other.stat == stat) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ugc_pay, ugc_pay) || other.ugc_pay == ugc_pay) &&
            (identical(other.vt_display, vt_display) ||
                other.vt_display == vt_display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aid,
      bvid,
      ctime,
      duration,
      interactive_video,
      pic,
      playback_position,
      pubdate,
      stat,
      state,
      title,
      ugc_pay,
      vt_display);

  /// Create a copy of BiliSeasonsSeriesArchives
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonsSeriesArchivesImplCopyWith<_$BiliSeasonsSeriesArchivesImpl>
      get copyWith => __$$BiliSeasonsSeriesArchivesImplCopyWithImpl<
          _$BiliSeasonsSeriesArchivesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonsSeriesArchivesImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonsSeriesArchives implements BiliSeasonsSeriesArchives {
  const factory _BiliSeasonsSeriesArchives(
      {final int? aid,
      final String? bvid,
      final int? ctime,
      final int? duration,
      final bool? interactive_video,
      final String? pic,
      final int? playback_position,
      final int? pubdate,
      final BiliSeasonsSeriesArchivesStat? stat,
      final int? state,
      final String? title,
      final int? ugc_pay,
      final String? vt_display}) = _$BiliSeasonsSeriesArchivesImpl;

  factory _BiliSeasonsSeriesArchives.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonsSeriesArchivesImpl.fromJson;

  @override
  int? get aid;
  @override
  String? get bvid;
  @override
  int? get ctime;
  @override
  int? get duration; // bool? enable_vt,
  @override
  bool? get interactive_video;
  @override
  String? get pic;
  @override
  int? get playback_position;
  @override
  int? get pubdate;
  @override
  BiliSeasonsSeriesArchivesStat? get stat;
  @override
  int? get state;
  @override
  String? get title;
  @override
  int? get ugc_pay;
  @override
  String? get vt_display;

  /// Create a copy of BiliSeasonsSeriesArchives
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonsSeriesArchivesImplCopyWith<_$BiliSeasonsSeriesArchivesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliSeasonsSeriesArchivesStat _$BiliSeasonsSeriesArchivesStatFromJson(
    Map<String, dynamic> json) {
  return _BiliSeasonsSeriesArchivesStat.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsSeriesArchivesStat {
  int? get view => throw _privateConstructorUsedError;
  int? get vt => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsSeriesArchivesStat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsSeriesArchivesStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsSeriesArchivesStatCopyWith<BiliSeasonsSeriesArchivesStat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsSeriesArchivesStatCopyWith<$Res> {
  factory $BiliSeasonsSeriesArchivesStatCopyWith(
          BiliSeasonsSeriesArchivesStat value,
          $Res Function(BiliSeasonsSeriesArchivesStat) then) =
      _$BiliSeasonsSeriesArchivesStatCopyWithImpl<$Res,
          BiliSeasonsSeriesArchivesStat>;
  @useResult
  $Res call({int? view, int? vt});
}

/// @nodoc
class _$BiliSeasonsSeriesArchivesStatCopyWithImpl<$Res,
        $Val extends BiliSeasonsSeriesArchivesStat>
    implements $BiliSeasonsSeriesArchivesStatCopyWith<$Res> {
  _$BiliSeasonsSeriesArchivesStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsSeriesArchivesStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = freezed,
    Object? vt = freezed,
  }) {
    return _then(_value.copyWith(
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiliSeasonsSeriesArchivesStatImplCopyWith<$Res>
    implements $BiliSeasonsSeriesArchivesStatCopyWith<$Res> {
  factory _$$BiliSeasonsSeriesArchivesStatImplCopyWith(
          _$BiliSeasonsSeriesArchivesStatImpl value,
          $Res Function(_$BiliSeasonsSeriesArchivesStatImpl) then) =
      __$$BiliSeasonsSeriesArchivesStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? view, int? vt});
}

/// @nodoc
class __$$BiliSeasonsSeriesArchivesStatImplCopyWithImpl<$Res>
    extends _$BiliSeasonsSeriesArchivesStatCopyWithImpl<$Res,
        _$BiliSeasonsSeriesArchivesStatImpl>
    implements _$$BiliSeasonsSeriesArchivesStatImplCopyWith<$Res> {
  __$$BiliSeasonsSeriesArchivesStatImplCopyWithImpl(
      _$BiliSeasonsSeriesArchivesStatImpl _value,
      $Res Function(_$BiliSeasonsSeriesArchivesStatImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsSeriesArchivesStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = freezed,
    Object? vt = freezed,
  }) {
    return _then(_$BiliSeasonsSeriesArchivesStatImpl(
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonsSeriesArchivesStatImpl
    implements _BiliSeasonsSeriesArchivesStat {
  const _$BiliSeasonsSeriesArchivesStatImpl({this.view, this.vt});

  factory _$BiliSeasonsSeriesArchivesStatImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BiliSeasonsSeriesArchivesStatImplFromJson(json);

  @override
  final int? view;
  @override
  final int? vt;

  @override
  String toString() {
    return 'BiliSeasonsSeriesArchivesStat(view: $view, vt: $vt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonsSeriesArchivesStatImpl &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.vt, vt) || other.vt == vt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, view, vt);

  /// Create a copy of BiliSeasonsSeriesArchivesStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonsSeriesArchivesStatImplCopyWith<
          _$BiliSeasonsSeriesArchivesStatImpl>
      get copyWith => __$$BiliSeasonsSeriesArchivesStatImplCopyWithImpl<
          _$BiliSeasonsSeriesArchivesStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonsSeriesArchivesStatImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonsSeriesArchivesStat
    implements BiliSeasonsSeriesArchivesStat {
  const factory _BiliSeasonsSeriesArchivesStat(
      {final int? view, final int? vt}) = _$BiliSeasonsSeriesArchivesStatImpl;

  factory _BiliSeasonsSeriesArchivesStat.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonsSeriesArchivesStatImpl.fromJson;

  @override
  int? get view;
  @override
  int? get vt;

  /// Create a copy of BiliSeasonsSeriesArchivesStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonsSeriesArchivesStatImplCopyWith<
          _$BiliSeasonsSeriesArchivesStatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
