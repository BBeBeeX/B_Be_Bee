// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collect_playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectPlaylist _$CollectPlaylistFromJson(Map<String, dynamic> json) {
  return _CollectPlaylist.fromJson(json);
}

/// @nodoc
mixin _$CollectPlaylist {
//bili_season_id 先判断songs是否为空再请求
//bili_collect_id
//bili_series_id
//bili_upper_id 先判断songs是否为空再请求
//local_audios_folderPath
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get cover => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get isTop => throw _privateConstructorUsedError;
  @HiveField(4)
  List<String> get songIds => throw _privateConstructorUsedError;
  List<AudioInfo>? get songs => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get isDefault => throw _privateConstructorUsedError;
  @HiveField(6)
  int get createTime => throw _privateConstructorUsedError;
  @HiveField(7)
  CollectTypeEnum get collectCurrentType => throw _privateConstructorUsedError;
  @HiveField(8)
  CollectTypeEnum get collectSourceType => throw _privateConstructorUsedError;
  @HiveField(9)
  Upper? get upper => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get onlineId => throw _privateConstructorUsedError;

  /// Serializes this CollectPlaylist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectPlaylistCopyWith<CollectPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectPlaylistCopyWith<$Res> {
  factory $CollectPlaylistCopyWith(
          CollectPlaylist value, $Res Function(CollectPlaylist) then) =
      _$CollectPlaylistCopyWithImpl<$Res, CollectPlaylist>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String? cover,
      @HiveField(3) bool isTop,
      @HiveField(4) List<String> songIds,
      List<AudioInfo>? songs,
      @HiveField(5) bool isDefault,
      @HiveField(6) int createTime,
      @HiveField(7) CollectTypeEnum collectCurrentType,
      @HiveField(8) CollectTypeEnum collectSourceType,
      @HiveField(9) Upper? upper,
      @HiveField(10) String? onlineId});

  $UpperCopyWith<$Res>? get upper;
}

/// @nodoc
class _$CollectPlaylistCopyWithImpl<$Res, $Val extends CollectPlaylist>
    implements $CollectPlaylistCopyWith<$Res> {
  _$CollectPlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cover = freezed,
    Object? isTop = null,
    Object? songIds = null,
    Object? songs = freezed,
    Object? isDefault = null,
    Object? createTime = null,
    Object? collectCurrentType = null,
    Object? collectSourceType = null,
    Object? upper = freezed,
    Object? onlineId = freezed,
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
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      isTop: null == isTop
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      songIds: null == songIds
          ? _value.songIds
          : songIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<AudioInfo>?,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      collectCurrentType: null == collectCurrentType
          ? _value.collectCurrentType
          : collectCurrentType // ignore: cast_nullable_to_non_nullable
              as CollectTypeEnum,
      collectSourceType: null == collectSourceType
          ? _value.collectSourceType
          : collectSourceType // ignore: cast_nullable_to_non_nullable
              as CollectTypeEnum,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as Upper?,
      onlineId: freezed == onlineId
          ? _value.onlineId
          : onlineId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CollectPlaylist
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
abstract class _$$CollectPlaylistImplCopyWith<$Res>
    implements $CollectPlaylistCopyWith<$Res> {
  factory _$$CollectPlaylistImplCopyWith(_$CollectPlaylistImpl value,
          $Res Function(_$CollectPlaylistImpl) then) =
      __$$CollectPlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String? cover,
      @HiveField(3) bool isTop,
      @HiveField(4) List<String> songIds,
      List<AudioInfo>? songs,
      @HiveField(5) bool isDefault,
      @HiveField(6) int createTime,
      @HiveField(7) CollectTypeEnum collectCurrentType,
      @HiveField(8) CollectTypeEnum collectSourceType,
      @HiveField(9) Upper? upper,
      @HiveField(10) String? onlineId});

  @override
  $UpperCopyWith<$Res>? get upper;
}

/// @nodoc
class __$$CollectPlaylistImplCopyWithImpl<$Res>
    extends _$CollectPlaylistCopyWithImpl<$Res, _$CollectPlaylistImpl>
    implements _$$CollectPlaylistImplCopyWith<$Res> {
  __$$CollectPlaylistImplCopyWithImpl(
      _$CollectPlaylistImpl _value, $Res Function(_$CollectPlaylistImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cover = freezed,
    Object? isTop = null,
    Object? songIds = null,
    Object? songs = freezed,
    Object? isDefault = null,
    Object? createTime = null,
    Object? collectCurrentType = null,
    Object? collectSourceType = null,
    Object? upper = freezed,
    Object? onlineId = freezed,
  }) {
    return _then(_$CollectPlaylistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      isTop: null == isTop
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as bool,
      songIds: null == songIds
          ? _value._songIds
          : songIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      songs: freezed == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<AudioInfo>?,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      collectCurrentType: null == collectCurrentType
          ? _value.collectCurrentType
          : collectCurrentType // ignore: cast_nullable_to_non_nullable
              as CollectTypeEnum,
      collectSourceType: null == collectSourceType
          ? _value.collectSourceType
          : collectSourceType // ignore: cast_nullable_to_non_nullable
              as CollectTypeEnum,
      upper: freezed == upper
          ? _value.upper
          : upper // ignore: cast_nullable_to_non_nullable
              as Upper?,
      onlineId: freezed == onlineId
          ? _value.onlineId
          : onlineId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectPlaylistImpl extends _CollectPlaylist {
  const _$CollectPlaylistImpl(
      {@HiveField(0) this.id = '',
      @HiveField(1) this.title = '',
      @HiveField(2) this.cover,
      @HiveField(3) this.isTop = false,
      @HiveField(4) final List<String> songIds = const [],
      final List<AudioInfo>? songs,
      @HiveField(5) this.isDefault = false,
      @HiveField(6) this.createTime = 0,
      @HiveField(7) required this.collectCurrentType,
      @HiveField(8) required this.collectSourceType,
      @HiveField(9) this.upper,
      @HiveField(10) this.onlineId})
      : _songIds = songIds,
        _songs = songs,
        super._();

  factory _$CollectPlaylistImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectPlaylistImplFromJson(json);

//bili_season_id 先判断songs是否为空再请求
//bili_collect_id
//bili_series_id
//bili_upper_id 先判断songs是否为空再请求
//local_audios_folderPath
  @override
  @JsonKey()
  @HiveField(0)
  final String id;
  @override
  @JsonKey()
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String? cover;
  @override
  @JsonKey()
  @HiveField(3)
  final bool isTop;
  final List<String> _songIds;
  @override
  @JsonKey()
  @HiveField(4)
  List<String> get songIds {
    if (_songIds is EqualUnmodifiableListView) return _songIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songIds);
  }

  final List<AudioInfo>? _songs;
  @override
  List<AudioInfo>? get songs {
    final value = _songs;
    if (value == null) return null;
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  @HiveField(5)
  final bool isDefault;
  @override
  @JsonKey()
  @HiveField(6)
  final int createTime;
  @override
  @HiveField(7)
  final CollectTypeEnum collectCurrentType;
  @override
  @HiveField(8)
  final CollectTypeEnum collectSourceType;
  @override
  @HiveField(9)
  final Upper? upper;
  @override
  @HiveField(10)
  final String? onlineId;

  @override
  String toString() {
    return 'CollectPlaylist(id: $id, title: $title, cover: $cover, isTop: $isTop, songIds: $songIds, songs: $songs, isDefault: $isDefault, createTime: $createTime, collectCurrentType: $collectCurrentType, collectSourceType: $collectSourceType, upper: $upper, onlineId: $onlineId)';
  }

  /// Create a copy of CollectPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectPlaylistImplCopyWith<_$CollectPlaylistImpl> get copyWith =>
      __$$CollectPlaylistImplCopyWithImpl<_$CollectPlaylistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectPlaylistImplToJson(
      this,
    );
  }
}

abstract class _CollectPlaylist extends CollectPlaylist {
  const factory _CollectPlaylist(
      {@HiveField(0) final String id,
      @HiveField(1) final String title,
      @HiveField(2) final String? cover,
      @HiveField(3) final bool isTop,
      @HiveField(4) final List<String> songIds,
      final List<AudioInfo>? songs,
      @HiveField(5) final bool isDefault,
      @HiveField(6) final int createTime,
      @HiveField(7) required final CollectTypeEnum collectCurrentType,
      @HiveField(8) required final CollectTypeEnum collectSourceType,
      @HiveField(9) final Upper? upper,
      @HiveField(10) final String? onlineId}) = _$CollectPlaylistImpl;
  const _CollectPlaylist._() : super._();

  factory _CollectPlaylist.fromJson(Map<String, dynamic> json) =
      _$CollectPlaylistImpl.fromJson;

//bili_season_id 先判断songs是否为空再请求
//bili_collect_id
//bili_series_id
//bili_upper_id 先判断songs是否为空再请求
//local_audios_folderPath
  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String? get cover;
  @override
  @HiveField(3)
  bool get isTop;
  @override
  @HiveField(4)
  List<String> get songIds;
  @override
  List<AudioInfo>? get songs;
  @override
  @HiveField(5)
  bool get isDefault;
  @override
  @HiveField(6)
  int get createTime;
  @override
  @HiveField(7)
  CollectTypeEnum get collectCurrentType;
  @override
  @HiveField(8)
  CollectTypeEnum get collectSourceType;
  @override
  @HiveField(9)
  Upper? get upper;
  @override
  @HiveField(10)
  String? get onlineId;

  /// Create a copy of CollectPlaylist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectPlaylistImplCopyWith<_$CollectPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
