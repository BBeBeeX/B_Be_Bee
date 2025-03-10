// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_top_music_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioTopMusicListResponse _$AudioTopMusicListResponseFromJson(
    Map<String, dynamic> json) {
  return _AudioTopMusicListResponse.fromJson(json);
}

/// @nodoc
mixin _$AudioTopMusicListResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  AudioTopMusicData? get data => throw _privateConstructorUsedError;

  /// Serializes this AudioTopMusicListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioTopMusicListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioTopMusicListResponseCopyWith<AudioTopMusicListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioTopMusicListResponseCopyWith<$Res> {
  factory $AudioTopMusicListResponseCopyWith(AudioTopMusicListResponse value,
          $Res Function(AudioTopMusicListResponse) then) =
      _$AudioTopMusicListResponseCopyWithImpl<$Res, AudioTopMusicListResponse>;
  @useResult
  $Res call({int? code, String? message, int? ttl, AudioTopMusicData? data});

  $AudioTopMusicDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AudioTopMusicListResponseCopyWithImpl<$Res,
        $Val extends AudioTopMusicListResponse>
    implements $AudioTopMusicListResponseCopyWith<$Res> {
  _$AudioTopMusicListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioTopMusicListResponse
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
              as AudioTopMusicData?,
    ) as $Val);
  }

  /// Create a copy of AudioTopMusicListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioTopMusicDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AudioTopMusicDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioTopMusicListResponseImplCopyWith<$Res>
    implements $AudioTopMusicListResponseCopyWith<$Res> {
  factory _$$AudioTopMusicListResponseImplCopyWith(
          _$AudioTopMusicListResponseImpl value,
          $Res Function(_$AudioTopMusicListResponseImpl) then) =
      __$$AudioTopMusicListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, AudioTopMusicData? data});

  @override
  $AudioTopMusicDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AudioTopMusicListResponseImplCopyWithImpl<$Res>
    extends _$AudioTopMusicListResponseCopyWithImpl<$Res,
        _$AudioTopMusicListResponseImpl>
    implements _$$AudioTopMusicListResponseImplCopyWith<$Res> {
  __$$AudioTopMusicListResponseImplCopyWithImpl(
      _$AudioTopMusicListResponseImpl _value,
      $Res Function(_$AudioTopMusicListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioTopMusicListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AudioTopMusicListResponseImpl(
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
              as AudioTopMusicData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioTopMusicListResponseImpl implements _AudioTopMusicListResponse {
  const _$AudioTopMusicListResponseImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$AudioTopMusicListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioTopMusicListResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final AudioTopMusicData? data;

  @override
  String toString() {
    return 'AudioTopMusicListResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioTopMusicListResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of AudioTopMusicListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioTopMusicListResponseImplCopyWith<_$AudioTopMusicListResponseImpl>
      get copyWith => __$$AudioTopMusicListResponseImplCopyWithImpl<
          _$AudioTopMusicListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioTopMusicListResponseImplToJson(
      this,
    );
  }
}

abstract class _AudioTopMusicListResponse implements AudioTopMusicListResponse {
  const factory _AudioTopMusicListResponse(
      {final int? code,
      final String? message,
      final int? ttl,
      final AudioTopMusicData? data}) = _$AudioTopMusicListResponseImpl;

  factory _AudioTopMusicListResponse.fromJson(Map<String, dynamic> json) =
      _$AudioTopMusicListResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  AudioTopMusicData? get data;

  /// Create a copy of AudioTopMusicListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioTopMusicListResponseImplCopyWith<_$AudioTopMusicListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AudioTopMusicData _$AudioTopMusicDataFromJson(Map<String, dynamic> json) {
  return _AudioTopMusicData.fromJson(json);
}

/// @nodoc
mixin _$AudioTopMusicData {
  int? get list_id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  List<AudioTopMusicItem> get list => throw _privateConstructorUsedError;

  /// Serializes this AudioTopMusicData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioTopMusicData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioTopMusicDataCopyWith<AudioTopMusicData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioTopMusicDataCopyWith<$Res> {
  factory $AudioTopMusicDataCopyWith(
          AudioTopMusicData value, $Res Function(AudioTopMusicData) then) =
      _$AudioTopMusicDataCopyWithImpl<$Res, AudioTopMusicData>;
  @useResult
  $Res call({int? list_id, int? version, List<AudioTopMusicItem> list});
}

/// @nodoc
class _$AudioTopMusicDataCopyWithImpl<$Res, $Val extends AudioTopMusicData>
    implements $AudioTopMusicDataCopyWith<$Res> {
  _$AudioTopMusicDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioTopMusicData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list_id = freezed,
    Object? version = freezed,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list_id: freezed == list_id
          ? _value.list_id
          : list_id // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AudioTopMusicItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioTopMusicDataImplCopyWith<$Res>
    implements $AudioTopMusicDataCopyWith<$Res> {
  factory _$$AudioTopMusicDataImplCopyWith(_$AudioTopMusicDataImpl value,
          $Res Function(_$AudioTopMusicDataImpl) then) =
      __$$AudioTopMusicDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? list_id, int? version, List<AudioTopMusicItem> list});
}

/// @nodoc
class __$$AudioTopMusicDataImplCopyWithImpl<$Res>
    extends _$AudioTopMusicDataCopyWithImpl<$Res, _$AudioTopMusicDataImpl>
    implements _$$AudioTopMusicDataImplCopyWith<$Res> {
  __$$AudioTopMusicDataImplCopyWithImpl(_$AudioTopMusicDataImpl _value,
      $Res Function(_$AudioTopMusicDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioTopMusicData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list_id = freezed,
    Object? version = freezed,
    Object? list = null,
  }) {
    return _then(_$AudioTopMusicDataImpl(
      list_id: freezed == list_id
          ? _value.list_id
          : list_id // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AudioTopMusicItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioTopMusicDataImpl implements _AudioTopMusicData {
  const _$AudioTopMusicDataImpl(
      {this.list_id,
      this.version,
      final List<AudioTopMusicItem> list = const []})
      : _list = list;

  factory _$AudioTopMusicDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioTopMusicDataImplFromJson(json);

  @override
  final int? list_id;
  @override
  final int? version;
  final List<AudioTopMusicItem> _list;
  @override
  @JsonKey()
  List<AudioTopMusicItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'AudioTopMusicData(list_id: $list_id, version: $version, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioTopMusicDataImpl &&
            (identical(other.list_id, list_id) || other.list_id == list_id) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, list_id, version,
      const DeepCollectionEquality().hash(_list));

  /// Create a copy of AudioTopMusicData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioTopMusicDataImplCopyWith<_$AudioTopMusicDataImpl> get copyWith =>
      __$$AudioTopMusicDataImplCopyWithImpl<_$AudioTopMusicDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioTopMusicDataImplToJson(
      this,
    );
  }
}

abstract class _AudioTopMusicData implements AudioTopMusicData {
  const factory _AudioTopMusicData(
      {final int? list_id,
      final int? version,
      final List<AudioTopMusicItem> list}) = _$AudioTopMusicDataImpl;

  factory _AudioTopMusicData.fromJson(Map<String, dynamic> json) =
      _$AudioTopMusicDataImpl.fromJson;

  @override
  int? get list_id;
  @override
  int? get version;
  @override
  List<AudioTopMusicItem> get list;

  /// Create a copy of AudioTopMusicData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioTopMusicDataImplCopyWith<_$AudioTopMusicDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioTopMusicItem _$AudioTopMusicItemFromJson(Map<String, dynamic> json) {
  return _AudioTopMusicItem.fromJson(json);
}

/// @nodoc
mixin _$AudioTopMusicItem {
  String? get music_id => throw _privateConstructorUsedError;
  String? get music_title => throw _privateConstructorUsedError;
  String? get singer => throw _privateConstructorUsedError;
  String? get album => throw _privateConstructorUsedError;
  int? get mv_aid => throw _privateConstructorUsedError;
  String? get mv_bvid => throw _privateConstructorUsedError;
  String? get mv_cover => throw _privateConstructorUsedError;
  int? get heat => throw _privateConstructorUsedError;
  int? get rank => throw _privateConstructorUsedError;
  bool? get can_listen => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  int? get creation_aid => throw _privateConstructorUsedError;
  String? get creation_bvid => throw _privateConstructorUsedError;
  String? get creation_cover => throw _privateConstructorUsedError;
  String? get creation_title => throw _privateConstructorUsedError;
  int? get creation_up => throw _privateConstructorUsedError;
  String? get creation_nickname => throw _privateConstructorUsedError;
  int? get creation_duration => throw _privateConstructorUsedError;
  int? get creation_play => throw _privateConstructorUsedError;
  int? get vt => throw _privateConstructorUsedError;
  String? get creation_reason => throw _privateConstructorUsedError;
  List<String>? get achievements => throw _privateConstructorUsedError;
  int? get material_id => throw _privateConstructorUsedError;
  int? get material_use_num => throw _privateConstructorUsedError;
  int? get material_duration => throw _privateConstructorUsedError;
  int? get material_show => throw _privateConstructorUsedError;
  int? get song_type => throw _privateConstructorUsedError;
  int? get is_vt => throw _privateConstructorUsedError;
  String? get vt_display => throw _privateConstructorUsedError;
  int? get last_rank => throw _privateConstructorUsedError;

  /// Serializes this AudioTopMusicItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioTopMusicItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioTopMusicItemCopyWith<AudioTopMusicItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioTopMusicItemCopyWith<$Res> {
  factory $AudioTopMusicItemCopyWith(
          AudioTopMusicItem value, $Res Function(AudioTopMusicItem) then) =
      _$AudioTopMusicItemCopyWithImpl<$Res, AudioTopMusicItem>;
  @useResult
  $Res call(
      {String? music_id,
      String? music_title,
      String? singer,
      String? album,
      int? mv_aid,
      String? mv_bvid,
      String? mv_cover,
      int? heat,
      int? rank,
      bool? can_listen,
      String? recommendation,
      int? creation_aid,
      String? creation_bvid,
      String? creation_cover,
      String? creation_title,
      int? creation_up,
      String? creation_nickname,
      int? creation_duration,
      int? creation_play,
      int? vt,
      String? creation_reason,
      List<String>? achievements,
      int? material_id,
      int? material_use_num,
      int? material_duration,
      int? material_show,
      int? song_type,
      int? is_vt,
      String? vt_display,
      int? last_rank});
}

/// @nodoc
class _$AudioTopMusicItemCopyWithImpl<$Res, $Val extends AudioTopMusicItem>
    implements $AudioTopMusicItemCopyWith<$Res> {
  _$AudioTopMusicItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioTopMusicItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? music_id = freezed,
    Object? music_title = freezed,
    Object? singer = freezed,
    Object? album = freezed,
    Object? mv_aid = freezed,
    Object? mv_bvid = freezed,
    Object? mv_cover = freezed,
    Object? heat = freezed,
    Object? rank = freezed,
    Object? can_listen = freezed,
    Object? recommendation = freezed,
    Object? creation_aid = freezed,
    Object? creation_bvid = freezed,
    Object? creation_cover = freezed,
    Object? creation_title = freezed,
    Object? creation_up = freezed,
    Object? creation_nickname = freezed,
    Object? creation_duration = freezed,
    Object? creation_play = freezed,
    Object? vt = freezed,
    Object? creation_reason = freezed,
    Object? achievements = freezed,
    Object? material_id = freezed,
    Object? material_use_num = freezed,
    Object? material_duration = freezed,
    Object? material_show = freezed,
    Object? song_type = freezed,
    Object? is_vt = freezed,
    Object? vt_display = freezed,
    Object? last_rank = freezed,
  }) {
    return _then(_value.copyWith(
      music_id: freezed == music_id
          ? _value.music_id
          : music_id // ignore: cast_nullable_to_non_nullable
              as String?,
      music_title: freezed == music_title
          ? _value.music_title
          : music_title // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      mv_aid: freezed == mv_aid
          ? _value.mv_aid
          : mv_aid // ignore: cast_nullable_to_non_nullable
              as int?,
      mv_bvid: freezed == mv_bvid
          ? _value.mv_bvid
          : mv_bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      mv_cover: freezed == mv_cover
          ? _value.mv_cover
          : mv_cover // ignore: cast_nullable_to_non_nullable
              as String?,
      heat: freezed == heat
          ? _value.heat
          : heat // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      can_listen: freezed == can_listen
          ? _value.can_listen
          : can_listen // ignore: cast_nullable_to_non_nullable
              as bool?,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_aid: freezed == creation_aid
          ? _value.creation_aid
          : creation_aid // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_bvid: freezed == creation_bvid
          ? _value.creation_bvid
          : creation_bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_cover: freezed == creation_cover
          ? _value.creation_cover
          : creation_cover // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_title: freezed == creation_title
          ? _value.creation_title
          : creation_title // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_up: freezed == creation_up
          ? _value.creation_up
          : creation_up // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_nickname: freezed == creation_nickname
          ? _value.creation_nickname
          : creation_nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_duration: freezed == creation_duration
          ? _value.creation_duration
          : creation_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_play: freezed == creation_play
          ? _value.creation_play
          : creation_play // ignore: cast_nullable_to_non_nullable
              as int?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_reason: freezed == creation_reason
          ? _value.creation_reason
          : creation_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievements: freezed == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      material_id: freezed == material_id
          ? _value.material_id
          : material_id // ignore: cast_nullable_to_non_nullable
              as int?,
      material_use_num: freezed == material_use_num
          ? _value.material_use_num
          : material_use_num // ignore: cast_nullable_to_non_nullable
              as int?,
      material_duration: freezed == material_duration
          ? _value.material_duration
          : material_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      material_show: freezed == material_show
          ? _value.material_show
          : material_show // ignore: cast_nullable_to_non_nullable
              as int?,
      song_type: freezed == song_type
          ? _value.song_type
          : song_type // ignore: cast_nullable_to_non_nullable
              as int?,
      is_vt: freezed == is_vt
          ? _value.is_vt
          : is_vt // ignore: cast_nullable_to_non_nullable
              as int?,
      vt_display: freezed == vt_display
          ? _value.vt_display
          : vt_display // ignore: cast_nullable_to_non_nullable
              as String?,
      last_rank: freezed == last_rank
          ? _value.last_rank
          : last_rank // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioTopMusicItemImplCopyWith<$Res>
    implements $AudioTopMusicItemCopyWith<$Res> {
  factory _$$AudioTopMusicItemImplCopyWith(_$AudioTopMusicItemImpl value,
          $Res Function(_$AudioTopMusicItemImpl) then) =
      __$$AudioTopMusicItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? music_id,
      String? music_title,
      String? singer,
      String? album,
      int? mv_aid,
      String? mv_bvid,
      String? mv_cover,
      int? heat,
      int? rank,
      bool? can_listen,
      String? recommendation,
      int? creation_aid,
      String? creation_bvid,
      String? creation_cover,
      String? creation_title,
      int? creation_up,
      String? creation_nickname,
      int? creation_duration,
      int? creation_play,
      int? vt,
      String? creation_reason,
      List<String>? achievements,
      int? material_id,
      int? material_use_num,
      int? material_duration,
      int? material_show,
      int? song_type,
      int? is_vt,
      String? vt_display,
      int? last_rank});
}

/// @nodoc
class __$$AudioTopMusicItemImplCopyWithImpl<$Res>
    extends _$AudioTopMusicItemCopyWithImpl<$Res, _$AudioTopMusicItemImpl>
    implements _$$AudioTopMusicItemImplCopyWith<$Res> {
  __$$AudioTopMusicItemImplCopyWithImpl(_$AudioTopMusicItemImpl _value,
      $Res Function(_$AudioTopMusicItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioTopMusicItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? music_id = freezed,
    Object? music_title = freezed,
    Object? singer = freezed,
    Object? album = freezed,
    Object? mv_aid = freezed,
    Object? mv_bvid = freezed,
    Object? mv_cover = freezed,
    Object? heat = freezed,
    Object? rank = freezed,
    Object? can_listen = freezed,
    Object? recommendation = freezed,
    Object? creation_aid = freezed,
    Object? creation_bvid = freezed,
    Object? creation_cover = freezed,
    Object? creation_title = freezed,
    Object? creation_up = freezed,
    Object? creation_nickname = freezed,
    Object? creation_duration = freezed,
    Object? creation_play = freezed,
    Object? vt = freezed,
    Object? creation_reason = freezed,
    Object? achievements = freezed,
    Object? material_id = freezed,
    Object? material_use_num = freezed,
    Object? material_duration = freezed,
    Object? material_show = freezed,
    Object? song_type = freezed,
    Object? is_vt = freezed,
    Object? vt_display = freezed,
    Object? last_rank = freezed,
  }) {
    return _then(_$AudioTopMusicItemImpl(
      music_id: freezed == music_id
          ? _value.music_id
          : music_id // ignore: cast_nullable_to_non_nullable
              as String?,
      music_title: freezed == music_title
          ? _value.music_title
          : music_title // ignore: cast_nullable_to_non_nullable
              as String?,
      singer: freezed == singer
          ? _value.singer
          : singer // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      mv_aid: freezed == mv_aid
          ? _value.mv_aid
          : mv_aid // ignore: cast_nullable_to_non_nullable
              as int?,
      mv_bvid: freezed == mv_bvid
          ? _value.mv_bvid
          : mv_bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      mv_cover: freezed == mv_cover
          ? _value.mv_cover
          : mv_cover // ignore: cast_nullable_to_non_nullable
              as String?,
      heat: freezed == heat
          ? _value.heat
          : heat // ignore: cast_nullable_to_non_nullable
              as int?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      can_listen: freezed == can_listen
          ? _value.can_listen
          : can_listen // ignore: cast_nullable_to_non_nullable
              as bool?,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_aid: freezed == creation_aid
          ? _value.creation_aid
          : creation_aid // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_bvid: freezed == creation_bvid
          ? _value.creation_bvid
          : creation_bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_cover: freezed == creation_cover
          ? _value.creation_cover
          : creation_cover // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_title: freezed == creation_title
          ? _value.creation_title
          : creation_title // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_up: freezed == creation_up
          ? _value.creation_up
          : creation_up // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_nickname: freezed == creation_nickname
          ? _value.creation_nickname
          : creation_nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      creation_duration: freezed == creation_duration
          ? _value.creation_duration
          : creation_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_play: freezed == creation_play
          ? _value.creation_play
          : creation_play // ignore: cast_nullable_to_non_nullable
              as int?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
      creation_reason: freezed == creation_reason
          ? _value.creation_reason
          : creation_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      achievements: freezed == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      material_id: freezed == material_id
          ? _value.material_id
          : material_id // ignore: cast_nullable_to_non_nullable
              as int?,
      material_use_num: freezed == material_use_num
          ? _value.material_use_num
          : material_use_num // ignore: cast_nullable_to_non_nullable
              as int?,
      material_duration: freezed == material_duration
          ? _value.material_duration
          : material_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      material_show: freezed == material_show
          ? _value.material_show
          : material_show // ignore: cast_nullable_to_non_nullable
              as int?,
      song_type: freezed == song_type
          ? _value.song_type
          : song_type // ignore: cast_nullable_to_non_nullable
              as int?,
      is_vt: freezed == is_vt
          ? _value.is_vt
          : is_vt // ignore: cast_nullable_to_non_nullable
              as int?,
      vt_display: freezed == vt_display
          ? _value.vt_display
          : vt_display // ignore: cast_nullable_to_non_nullable
              as String?,
      last_rank: freezed == last_rank
          ? _value.last_rank
          : last_rank // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioTopMusicItemImpl implements _AudioTopMusicItem {
  const _$AudioTopMusicItemImpl(
      {this.music_id,
      this.music_title,
      this.singer,
      this.album,
      this.mv_aid,
      this.mv_bvid,
      this.mv_cover,
      this.heat,
      this.rank,
      this.can_listen,
      this.recommendation,
      this.creation_aid,
      this.creation_bvid,
      this.creation_cover,
      this.creation_title,
      this.creation_up,
      this.creation_nickname,
      this.creation_duration,
      this.creation_play,
      this.vt,
      this.creation_reason,
      final List<String>? achievements,
      this.material_id,
      this.material_use_num,
      this.material_duration,
      this.material_show,
      this.song_type,
      this.is_vt,
      this.vt_display,
      this.last_rank})
      : _achievements = achievements;

  factory _$AudioTopMusicItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioTopMusicItemImplFromJson(json);

  @override
  final String? music_id;
  @override
  final String? music_title;
  @override
  final String? singer;
  @override
  final String? album;
  @override
  final int? mv_aid;
  @override
  final String? mv_bvid;
  @override
  final String? mv_cover;
  @override
  final int? heat;
  @override
  final int? rank;
  @override
  final bool? can_listen;
  @override
  final String? recommendation;
  @override
  final int? creation_aid;
  @override
  final String? creation_bvid;
  @override
  final String? creation_cover;
  @override
  final String? creation_title;
  @override
  final int? creation_up;
  @override
  final String? creation_nickname;
  @override
  final int? creation_duration;
  @override
  final int? creation_play;
  @override
  final int? vt;
  @override
  final String? creation_reason;
  final List<String>? _achievements;
  @override
  List<String>? get achievements {
    final value = _achievements;
    if (value == null) return null;
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? material_id;
  @override
  final int? material_use_num;
  @override
  final int? material_duration;
  @override
  final int? material_show;
  @override
  final int? song_type;
  @override
  final int? is_vt;
  @override
  final String? vt_display;
  @override
  final int? last_rank;

  @override
  String toString() {
    return 'AudioTopMusicItem(music_id: $music_id, music_title: $music_title, singer: $singer, album: $album, mv_aid: $mv_aid, mv_bvid: $mv_bvid, mv_cover: $mv_cover, heat: $heat, rank: $rank, can_listen: $can_listen, recommendation: $recommendation, creation_aid: $creation_aid, creation_bvid: $creation_bvid, creation_cover: $creation_cover, creation_title: $creation_title, creation_up: $creation_up, creation_nickname: $creation_nickname, creation_duration: $creation_duration, creation_play: $creation_play, vt: $vt, creation_reason: $creation_reason, achievements: $achievements, material_id: $material_id, material_use_num: $material_use_num, material_duration: $material_duration, material_show: $material_show, song_type: $song_type, is_vt: $is_vt, vt_display: $vt_display, last_rank: $last_rank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioTopMusicItemImpl &&
            (identical(other.music_id, music_id) ||
                other.music_id == music_id) &&
            (identical(other.music_title, music_title) ||
                other.music_title == music_title) &&
            (identical(other.singer, singer) || other.singer == singer) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.mv_aid, mv_aid) || other.mv_aid == mv_aid) &&
            (identical(other.mv_bvid, mv_bvid) || other.mv_bvid == mv_bvid) &&
            (identical(other.mv_cover, mv_cover) ||
                other.mv_cover == mv_cover) &&
            (identical(other.heat, heat) || other.heat == heat) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.can_listen, can_listen) ||
                other.can_listen == can_listen) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.creation_aid, creation_aid) ||
                other.creation_aid == creation_aid) &&
            (identical(other.creation_bvid, creation_bvid) ||
                other.creation_bvid == creation_bvid) &&
            (identical(other.creation_cover, creation_cover) ||
                other.creation_cover == creation_cover) &&
            (identical(other.creation_title, creation_title) ||
                other.creation_title == creation_title) &&
            (identical(other.creation_up, creation_up) ||
                other.creation_up == creation_up) &&
            (identical(other.creation_nickname, creation_nickname) ||
                other.creation_nickname == creation_nickname) &&
            (identical(other.creation_duration, creation_duration) ||
                other.creation_duration == creation_duration) &&
            (identical(other.creation_play, creation_play) ||
                other.creation_play == creation_play) &&
            (identical(other.vt, vt) || other.vt == vt) &&
            (identical(other.creation_reason, creation_reason) ||
                other.creation_reason == creation_reason) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            (identical(other.material_id, material_id) ||
                other.material_id == material_id) &&
            (identical(other.material_use_num, material_use_num) ||
                other.material_use_num == material_use_num) &&
            (identical(other.material_duration, material_duration) ||
                other.material_duration == material_duration) &&
            (identical(other.material_show, material_show) ||
                other.material_show == material_show) &&
            (identical(other.song_type, song_type) ||
                other.song_type == song_type) &&
            (identical(other.is_vt, is_vt) || other.is_vt == is_vt) &&
            (identical(other.vt_display, vt_display) ||
                other.vt_display == vt_display) &&
            (identical(other.last_rank, last_rank) ||
                other.last_rank == last_rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        music_id,
        music_title,
        singer,
        album,
        mv_aid,
        mv_bvid,
        mv_cover,
        heat,
        rank,
        can_listen,
        recommendation,
        creation_aid,
        creation_bvid,
        creation_cover,
        creation_title,
        creation_up,
        creation_nickname,
        creation_duration,
        creation_play,
        vt,
        creation_reason,
        const DeepCollectionEquality().hash(_achievements),
        material_id,
        material_use_num,
        material_duration,
        material_show,
        song_type,
        is_vt,
        vt_display,
        last_rank
      ]);

  /// Create a copy of AudioTopMusicItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioTopMusicItemImplCopyWith<_$AudioTopMusicItemImpl> get copyWith =>
      __$$AudioTopMusicItemImplCopyWithImpl<_$AudioTopMusicItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioTopMusicItemImplToJson(
      this,
    );
  }
}

abstract class _AudioTopMusicItem implements AudioTopMusicItem {
  const factory _AudioTopMusicItem(
      {final String? music_id,
      final String? music_title,
      final String? singer,
      final String? album,
      final int? mv_aid,
      final String? mv_bvid,
      final String? mv_cover,
      final int? heat,
      final int? rank,
      final bool? can_listen,
      final String? recommendation,
      final int? creation_aid,
      final String? creation_bvid,
      final String? creation_cover,
      final String? creation_title,
      final int? creation_up,
      final String? creation_nickname,
      final int? creation_duration,
      final int? creation_play,
      final int? vt,
      final String? creation_reason,
      final List<String>? achievements,
      final int? material_id,
      final int? material_use_num,
      final int? material_duration,
      final int? material_show,
      final int? song_type,
      final int? is_vt,
      final String? vt_display,
      final int? last_rank}) = _$AudioTopMusicItemImpl;

  factory _AudioTopMusicItem.fromJson(Map<String, dynamic> json) =
      _$AudioTopMusicItemImpl.fromJson;

  @override
  String? get music_id;
  @override
  String? get music_title;
  @override
  String? get singer;
  @override
  String? get album;
  @override
  int? get mv_aid;
  @override
  String? get mv_bvid;
  @override
  String? get mv_cover;
  @override
  int? get heat;
  @override
  int? get rank;
  @override
  bool? get can_listen;
  @override
  String? get recommendation;
  @override
  int? get creation_aid;
  @override
  String? get creation_bvid;
  @override
  String? get creation_cover;
  @override
  String? get creation_title;
  @override
  int? get creation_up;
  @override
  String? get creation_nickname;
  @override
  int? get creation_duration;
  @override
  int? get creation_play;
  @override
  int? get vt;
  @override
  String? get creation_reason;
  @override
  List<String>? get achievements;
  @override
  int? get material_id;
  @override
  int? get material_use_num;
  @override
  int? get material_duration;
  @override
  int? get material_show;
  @override
  int? get song_type;
  @override
  int? get is_vt;
  @override
  String? get vt_display;
  @override
  int? get last_rank;

  /// Create a copy of AudioTopMusicItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioTopMusicItemImplCopyWith<_$AudioTopMusicItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
