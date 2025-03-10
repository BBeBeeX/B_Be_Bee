// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioInfo _$AudioInfoFromJson(Map<String, dynamic> json) {
  return _AudioInfo.fromJson(json);
}

/// @nodoc
mixin _$AudioInfo {
  ///bili 'bili_$bid'
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  int get duration => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get music_title => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get music_singer => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get music_album => throw _privateConstructorUsedError;
  @HiveField(6)
  AudioSourceTypeEnum get audioCurrentType =>
      throw _privateConstructorUsedError; //视频当前类型
  @HiveField(7)
  AudioSourceTypeEnum get audioSourceType =>
      throw _privateConstructorUsedError; //视频最初类型
  @HiveField(8)
  Upper get upper => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get lyrics => throw _privateConstructorUsedError; //webvtt 格式字幕
//本地源设置
  @HiveField(10)
  String get localPath => throw _privateConstructorUsedError;
  @HiveField(11)
  String get coverLocalUrl =>
      throw _privateConstructorUsedError; //bili源设置bvid和cid
  @HiveField(12)
  String get onlineId => throw _privateConstructorUsedError; //bili 为 bvid
  @HiveField(13)
  int get biliCid => throw _privateConstructorUsedError;
  @HiveField(14)
  String get coverWebUrl => throw _privateConstructorUsedError;

  /// Serializes this AudioInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioInfoCopyWith<AudioInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioInfoCopyWith<$Res> {
  factory $AudioInfoCopyWith(AudioInfo value, $Res Function(AudioInfo) then) =
      _$AudioInfoCopyWithImpl<$Res, AudioInfo>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) int duration,
      @HiveField(3) String? music_title,
      @HiveField(4) String? music_singer,
      @HiveField(5) String? music_album,
      @HiveField(6) AudioSourceTypeEnum audioCurrentType,
      @HiveField(7) AudioSourceTypeEnum audioSourceType,
      @HiveField(8) Upper upper,
      @HiveField(9) String? lyrics,
      @HiveField(10) String localPath,
      @HiveField(11) String coverLocalUrl,
      @HiveField(12) String onlineId,
      @HiveField(13) int biliCid,
      @HiveField(14) String coverWebUrl});

  $UpperCopyWith<$Res> get upper;
}

/// @nodoc
class _$AudioInfoCopyWithImpl<$Res, $Val extends AudioInfo>
    implements $AudioInfoCopyWith<$Res> {
  _$AudioInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? duration = null,
    Object? music_title = freezed,
    Object? music_singer = freezed,
    Object? music_album = freezed,
    Object? audioCurrentType = null,
    Object? audioSourceType = null,
    Object? upper = null,
    Object? lyrics = freezed,
    Object? localPath = null,
    Object? coverLocalUrl = null,
    Object? onlineId = null,
    Object? biliCid = null,
    Object? coverWebUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      music_title: freezed == music_title
          ? _value.music_title
          : music_title // ignore: cast_nullable_to_non_nullable
              as String?,
      music_singer: freezed == music_singer
          ? _value.music_singer
          : music_singer // ignore: cast_nullable_to_non_nullable
              as String?,
      music_album: freezed == music_album
          ? _value.music_album
          : music_album // ignore: cast_nullable_to_non_nullable
              as String?,
      audioCurrentType: null == audioCurrentType
          ? _value.audioCurrentType
          : audioCurrentType // ignore: cast_nullable_to_non_nullable
              as AudioSourceTypeEnum,
      audioSourceType: null == audioSourceType
          ? _value.audioSourceType
          : audioSourceType // ignore: cast_nullable_to_non_nullable
              as AudioSourceTypeEnum,
      upper: null == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as Upper,
      lyrics: freezed == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: null == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String,
      coverLocalUrl: null == coverLocalUrl
          ? _value.coverLocalUrl
          : coverLocalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      onlineId: null == onlineId
          ? _value.onlineId
          : onlineId // ignore: cast_nullable_to_non_nullable
              as String,
      biliCid: null == biliCid
          ? _value.biliCid
          : biliCid // ignore: cast_nullable_to_non_nullable
              as int,
      coverWebUrl: null == coverWebUrl
          ? _value.coverWebUrl
          : coverWebUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AudioInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpperCopyWith<$Res> get upper {
    return $UpperCopyWith<$Res>(_value.upper, (value) {
      return _then(_value.copyWith(upper: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioInfoImplCopyWith<$Res>
    implements $AudioInfoCopyWith<$Res> {
  factory _$$AudioInfoImplCopyWith(
          _$AudioInfoImpl value, $Res Function(_$AudioInfoImpl) then) =
      __$$AudioInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) int duration,
      @HiveField(3) String? music_title,
      @HiveField(4) String? music_singer,
      @HiveField(5) String? music_album,
      @HiveField(6) AudioSourceTypeEnum audioCurrentType,
      @HiveField(7) AudioSourceTypeEnum audioSourceType,
      @HiveField(8) Upper upper,
      @HiveField(9) String? lyrics,
      @HiveField(10) String localPath,
      @HiveField(11) String coverLocalUrl,
      @HiveField(12) String onlineId,
      @HiveField(13) int biliCid,
      @HiveField(14) String coverWebUrl});

  @override
  $UpperCopyWith<$Res> get upper;
}

/// @nodoc
class __$$AudioInfoImplCopyWithImpl<$Res>
    extends _$AudioInfoCopyWithImpl<$Res, _$AudioInfoImpl>
    implements _$$AudioInfoImplCopyWith<$Res> {
  __$$AudioInfoImplCopyWithImpl(
      _$AudioInfoImpl _value, $Res Function(_$AudioInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? duration = null,
    Object? music_title = freezed,
    Object? music_singer = freezed,
    Object? music_album = freezed,
    Object? audioCurrentType = null,
    Object? audioSourceType = null,
    Object? upper = null,
    Object? lyrics = freezed,
    Object? localPath = null,
    Object? coverLocalUrl = null,
    Object? onlineId = null,
    Object? biliCid = null,
    Object? coverWebUrl = null,
  }) {
    return _then(_$AudioInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      music_title: freezed == music_title
          ? _value.music_title
          : music_title // ignore: cast_nullable_to_non_nullable
              as String?,
      music_singer: freezed == music_singer
          ? _value.music_singer
          : music_singer // ignore: cast_nullable_to_non_nullable
              as String?,
      music_album: freezed == music_album
          ? _value.music_album
          : music_album // ignore: cast_nullable_to_non_nullable
              as String?,
      audioCurrentType: null == audioCurrentType
          ? _value.audioCurrentType
          : audioCurrentType // ignore: cast_nullable_to_non_nullable
              as AudioSourceTypeEnum,
      audioSourceType: null == audioSourceType
          ? _value.audioSourceType
          : audioSourceType // ignore: cast_nullable_to_non_nullable
              as AudioSourceTypeEnum,
      upper: null == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as Upper,
      lyrics: freezed == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as String?,
      localPath: null == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as String,
      coverLocalUrl: null == coverLocalUrl
          ? _value.coverLocalUrl
          : coverLocalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      onlineId: null == onlineId
          ? _value.onlineId
          : onlineId // ignore: cast_nullable_to_non_nullable
              as String,
      biliCid: null == biliCid
          ? _value.biliCid
          : biliCid // ignore: cast_nullable_to_non_nullable
              as int,
      coverWebUrl: null == coverWebUrl
          ? _value.coverWebUrl
          : coverWebUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 9)
class _$AudioInfoImpl implements _AudioInfo {
  const _$AudioInfoImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.title = '',
      @HiveField(2) this.duration = 0,
      @HiveField(3) this.music_title,
      @HiveField(4) this.music_singer,
      @HiveField(5) this.music_album,
      @HiveField(6) this.audioCurrentType = AudioSourceTypeEnum.bili,
      @HiveField(7) this.audioSourceType = AudioSourceTypeEnum.bili,
      @HiveField(8) this.upper = const Upper(),
      @HiveField(9) this.lyrics,
      @HiveField(10) this.localPath = '',
      @HiveField(11) this.coverLocalUrl = '',
      @HiveField(12) this.onlineId = '',
      @HiveField(13) this.biliCid = 0,
      @HiveField(14) this.coverWebUrl = ''});

  factory _$AudioInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioInfoImplFromJson(json);

  ///bili 'bili_$bid'
  @override
  @HiveField(0)
  final String id;
  @override
  @JsonKey()
  @HiveField(1)
  final String title;
  @override
  @JsonKey()
  @HiveField(2)
  final int duration;
  @override
  @HiveField(3)
  final String? music_title;
  @override
  @HiveField(4)
  final String? music_singer;
  @override
  @HiveField(5)
  final String? music_album;
  @override
  @JsonKey()
  @HiveField(6)
  final AudioSourceTypeEnum audioCurrentType;
//视频当前类型
  @override
  @JsonKey()
  @HiveField(7)
  final AudioSourceTypeEnum audioSourceType;
//视频最初类型
  @override
  @JsonKey()
  @HiveField(8)
  final Upper upper;
  @override
  @HiveField(9)
  final String? lyrics;
//webvtt 格式字幕
//本地源设置
  @override
  @JsonKey()
  @HiveField(10)
  final String localPath;
  @override
  @JsonKey()
  @HiveField(11)
  final String coverLocalUrl;
//bili源设置bvid和cid
  @override
  @JsonKey()
  @HiveField(12)
  final String onlineId;
//bili 为 bvid
  @override
  @JsonKey()
  @HiveField(13)
  final int biliCid;
  @override
  @JsonKey()
  @HiveField(14)
  final String coverWebUrl;

  @override
  String toString() {
    return 'AudioInfo(id: $id, title: $title, duration: $duration, music_title: $music_title, music_singer: $music_singer, music_album: $music_album, audioCurrentType: $audioCurrentType, audioSourceType: $audioSourceType, upper: $upper, lyrics: $lyrics, localPath: $localPath, coverLocalUrl: $coverLocalUrl, onlineId: $onlineId, biliCid: $biliCid, coverWebUrl: $coverWebUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.music_title, music_title) ||
                other.music_title == music_title) &&
            (identical(other.music_singer, music_singer) ||
                other.music_singer == music_singer) &&
            (identical(other.music_album, music_album) ||
                other.music_album == music_album) &&
            (identical(other.audioCurrentType, audioCurrentType) ||
                other.audioCurrentType == audioCurrentType) &&
            (identical(other.audioSourceType, audioSourceType) ||
                other.audioSourceType == audioSourceType) &&
            (identical(other.upper, upper) || other.upper == upper) &&
            (identical(other.lyrics, lyrics) || other.lyrics == lyrics) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.coverLocalUrl, coverLocalUrl) ||
                other.coverLocalUrl == coverLocalUrl) &&
            (identical(other.onlineId, onlineId) ||
                other.onlineId == onlineId) &&
            (identical(other.biliCid, biliCid) || other.biliCid == biliCid) &&
            (identical(other.coverWebUrl, coverWebUrl) ||
                other.coverWebUrl == coverWebUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      duration,
      music_title,
      music_singer,
      music_album,
      audioCurrentType,
      audioSourceType,
      upper,
      lyrics,
      localPath,
      coverLocalUrl,
      onlineId,
      biliCid,
      coverWebUrl);

  /// Create a copy of AudioInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioInfoImplCopyWith<_$AudioInfoImpl> get copyWith =>
      __$$AudioInfoImplCopyWithImpl<_$AudioInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioInfoImplToJson(
      this,
    );
  }
}

abstract class _AudioInfo implements AudioInfo {
  const factory _AudioInfo(
      {@HiveField(0) required final String id,
      @HiveField(1) final String title,
      @HiveField(2) final int duration,
      @HiveField(3) final String? music_title,
      @HiveField(4) final String? music_singer,
      @HiveField(5) final String? music_album,
      @HiveField(6) final AudioSourceTypeEnum audioCurrentType,
      @HiveField(7) final AudioSourceTypeEnum audioSourceType,
      @HiveField(8) final Upper upper,
      @HiveField(9) final String? lyrics,
      @HiveField(10) final String localPath,
      @HiveField(11) final String coverLocalUrl,
      @HiveField(12) final String onlineId,
      @HiveField(13) final int biliCid,
      @HiveField(14) final String coverWebUrl}) = _$AudioInfoImpl;

  factory _AudioInfo.fromJson(Map<String, dynamic> json) =
      _$AudioInfoImpl.fromJson;

  ///bili 'bili_$bid'
  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  int get duration;
  @override
  @HiveField(3)
  String? get music_title;
  @override
  @HiveField(4)
  String? get music_singer;
  @override
  @HiveField(5)
  String? get music_album;
  @override
  @HiveField(6)
  AudioSourceTypeEnum get audioCurrentType; //视频当前类型
  @override
  @HiveField(7)
  AudioSourceTypeEnum get audioSourceType; //视频最初类型
  @override
  @HiveField(8)
  Upper get upper;
  @override
  @HiveField(9)
  String? get lyrics; //webvtt 格式字幕
//本地源设置
  @override
  @HiveField(10)
  String get localPath;
  @override
  @HiveField(11)
  String get coverLocalUrl; //bili源设置bvid和cid
  @override
  @HiveField(12)
  String get onlineId; //bili 为 bvid
  @override
  @HiveField(13)
  int get biliCid;
  @override
  @HiveField(14)
  String get coverWebUrl;

  /// Create a copy of AudioInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioInfoImplCopyWith<_$AudioInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
