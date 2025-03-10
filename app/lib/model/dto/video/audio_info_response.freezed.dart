// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioInfoResponse _$AudioInfoResponseFromJson(Map<String, dynamic> json) {
  return _AudioInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$AudioInfoResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  AudioInfoResponseData? get data => throw _privateConstructorUsedError;

  /// Serializes this AudioInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioInfoResponseCopyWith<AudioInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioInfoResponseCopyWith<$Res> {
  factory $AudioInfoResponseCopyWith(
          AudioInfoResponse value, $Res Function(AudioInfoResponse) then) =
      _$AudioInfoResponseCopyWithImpl<$Res, AudioInfoResponse>;
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, AudioInfoResponseData? data});

  $AudioInfoResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AudioInfoResponseCopyWithImpl<$Res, $Val extends AudioInfoResponse>
    implements $AudioInfoResponseCopyWith<$Res> {
  _$AudioInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioInfoResponse
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
              as AudioInfoResponseData?,
    ) as $Val);
  }

  /// Create a copy of AudioInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioInfoResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AudioInfoResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioInfoResponseImplCopyWith<$Res>
    implements $AudioInfoResponseCopyWith<$Res> {
  factory _$$AudioInfoResponseImplCopyWith(_$AudioInfoResponseImpl value,
          $Res Function(_$AudioInfoResponseImpl) then) =
      __$$AudioInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, AudioInfoResponseData? data});

  @override
  $AudioInfoResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AudioInfoResponseImplCopyWithImpl<$Res>
    extends _$AudioInfoResponseCopyWithImpl<$Res, _$AudioInfoResponseImpl>
    implements _$$AudioInfoResponseImplCopyWith<$Res> {
  __$$AudioInfoResponseImplCopyWithImpl(_$AudioInfoResponseImpl _value,
      $Res Function(_$AudioInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AudioInfoResponseImpl(
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
              as AudioInfoResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioInfoResponseImpl
    with DiagnosticableTreeMixin
    implements _AudioInfoResponse {
  const _$AudioInfoResponseImpl({this.code, this.message, this.ttl, this.data});

  factory _$AudioInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioInfoResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final AudioInfoResponseData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioInfoResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioInfoResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioInfoResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of AudioInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioInfoResponseImplCopyWith<_$AudioInfoResponseImpl> get copyWith =>
      __$$AudioInfoResponseImplCopyWithImpl<_$AudioInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _AudioInfoResponse implements AudioInfoResponse {
  const factory _AudioInfoResponse(
      {final int? code,
      final String? message,
      final int? ttl,
      final AudioInfoResponseData? data}) = _$AudioInfoResponseImpl;

  factory _AudioInfoResponse.fromJson(Map<String, dynamic> json) =
      _$AudioInfoResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  AudioInfoResponseData? get data;

  /// Create a copy of AudioInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioInfoResponseImplCopyWith<_$AudioInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioInfoResponseData _$AudioInfoResponseDataFromJson(
    Map<String, dynamic> json) {
  return _AudioInfoResponseData.fromJson(json);
}

/// @nodoc
mixin _$AudioInfoResponseData {
  String? get bvid => throw _privateConstructorUsedError;
  int? get aid => throw _privateConstructorUsedError;
  int? get videos => throw _privateConstructorUsedError;
  int? get tid => throw _privateConstructorUsedError;
  String? get tname => throw _privateConstructorUsedError;
  int? get copyright => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get pubdate => throw _privateConstructorUsedError;
  int? get ctime => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  List<DescV2>? get descV2 => throw _privateConstructorUsedError;
  int? get state => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get missionId => throw _privateConstructorUsedError;
  Rights? get rights => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  Stat? get stat => throw _privateConstructorUsedError;
  ArgueInfo? get argueInfo => throw _privateConstructorUsedError;
  String? get dynamicProperty => throw _privateConstructorUsedError;
  int? get cid => throw _privateConstructorUsedError;
  Dimension? get dimension => throw _privateConstructorUsedError;
  int? get teenageMode => throw _privateConstructorUsedError;
  bool? get isChargeableSeason => throw _privateConstructorUsedError;
  bool? get isStory => throw _privateConstructorUsedError;
  bool? get isUpowerExclusive => throw _privateConstructorUsedError;
  bool? get isUpowerPlay => throw _privateConstructorUsedError;
  int? get enableVt => throw _privateConstructorUsedError;
  String? get vtDisplay => throw _privateConstructorUsedError;
  bool? get noCache => throw _privateConstructorUsedError;
  List<Pages>? get pages => throw _privateConstructorUsedError;
  Subtitle? get subtitle => throw _privateConstructorUsedError;
  List<Staff>? get staff => throw _privateConstructorUsedError;
  bool? get isSeasonDisplay => throw _privateConstructorUsedError;
  UserGarb? get userGarb => throw _privateConstructorUsedError;
  HonorReply? get honorReply => throw _privateConstructorUsedError;
  String? get likeIcon => throw _privateConstructorUsedError;
  bool? get needJumpBv => throw _privateConstructorUsedError;
  bool? get disableShowUpInfo => throw _privateConstructorUsedError;

  /// Serializes this AudioInfoResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioInfoResponseDataCopyWith<AudioInfoResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioInfoResponseDataCopyWith<$Res> {
  factory $AudioInfoResponseDataCopyWith(AudioInfoResponseData value,
          $Res Function(AudioInfoResponseData) then) =
      _$AudioInfoResponseDataCopyWithImpl<$Res, AudioInfoResponseData>;
  @useResult
  $Res call(
      {String? bvid,
      int? aid,
      int? videos,
      int? tid,
      String? tname,
      int? copyright,
      String? pic,
      String? title,
      int? pubdate,
      int? ctime,
      String? desc,
      List<DescV2>? descV2,
      int? state,
      int? duration,
      int? missionId,
      Rights? rights,
      Owner? owner,
      Stat? stat,
      ArgueInfo? argueInfo,
      String? dynamicProperty,
      int? cid,
      Dimension? dimension,
      int? teenageMode,
      bool? isChargeableSeason,
      bool? isStory,
      bool? isUpowerExclusive,
      bool? isUpowerPlay,
      int? enableVt,
      String? vtDisplay,
      bool? noCache,
      List<Pages>? pages,
      Subtitle? subtitle,
      List<Staff>? staff,
      bool? isSeasonDisplay,
      UserGarb? userGarb,
      HonorReply? honorReply,
      String? likeIcon,
      bool? needJumpBv,
      bool? disableShowUpInfo});

  $RightsCopyWith<$Res>? get rights;
  $OwnerCopyWith<$Res>? get owner;
  $StatCopyWith<$Res>? get stat;
  $ArgueInfoCopyWith<$Res>? get argueInfo;
  $DimensionCopyWith<$Res>? get dimension;
  $SubtitleCopyWith<$Res>? get subtitle;
  $UserGarbCopyWith<$Res>? get userGarb;
  $HonorReplyCopyWith<$Res>? get honorReply;
}

/// @nodoc
class _$AudioInfoResponseDataCopyWithImpl<$Res,
        $Val extends AudioInfoResponseData>
    implements $AudioInfoResponseDataCopyWith<$Res> {
  _$AudioInfoResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bvid = freezed,
    Object? aid = freezed,
    Object? videos = freezed,
    Object? tid = freezed,
    Object? tname = freezed,
    Object? copyright = freezed,
    Object? pic = freezed,
    Object? title = freezed,
    Object? pubdate = freezed,
    Object? ctime = freezed,
    Object? desc = freezed,
    Object? descV2 = freezed,
    Object? state = freezed,
    Object? duration = freezed,
    Object? missionId = freezed,
    Object? rights = freezed,
    Object? owner = freezed,
    Object? stat = freezed,
    Object? argueInfo = freezed,
    Object? dynamicProperty = freezed,
    Object? cid = freezed,
    Object? dimension = freezed,
    Object? teenageMode = freezed,
    Object? isChargeableSeason = freezed,
    Object? isStory = freezed,
    Object? isUpowerExclusive = freezed,
    Object? isUpowerPlay = freezed,
    Object? enableVt = freezed,
    Object? vtDisplay = freezed,
    Object? noCache = freezed,
    Object? pages = freezed,
    Object? subtitle = freezed,
    Object? staff = freezed,
    Object? isSeasonDisplay = freezed,
    Object? userGarb = freezed,
    Object? honorReply = freezed,
    Object? likeIcon = freezed,
    Object? needJumpBv = freezed,
    Object? disableShowUpInfo = freezed,
  }) {
    return _then(_value.copyWith(
      bvid: freezed == bvid
          ? _value.bvid
          : bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as int?,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as int?,
      tname: freezed == tname
          ? _value.tname
          : tname // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as int?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pubdate: freezed == pubdate
          ? _value.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as int?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      descV2: freezed == descV2
          ? _value.descV2
          : descV2 // ignore: cast_nullable_to_non_nullable
              as List<DescV2>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      missionId: freezed == missionId
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as int?,
      rights: freezed == rights
          ? _value.rights
          : rights // ignore: cast_nullable_to_non_nullable
              as Rights?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat?,
      argueInfo: freezed == argueInfo
          ? _value.argueInfo
          : argueInfo // ignore: cast_nullable_to_non_nullable
              as ArgueInfo?,
      dynamicProperty: freezed == dynamicProperty
          ? _value.dynamicProperty
          : dynamicProperty // ignore: cast_nullable_to_non_nullable
              as String?,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      teenageMode: freezed == teenageMode
          ? _value.teenageMode
          : teenageMode // ignore: cast_nullable_to_non_nullable
              as int?,
      isChargeableSeason: freezed == isChargeableSeason
          ? _value.isChargeableSeason
          : isChargeableSeason // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStory: freezed == isStory
          ? _value.isStory
          : isStory // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpowerExclusive: freezed == isUpowerExclusive
          ? _value.isUpowerExclusive
          : isUpowerExclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpowerPlay: freezed == isUpowerPlay
          ? _value.isUpowerPlay
          : isUpowerPlay // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableVt: freezed == enableVt
          ? _value.enableVt
          : enableVt // ignore: cast_nullable_to_non_nullable
              as int?,
      vtDisplay: freezed == vtDisplay
          ? _value.vtDisplay
          : vtDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      noCache: freezed == noCache
          ? _value.noCache
          : noCache // ignore: cast_nullable_to_non_nullable
              as bool?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Pages>?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Subtitle?,
      staff: freezed == staff
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>?,
      isSeasonDisplay: freezed == isSeasonDisplay
          ? _value.isSeasonDisplay
          : isSeasonDisplay // ignore: cast_nullable_to_non_nullable
              as bool?,
      userGarb: freezed == userGarb
          ? _value.userGarb
          : userGarb // ignore: cast_nullable_to_non_nullable
              as UserGarb?,
      honorReply: freezed == honorReply
          ? _value.honorReply
          : honorReply // ignore: cast_nullable_to_non_nullable
              as HonorReply?,
      likeIcon: freezed == likeIcon
          ? _value.likeIcon
          : likeIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      needJumpBv: freezed == needJumpBv
          ? _value.needJumpBv
          : needJumpBv // ignore: cast_nullable_to_non_nullable
              as bool?,
      disableShowUpInfo: freezed == disableShowUpInfo
          ? _value.disableShowUpInfo
          : disableShowUpInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RightsCopyWith<$Res>? get rights {
    if (_value.rights == null) {
      return null;
    }

    return $RightsCopyWith<$Res>(_value.rights!, (value) {
      return _then(_value.copyWith(rights: value) as $Val);
    });
  }

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatCopyWith<$Res>? get stat {
    if (_value.stat == null) {
      return null;
    }

    return $StatCopyWith<$Res>(_value.stat!, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArgueInfoCopyWith<$Res>? get argueInfo {
    if (_value.argueInfo == null) {
      return null;
    }

    return $ArgueInfoCopyWith<$Res>(_value.argueInfo!, (value) {
      return _then(_value.copyWith(argueInfo: value) as $Val);
    });
  }

  /// Create a copy of AudioInfoResponseData
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

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubtitleCopyWith<$Res>? get subtitle {
    if (_value.subtitle == null) {
      return null;
    }

    return $SubtitleCopyWith<$Res>(_value.subtitle!, (value) {
      return _then(_value.copyWith(subtitle: value) as $Val);
    });
  }

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserGarbCopyWith<$Res>? get userGarb {
    if (_value.userGarb == null) {
      return null;
    }

    return $UserGarbCopyWith<$Res>(_value.userGarb!, (value) {
      return _then(_value.copyWith(userGarb: value) as $Val);
    });
  }

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HonorReplyCopyWith<$Res>? get honorReply {
    if (_value.honorReply == null) {
      return null;
    }

    return $HonorReplyCopyWith<$Res>(_value.honorReply!, (value) {
      return _then(_value.copyWith(honorReply: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioInfoResponseDataImplCopyWith<$Res>
    implements $AudioInfoResponseDataCopyWith<$Res> {
  factory _$$AudioInfoResponseDataImplCopyWith(
          _$AudioInfoResponseDataImpl value,
          $Res Function(_$AudioInfoResponseDataImpl) then) =
      __$$AudioInfoResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bvid,
      int? aid,
      int? videos,
      int? tid,
      String? tname,
      int? copyright,
      String? pic,
      String? title,
      int? pubdate,
      int? ctime,
      String? desc,
      List<DescV2>? descV2,
      int? state,
      int? duration,
      int? missionId,
      Rights? rights,
      Owner? owner,
      Stat? stat,
      ArgueInfo? argueInfo,
      String? dynamicProperty,
      int? cid,
      Dimension? dimension,
      int? teenageMode,
      bool? isChargeableSeason,
      bool? isStory,
      bool? isUpowerExclusive,
      bool? isUpowerPlay,
      int? enableVt,
      String? vtDisplay,
      bool? noCache,
      List<Pages>? pages,
      Subtitle? subtitle,
      List<Staff>? staff,
      bool? isSeasonDisplay,
      UserGarb? userGarb,
      HonorReply? honorReply,
      String? likeIcon,
      bool? needJumpBv,
      bool? disableShowUpInfo});

  @override
  $RightsCopyWith<$Res>? get rights;
  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $StatCopyWith<$Res>? get stat;
  @override
  $ArgueInfoCopyWith<$Res>? get argueInfo;
  @override
  $DimensionCopyWith<$Res>? get dimension;
  @override
  $SubtitleCopyWith<$Res>? get subtitle;
  @override
  $UserGarbCopyWith<$Res>? get userGarb;
  @override
  $HonorReplyCopyWith<$Res>? get honorReply;
}

/// @nodoc
class __$$AudioInfoResponseDataImplCopyWithImpl<$Res>
    extends _$AudioInfoResponseDataCopyWithImpl<$Res,
        _$AudioInfoResponseDataImpl>
    implements _$$AudioInfoResponseDataImplCopyWith<$Res> {
  __$$AudioInfoResponseDataImplCopyWithImpl(_$AudioInfoResponseDataImpl _value,
      $Res Function(_$AudioInfoResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bvid = freezed,
    Object? aid = freezed,
    Object? videos = freezed,
    Object? tid = freezed,
    Object? tname = freezed,
    Object? copyright = freezed,
    Object? pic = freezed,
    Object? title = freezed,
    Object? pubdate = freezed,
    Object? ctime = freezed,
    Object? desc = freezed,
    Object? descV2 = freezed,
    Object? state = freezed,
    Object? duration = freezed,
    Object? missionId = freezed,
    Object? rights = freezed,
    Object? owner = freezed,
    Object? stat = freezed,
    Object? argueInfo = freezed,
    Object? dynamicProperty = freezed,
    Object? cid = freezed,
    Object? dimension = freezed,
    Object? teenageMode = freezed,
    Object? isChargeableSeason = freezed,
    Object? isStory = freezed,
    Object? isUpowerExclusive = freezed,
    Object? isUpowerPlay = freezed,
    Object? enableVt = freezed,
    Object? vtDisplay = freezed,
    Object? noCache = freezed,
    Object? pages = freezed,
    Object? subtitle = freezed,
    Object? staff = freezed,
    Object? isSeasonDisplay = freezed,
    Object? userGarb = freezed,
    Object? honorReply = freezed,
    Object? likeIcon = freezed,
    Object? needJumpBv = freezed,
    Object? disableShowUpInfo = freezed,
  }) {
    return _then(_$AudioInfoResponseDataImpl(
      bvid: freezed == bvid
          ? _value.bvid
          : bvid // ignore: cast_nullable_to_non_nullable
              as String?,
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as int?,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as int?,
      tname: freezed == tname
          ? _value.tname
          : tname // ignore: cast_nullable_to_non_nullable
              as String?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as int?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pubdate: freezed == pubdate
          ? _value.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as int?,
      ctime: freezed == ctime
          ? _value.ctime
          : ctime // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      descV2: freezed == descV2
          ? _value._descV2
          : descV2 // ignore: cast_nullable_to_non_nullable
              as List<DescV2>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      missionId: freezed == missionId
          ? _value.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as int?,
      rights: freezed == rights
          ? _value.rights
          : rights // ignore: cast_nullable_to_non_nullable
              as Rights?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      stat: freezed == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat?,
      argueInfo: freezed == argueInfo
          ? _value.argueInfo
          : argueInfo // ignore: cast_nullable_to_non_nullable
              as ArgueInfo?,
      dynamicProperty: freezed == dynamicProperty
          ? _value.dynamicProperty
          : dynamicProperty // ignore: cast_nullable_to_non_nullable
              as String?,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as Dimension?,
      teenageMode: freezed == teenageMode
          ? _value.teenageMode
          : teenageMode // ignore: cast_nullable_to_non_nullable
              as int?,
      isChargeableSeason: freezed == isChargeableSeason
          ? _value.isChargeableSeason
          : isChargeableSeason // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStory: freezed == isStory
          ? _value.isStory
          : isStory // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpowerExclusive: freezed == isUpowerExclusive
          ? _value.isUpowerExclusive
          : isUpowerExclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpowerPlay: freezed == isUpowerPlay
          ? _value.isUpowerPlay
          : isUpowerPlay // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableVt: freezed == enableVt
          ? _value.enableVt
          : enableVt // ignore: cast_nullable_to_non_nullable
              as int?,
      vtDisplay: freezed == vtDisplay
          ? _value.vtDisplay
          : vtDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      noCache: freezed == noCache
          ? _value.noCache
          : noCache // ignore: cast_nullable_to_non_nullable
              as bool?,
      pages: freezed == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<Pages>?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as Subtitle?,
      staff: freezed == staff
          ? _value._staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<Staff>?,
      isSeasonDisplay: freezed == isSeasonDisplay
          ? _value.isSeasonDisplay
          : isSeasonDisplay // ignore: cast_nullable_to_non_nullable
              as bool?,
      userGarb: freezed == userGarb
          ? _value.userGarb
          : userGarb // ignore: cast_nullable_to_non_nullable
              as UserGarb?,
      honorReply: freezed == honorReply
          ? _value.honorReply
          : honorReply // ignore: cast_nullable_to_non_nullable
              as HonorReply?,
      likeIcon: freezed == likeIcon
          ? _value.likeIcon
          : likeIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      needJumpBv: freezed == needJumpBv
          ? _value.needJumpBv
          : needJumpBv // ignore: cast_nullable_to_non_nullable
              as bool?,
      disableShowUpInfo: freezed == disableShowUpInfo
          ? _value.disableShowUpInfo
          : disableShowUpInfo // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioInfoResponseDataImpl
    with DiagnosticableTreeMixin
    implements _AudioInfoResponseData {
  const _$AudioInfoResponseDataImpl(
      {this.bvid,
      this.aid,
      this.videos,
      this.tid,
      this.tname,
      this.copyright,
      this.pic,
      this.title,
      this.pubdate,
      this.ctime,
      this.desc,
      final List<DescV2>? descV2,
      this.state,
      this.duration,
      this.missionId,
      this.rights,
      this.owner,
      this.stat,
      this.argueInfo,
      this.dynamicProperty,
      this.cid,
      this.dimension,
      this.teenageMode,
      this.isChargeableSeason,
      this.isStory,
      this.isUpowerExclusive,
      this.isUpowerPlay,
      this.enableVt,
      this.vtDisplay,
      this.noCache,
      final List<Pages>? pages,
      this.subtitle,
      final List<Staff>? staff,
      this.isSeasonDisplay,
      this.userGarb,
      this.honorReply,
      this.likeIcon,
      this.needJumpBv,
      this.disableShowUpInfo})
      : _descV2 = descV2,
        _pages = pages,
        _staff = staff;

  factory _$AudioInfoResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioInfoResponseDataImplFromJson(json);

  @override
  final String? bvid;
  @override
  final int? aid;
  @override
  final int? videos;
  @override
  final int? tid;
  @override
  final String? tname;
  @override
  final int? copyright;
  @override
  final String? pic;
  @override
  final String? title;
  @override
  final int? pubdate;
  @override
  final int? ctime;
  @override
  final String? desc;
  final List<DescV2>? _descV2;
  @override
  List<DescV2>? get descV2 {
    final value = _descV2;
    if (value == null) return null;
    if (_descV2 is EqualUnmodifiableListView) return _descV2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? state;
  @override
  final int? duration;
  @override
  final int? missionId;
  @override
  final Rights? rights;
  @override
  final Owner? owner;
  @override
  final Stat? stat;
  @override
  final ArgueInfo? argueInfo;
  @override
  final String? dynamicProperty;
  @override
  final int? cid;
  @override
  final Dimension? dimension;
  @override
  final int? teenageMode;
  @override
  final bool? isChargeableSeason;
  @override
  final bool? isStory;
  @override
  final bool? isUpowerExclusive;
  @override
  final bool? isUpowerPlay;
  @override
  final int? enableVt;
  @override
  final String? vtDisplay;
  @override
  final bool? noCache;
  final List<Pages>? _pages;
  @override
  List<Pages>? get pages {
    final value = _pages;
    if (value == null) return null;
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Subtitle? subtitle;
  final List<Staff>? _staff;
  @override
  List<Staff>? get staff {
    final value = _staff;
    if (value == null) return null;
    if (_staff is EqualUnmodifiableListView) return _staff;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isSeasonDisplay;
  @override
  final UserGarb? userGarb;
  @override
  final HonorReply? honorReply;
  @override
  final String? likeIcon;
  @override
  final bool? needJumpBv;
  @override
  final bool? disableShowUpInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioInfoResponseData(bvid: $bvid, aid: $aid, videos: $videos, tid: $tid, tname: $tname, copyright: $copyright, pic: $pic, title: $title, pubdate: $pubdate, ctime: $ctime, desc: $desc, descV2: $descV2, state: $state, duration: $duration, missionId: $missionId, rights: $rights, owner: $owner, stat: $stat, argueInfo: $argueInfo, dynamicProperty: $dynamicProperty, cid: $cid, dimension: $dimension, teenageMode: $teenageMode, isChargeableSeason: $isChargeableSeason, isStory: $isStory, isUpowerExclusive: $isUpowerExclusive, isUpowerPlay: $isUpowerPlay, enableVt: $enableVt, vtDisplay: $vtDisplay, noCache: $noCache, pages: $pages, subtitle: $subtitle, staff: $staff, isSeasonDisplay: $isSeasonDisplay, userGarb: $userGarb, honorReply: $honorReply, likeIcon: $likeIcon, needJumpBv: $needJumpBv, disableShowUpInfo: $disableShowUpInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioInfoResponseData'))
      ..add(DiagnosticsProperty('bvid', bvid))
      ..add(DiagnosticsProperty('aid', aid))
      ..add(DiagnosticsProperty('videos', videos))
      ..add(DiagnosticsProperty('tid', tid))
      ..add(DiagnosticsProperty('tname', tname))
      ..add(DiagnosticsProperty('copyright', copyright))
      ..add(DiagnosticsProperty('pic', pic))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('pubdate', pubdate))
      ..add(DiagnosticsProperty('ctime', ctime))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('descV2', descV2))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('missionId', missionId))
      ..add(DiagnosticsProperty('rights', rights))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('stat', stat))
      ..add(DiagnosticsProperty('argueInfo', argueInfo))
      ..add(DiagnosticsProperty('dynamicProperty', dynamicProperty))
      ..add(DiagnosticsProperty('cid', cid))
      ..add(DiagnosticsProperty('dimension', dimension))
      ..add(DiagnosticsProperty('teenageMode', teenageMode))
      ..add(DiagnosticsProperty('isChargeableSeason', isChargeableSeason))
      ..add(DiagnosticsProperty('isStory', isStory))
      ..add(DiagnosticsProperty('isUpowerExclusive', isUpowerExclusive))
      ..add(DiagnosticsProperty('isUpowerPlay', isUpowerPlay))
      ..add(DiagnosticsProperty('enableVt', enableVt))
      ..add(DiagnosticsProperty('vtDisplay', vtDisplay))
      ..add(DiagnosticsProperty('noCache', noCache))
      ..add(DiagnosticsProperty('pages', pages))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('staff', staff))
      ..add(DiagnosticsProperty('isSeasonDisplay', isSeasonDisplay))
      ..add(DiagnosticsProperty('userGarb', userGarb))
      ..add(DiagnosticsProperty('honorReply', honorReply))
      ..add(DiagnosticsProperty('likeIcon', likeIcon))
      ..add(DiagnosticsProperty('needJumpBv', needJumpBv))
      ..add(DiagnosticsProperty('disableShowUpInfo', disableShowUpInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioInfoResponseDataImpl &&
            (identical(other.bvid, bvid) || other.bvid == bvid) &&
            (identical(other.aid, aid) || other.aid == aid) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.tid, tid) || other.tid == tid) &&
            (identical(other.tname, tname) || other.tname == tname) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pubdate, pubdate) || other.pubdate == pubdate) &&
            (identical(other.ctime, ctime) || other.ctime == ctime) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality().equals(other._descV2, _descV2) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.missionId, missionId) ||
                other.missionId == missionId) &&
            (identical(other.rights, rights) || other.rights == rights) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.stat, stat) || other.stat == stat) &&
            (identical(other.argueInfo, argueInfo) ||
                other.argueInfo == argueInfo) &&
            (identical(other.dynamicProperty, dynamicProperty) ||
                other.dynamicProperty == dynamicProperty) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.teenageMode, teenageMode) ||
                other.teenageMode == teenageMode) &&
            (identical(other.isChargeableSeason, isChargeableSeason) ||
                other.isChargeableSeason == isChargeableSeason) &&
            (identical(other.isStory, isStory) || other.isStory == isStory) &&
            (identical(other.isUpowerExclusive, isUpowerExclusive) ||
                other.isUpowerExclusive == isUpowerExclusive) &&
            (identical(other.isUpowerPlay, isUpowerPlay) ||
                other.isUpowerPlay == isUpowerPlay) &&
            (identical(other.enableVt, enableVt) ||
                other.enableVt == enableVt) &&
            (identical(other.vtDisplay, vtDisplay) ||
                other.vtDisplay == vtDisplay) &&
            (identical(other.noCache, noCache) || other.noCache == noCache) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._staff, _staff) &&
            (identical(other.isSeasonDisplay, isSeasonDisplay) ||
                other.isSeasonDisplay == isSeasonDisplay) &&
            (identical(other.userGarb, userGarb) ||
                other.userGarb == userGarb) &&
            (identical(other.honorReply, honorReply) ||
                other.honorReply == honorReply) &&
            (identical(other.likeIcon, likeIcon) ||
                other.likeIcon == likeIcon) &&
            (identical(other.needJumpBv, needJumpBv) ||
                other.needJumpBv == needJumpBv) &&
            (identical(other.disableShowUpInfo, disableShowUpInfo) ||
                other.disableShowUpInfo == disableShowUpInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bvid,
        aid,
        videos,
        tid,
        tname,
        copyright,
        pic,
        title,
        pubdate,
        ctime,
        desc,
        const DeepCollectionEquality().hash(_descV2),
        state,
        duration,
        missionId,
        rights,
        owner,
        stat,
        argueInfo,
        dynamicProperty,
        cid,
        dimension,
        teenageMode,
        isChargeableSeason,
        isStory,
        isUpowerExclusive,
        isUpowerPlay,
        enableVt,
        vtDisplay,
        noCache,
        const DeepCollectionEquality().hash(_pages),
        subtitle,
        const DeepCollectionEquality().hash(_staff),
        isSeasonDisplay,
        userGarb,
        honorReply,
        likeIcon,
        needJumpBv,
        disableShowUpInfo
      ]);

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioInfoResponseDataImplCopyWith<_$AudioInfoResponseDataImpl>
      get copyWith => __$$AudioInfoResponseDataImplCopyWithImpl<
          _$AudioInfoResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioInfoResponseDataImplToJson(
      this,
    );
  }
}

abstract class _AudioInfoResponseData implements AudioInfoResponseData {
  const factory _AudioInfoResponseData(
      {final String? bvid,
      final int? aid,
      final int? videos,
      final int? tid,
      final String? tname,
      final int? copyright,
      final String? pic,
      final String? title,
      final int? pubdate,
      final int? ctime,
      final String? desc,
      final List<DescV2>? descV2,
      final int? state,
      final int? duration,
      final int? missionId,
      final Rights? rights,
      final Owner? owner,
      final Stat? stat,
      final ArgueInfo? argueInfo,
      final String? dynamicProperty,
      final int? cid,
      final Dimension? dimension,
      final int? teenageMode,
      final bool? isChargeableSeason,
      final bool? isStory,
      final bool? isUpowerExclusive,
      final bool? isUpowerPlay,
      final int? enableVt,
      final String? vtDisplay,
      final bool? noCache,
      final List<Pages>? pages,
      final Subtitle? subtitle,
      final List<Staff>? staff,
      final bool? isSeasonDisplay,
      final UserGarb? userGarb,
      final HonorReply? honorReply,
      final String? likeIcon,
      final bool? needJumpBv,
      final bool? disableShowUpInfo}) = _$AudioInfoResponseDataImpl;

  factory _AudioInfoResponseData.fromJson(Map<String, dynamic> json) =
      _$AudioInfoResponseDataImpl.fromJson;

  @override
  String? get bvid;
  @override
  int? get aid;
  @override
  int? get videos;
  @override
  int? get tid;
  @override
  String? get tname;
  @override
  int? get copyright;
  @override
  String? get pic;
  @override
  String? get title;
  @override
  int? get pubdate;
  @override
  int? get ctime;
  @override
  String? get desc;
  @override
  List<DescV2>? get descV2;
  @override
  int? get state;
  @override
  int? get duration;
  @override
  int? get missionId;
  @override
  Rights? get rights;
  @override
  Owner? get owner;
  @override
  Stat? get stat;
  @override
  ArgueInfo? get argueInfo;
  @override
  String? get dynamicProperty;
  @override
  int? get cid;
  @override
  Dimension? get dimension;
  @override
  int? get teenageMode;
  @override
  bool? get isChargeableSeason;
  @override
  bool? get isStory;
  @override
  bool? get isUpowerExclusive;
  @override
  bool? get isUpowerPlay;
  @override
  int? get enableVt;
  @override
  String? get vtDisplay;
  @override
  bool? get noCache;
  @override
  List<Pages>? get pages;
  @override
  Subtitle? get subtitle;
  @override
  List<Staff>? get staff;
  @override
  bool? get isSeasonDisplay;
  @override
  UserGarb? get userGarb;
  @override
  HonorReply? get honorReply;
  @override
  String? get likeIcon;
  @override
  bool? get needJumpBv;
  @override
  bool? get disableShowUpInfo;

  /// Create a copy of AudioInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioInfoResponseDataImplCopyWith<_$AudioInfoResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DescV2 _$DescV2FromJson(Map<String, dynamic> json) {
  return _DescV2.fromJson(json);
}

/// @nodoc
mixin _$DescV2 {
  String? get rawText => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get bizId => throw _privateConstructorUsedError;

  /// Serializes this DescV2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DescV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DescV2CopyWith<DescV2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescV2CopyWith<$Res> {
  factory $DescV2CopyWith(DescV2 value, $Res Function(DescV2) then) =
      _$DescV2CopyWithImpl<$Res, DescV2>;
  @useResult
  $Res call({String? rawText, int? type, int? bizId});
}

/// @nodoc
class _$DescV2CopyWithImpl<$Res, $Val extends DescV2>
    implements $DescV2CopyWith<$Res> {
  _$DescV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DescV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawText = freezed,
    Object? type = freezed,
    Object? bizId = freezed,
  }) {
    return _then(_value.copyWith(
      rawText: freezed == rawText
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      bizId: freezed == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DescV2ImplCopyWith<$Res> implements $DescV2CopyWith<$Res> {
  factory _$$DescV2ImplCopyWith(
          _$DescV2Impl value, $Res Function(_$DescV2Impl) then) =
      __$$DescV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rawText, int? type, int? bizId});
}

/// @nodoc
class __$$DescV2ImplCopyWithImpl<$Res>
    extends _$DescV2CopyWithImpl<$Res, _$DescV2Impl>
    implements _$$DescV2ImplCopyWith<$Res> {
  __$$DescV2ImplCopyWithImpl(
      _$DescV2Impl _value, $Res Function(_$DescV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of DescV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawText = freezed,
    Object? type = freezed,
    Object? bizId = freezed,
  }) {
    return _then(_$DescV2Impl(
      rawText: freezed == rawText
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      bizId: freezed == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DescV2Impl with DiagnosticableTreeMixin implements _DescV2 {
  const _$DescV2Impl({this.rawText, this.type, this.bizId});

  factory _$DescV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$DescV2ImplFromJson(json);

  @override
  final String? rawText;
  @override
  final int? type;
  @override
  final int? bizId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DescV2(rawText: $rawText, type: $type, bizId: $bizId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DescV2'))
      ..add(DiagnosticsProperty('rawText', rawText))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('bizId', bizId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescV2Impl &&
            (identical(other.rawText, rawText) || other.rawText == rawText) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bizId, bizId) || other.bizId == bizId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rawText, type, bizId);

  /// Create a copy of DescV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescV2ImplCopyWith<_$DescV2Impl> get copyWith =>
      __$$DescV2ImplCopyWithImpl<_$DescV2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DescV2ImplToJson(
      this,
    );
  }
}

abstract class _DescV2 implements DescV2 {
  const factory _DescV2(
      {final String? rawText,
      final int? type,
      final int? bizId}) = _$DescV2Impl;

  factory _DescV2.fromJson(Map<String, dynamic> json) = _$DescV2Impl.fromJson;

  @override
  String? get rawText;
  @override
  int? get type;
  @override
  int? get bizId;

  /// Create a copy of DescV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescV2ImplCopyWith<_$DescV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rights _$RightsFromJson(Map<String, dynamic> json) {
  return _Rights.fromJson(json);
}

/// @nodoc
mixin _$Rights {
  int? get bp => throw _privateConstructorUsedError;
  int? get elec => throw _privateConstructorUsedError;
  int? get download => throw _privateConstructorUsedError;
  int? get movie => throw _privateConstructorUsedError;
  int? get pay => throw _privateConstructorUsedError;
  int? get hd5 => throw _privateConstructorUsedError;
  int? get noReprint => throw _privateConstructorUsedError;
  int? get autoplay => throw _privateConstructorUsedError;
  int? get ugcPay => throw _privateConstructorUsedError;
  int? get isCooperation => throw _privateConstructorUsedError;
  int? get ugcPayPreview => throw _privateConstructorUsedError;
  int? get noBackground => throw _privateConstructorUsedError;
  int? get cleanMode => throw _privateConstructorUsedError;
  int? get isSteinGate => throw _privateConstructorUsedError;
  int? get is360 => throw _privateConstructorUsedError;
  int? get noShare => throw _privateConstructorUsedError;
  int? get arcPay => throw _privateConstructorUsedError;
  int? get freeWatch => throw _privateConstructorUsedError;

  /// Serializes this Rights to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RightsCopyWith<Rights> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RightsCopyWith<$Res> {
  factory $RightsCopyWith(Rights value, $Res Function(Rights) then) =
      _$RightsCopyWithImpl<$Res, Rights>;
  @useResult
  $Res call(
      {int? bp,
      int? elec,
      int? download,
      int? movie,
      int? pay,
      int? hd5,
      int? noReprint,
      int? autoplay,
      int? ugcPay,
      int? isCooperation,
      int? ugcPayPreview,
      int? noBackground,
      int? cleanMode,
      int? isSteinGate,
      int? is360,
      int? noShare,
      int? arcPay,
      int? freeWatch});
}

/// @nodoc
class _$RightsCopyWithImpl<$Res, $Val extends Rights>
    implements $RightsCopyWith<$Res> {
  _$RightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bp = freezed,
    Object? elec = freezed,
    Object? download = freezed,
    Object? movie = freezed,
    Object? pay = freezed,
    Object? hd5 = freezed,
    Object? noReprint = freezed,
    Object? autoplay = freezed,
    Object? ugcPay = freezed,
    Object? isCooperation = freezed,
    Object? ugcPayPreview = freezed,
    Object? noBackground = freezed,
    Object? cleanMode = freezed,
    Object? isSteinGate = freezed,
    Object? is360 = freezed,
    Object? noShare = freezed,
    Object? arcPay = freezed,
    Object? freeWatch = freezed,
  }) {
    return _then(_value.copyWith(
      bp: freezed == bp
          ? _value.bp
          : bp // ignore: cast_nullable_to_non_nullable
              as int?,
      elec: freezed == elec
          ? _value.elec
          : elec // ignore: cast_nullable_to_non_nullable
              as int?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as int?,
      pay: freezed == pay
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as int?,
      hd5: freezed == hd5
          ? _value.hd5
          : hd5 // ignore: cast_nullable_to_non_nullable
              as int?,
      noReprint: freezed == noReprint
          ? _value.noReprint
          : noReprint // ignore: cast_nullable_to_non_nullable
              as int?,
      autoplay: freezed == autoplay
          ? _value.autoplay
          : autoplay // ignore: cast_nullable_to_non_nullable
              as int?,
      ugcPay: freezed == ugcPay
          ? _value.ugcPay
          : ugcPay // ignore: cast_nullable_to_non_nullable
              as int?,
      isCooperation: freezed == isCooperation
          ? _value.isCooperation
          : isCooperation // ignore: cast_nullable_to_non_nullable
              as int?,
      ugcPayPreview: freezed == ugcPayPreview
          ? _value.ugcPayPreview
          : ugcPayPreview // ignore: cast_nullable_to_non_nullable
              as int?,
      noBackground: freezed == noBackground
          ? _value.noBackground
          : noBackground // ignore: cast_nullable_to_non_nullable
              as int?,
      cleanMode: freezed == cleanMode
          ? _value.cleanMode
          : cleanMode // ignore: cast_nullable_to_non_nullable
              as int?,
      isSteinGate: freezed == isSteinGate
          ? _value.isSteinGate
          : isSteinGate // ignore: cast_nullable_to_non_nullable
              as int?,
      is360: freezed == is360
          ? _value.is360
          : is360 // ignore: cast_nullable_to_non_nullable
              as int?,
      noShare: freezed == noShare
          ? _value.noShare
          : noShare // ignore: cast_nullable_to_non_nullable
              as int?,
      arcPay: freezed == arcPay
          ? _value.arcPay
          : arcPay // ignore: cast_nullable_to_non_nullable
              as int?,
      freeWatch: freezed == freeWatch
          ? _value.freeWatch
          : freeWatch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RightsImplCopyWith<$Res> implements $RightsCopyWith<$Res> {
  factory _$$RightsImplCopyWith(
          _$RightsImpl value, $Res Function(_$RightsImpl) then) =
      __$$RightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? bp,
      int? elec,
      int? download,
      int? movie,
      int? pay,
      int? hd5,
      int? noReprint,
      int? autoplay,
      int? ugcPay,
      int? isCooperation,
      int? ugcPayPreview,
      int? noBackground,
      int? cleanMode,
      int? isSteinGate,
      int? is360,
      int? noShare,
      int? arcPay,
      int? freeWatch});
}

/// @nodoc
class __$$RightsImplCopyWithImpl<$Res>
    extends _$RightsCopyWithImpl<$Res, _$RightsImpl>
    implements _$$RightsImplCopyWith<$Res> {
  __$$RightsImplCopyWithImpl(
      _$RightsImpl _value, $Res Function(_$RightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bp = freezed,
    Object? elec = freezed,
    Object? download = freezed,
    Object? movie = freezed,
    Object? pay = freezed,
    Object? hd5 = freezed,
    Object? noReprint = freezed,
    Object? autoplay = freezed,
    Object? ugcPay = freezed,
    Object? isCooperation = freezed,
    Object? ugcPayPreview = freezed,
    Object? noBackground = freezed,
    Object? cleanMode = freezed,
    Object? isSteinGate = freezed,
    Object? is360 = freezed,
    Object? noShare = freezed,
    Object? arcPay = freezed,
    Object? freeWatch = freezed,
  }) {
    return _then(_$RightsImpl(
      bp: freezed == bp
          ? _value.bp
          : bp // ignore: cast_nullable_to_non_nullable
              as int?,
      elec: freezed == elec
          ? _value.elec
          : elec // ignore: cast_nullable_to_non_nullable
              as int?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as int?,
      pay: freezed == pay
          ? _value.pay
          : pay // ignore: cast_nullable_to_non_nullable
              as int?,
      hd5: freezed == hd5
          ? _value.hd5
          : hd5 // ignore: cast_nullable_to_non_nullable
              as int?,
      noReprint: freezed == noReprint
          ? _value.noReprint
          : noReprint // ignore: cast_nullable_to_non_nullable
              as int?,
      autoplay: freezed == autoplay
          ? _value.autoplay
          : autoplay // ignore: cast_nullable_to_non_nullable
              as int?,
      ugcPay: freezed == ugcPay
          ? _value.ugcPay
          : ugcPay // ignore: cast_nullable_to_non_nullable
              as int?,
      isCooperation: freezed == isCooperation
          ? _value.isCooperation
          : isCooperation // ignore: cast_nullable_to_non_nullable
              as int?,
      ugcPayPreview: freezed == ugcPayPreview
          ? _value.ugcPayPreview
          : ugcPayPreview // ignore: cast_nullable_to_non_nullable
              as int?,
      noBackground: freezed == noBackground
          ? _value.noBackground
          : noBackground // ignore: cast_nullable_to_non_nullable
              as int?,
      cleanMode: freezed == cleanMode
          ? _value.cleanMode
          : cleanMode // ignore: cast_nullable_to_non_nullable
              as int?,
      isSteinGate: freezed == isSteinGate
          ? _value.isSteinGate
          : isSteinGate // ignore: cast_nullable_to_non_nullable
              as int?,
      is360: freezed == is360
          ? _value.is360
          : is360 // ignore: cast_nullable_to_non_nullable
              as int?,
      noShare: freezed == noShare
          ? _value.noShare
          : noShare // ignore: cast_nullable_to_non_nullable
              as int?,
      arcPay: freezed == arcPay
          ? _value.arcPay
          : arcPay // ignore: cast_nullable_to_non_nullable
              as int?,
      freeWatch: freezed == freeWatch
          ? _value.freeWatch
          : freeWatch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RightsImpl with DiagnosticableTreeMixin implements _Rights {
  const _$RightsImpl(
      {this.bp,
      this.elec,
      this.download,
      this.movie,
      this.pay,
      this.hd5,
      this.noReprint,
      this.autoplay,
      this.ugcPay,
      this.isCooperation,
      this.ugcPayPreview,
      this.noBackground,
      this.cleanMode,
      this.isSteinGate,
      this.is360,
      this.noShare,
      this.arcPay,
      this.freeWatch});

  factory _$RightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RightsImplFromJson(json);

  @override
  final int? bp;
  @override
  final int? elec;
  @override
  final int? download;
  @override
  final int? movie;
  @override
  final int? pay;
  @override
  final int? hd5;
  @override
  final int? noReprint;
  @override
  final int? autoplay;
  @override
  final int? ugcPay;
  @override
  final int? isCooperation;
  @override
  final int? ugcPayPreview;
  @override
  final int? noBackground;
  @override
  final int? cleanMode;
  @override
  final int? isSteinGate;
  @override
  final int? is360;
  @override
  final int? noShare;
  @override
  final int? arcPay;
  @override
  final int? freeWatch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rights(bp: $bp, elec: $elec, download: $download, movie: $movie, pay: $pay, hd5: $hd5, noReprint: $noReprint, autoplay: $autoplay, ugcPay: $ugcPay, isCooperation: $isCooperation, ugcPayPreview: $ugcPayPreview, noBackground: $noBackground, cleanMode: $cleanMode, isSteinGate: $isSteinGate, is360: $is360, noShare: $noShare, arcPay: $arcPay, freeWatch: $freeWatch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rights'))
      ..add(DiagnosticsProperty('bp', bp))
      ..add(DiagnosticsProperty('elec', elec))
      ..add(DiagnosticsProperty('download', download))
      ..add(DiagnosticsProperty('movie', movie))
      ..add(DiagnosticsProperty('pay', pay))
      ..add(DiagnosticsProperty('hd5', hd5))
      ..add(DiagnosticsProperty('noReprint', noReprint))
      ..add(DiagnosticsProperty('autoplay', autoplay))
      ..add(DiagnosticsProperty('ugcPay', ugcPay))
      ..add(DiagnosticsProperty('isCooperation', isCooperation))
      ..add(DiagnosticsProperty('ugcPayPreview', ugcPayPreview))
      ..add(DiagnosticsProperty('noBackground', noBackground))
      ..add(DiagnosticsProperty('cleanMode', cleanMode))
      ..add(DiagnosticsProperty('isSteinGate', isSteinGate))
      ..add(DiagnosticsProperty('is360', is360))
      ..add(DiagnosticsProperty('noShare', noShare))
      ..add(DiagnosticsProperty('arcPay', arcPay))
      ..add(DiagnosticsProperty('freeWatch', freeWatch));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RightsImpl &&
            (identical(other.bp, bp) || other.bp == bp) &&
            (identical(other.elec, elec) || other.elec == elec) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.pay, pay) || other.pay == pay) &&
            (identical(other.hd5, hd5) || other.hd5 == hd5) &&
            (identical(other.noReprint, noReprint) ||
                other.noReprint == noReprint) &&
            (identical(other.autoplay, autoplay) ||
                other.autoplay == autoplay) &&
            (identical(other.ugcPay, ugcPay) || other.ugcPay == ugcPay) &&
            (identical(other.isCooperation, isCooperation) ||
                other.isCooperation == isCooperation) &&
            (identical(other.ugcPayPreview, ugcPayPreview) ||
                other.ugcPayPreview == ugcPayPreview) &&
            (identical(other.noBackground, noBackground) ||
                other.noBackground == noBackground) &&
            (identical(other.cleanMode, cleanMode) ||
                other.cleanMode == cleanMode) &&
            (identical(other.isSteinGate, isSteinGate) ||
                other.isSteinGate == isSteinGate) &&
            (identical(other.is360, is360) || other.is360 == is360) &&
            (identical(other.noShare, noShare) || other.noShare == noShare) &&
            (identical(other.arcPay, arcPay) || other.arcPay == arcPay) &&
            (identical(other.freeWatch, freeWatch) ||
                other.freeWatch == freeWatch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bp,
      elec,
      download,
      movie,
      pay,
      hd5,
      noReprint,
      autoplay,
      ugcPay,
      isCooperation,
      ugcPayPreview,
      noBackground,
      cleanMode,
      isSteinGate,
      is360,
      noShare,
      arcPay,
      freeWatch);

  /// Create a copy of Rights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RightsImplCopyWith<_$RightsImpl> get copyWith =>
      __$$RightsImplCopyWithImpl<_$RightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RightsImplToJson(
      this,
    );
  }
}

abstract class _Rights implements Rights {
  const factory _Rights(
      {final int? bp,
      final int? elec,
      final int? download,
      final int? movie,
      final int? pay,
      final int? hd5,
      final int? noReprint,
      final int? autoplay,
      final int? ugcPay,
      final int? isCooperation,
      final int? ugcPayPreview,
      final int? noBackground,
      final int? cleanMode,
      final int? isSteinGate,
      final int? is360,
      final int? noShare,
      final int? arcPay,
      final int? freeWatch}) = _$RightsImpl;

  factory _Rights.fromJson(Map<String, dynamic> json) = _$RightsImpl.fromJson;

  @override
  int? get bp;
  @override
  int? get elec;
  @override
  int? get download;
  @override
  int? get movie;
  @override
  int? get pay;
  @override
  int? get hd5;
  @override
  int? get noReprint;
  @override
  int? get autoplay;
  @override
  int? get ugcPay;
  @override
  int? get isCooperation;
  @override
  int? get ugcPayPreview;
  @override
  int? get noBackground;
  @override
  int? get cleanMode;
  @override
  int? get isSteinGate;
  @override
  int? get is360;
  @override
  int? get noShare;
  @override
  int? get arcPay;
  @override
  int? get freeWatch;

  /// Create a copy of Rights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RightsImplCopyWith<_$RightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  int? get mid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get face => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({int? mid, String? name, String? face});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? face = freezed,
  }) {
    return _then(_value.copyWith(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? mid, String? name, String? face});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? face = freezed,
  }) {
    return _then(_$OwnerImpl(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl with DiagnosticableTreeMixin implements _Owner {
  const _$OwnerImpl({this.mid, this.name, this.face});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  final int? mid;
  @override
  final String? name;
  @override
  final String? face;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Owner(mid: $mid, name: $name, face: $face)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Owner'))
      ..add(DiagnosticsProperty('mid', mid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('face', face));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.face, face) || other.face == face));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mid, name, face);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
      {final int? mid, final String? name, final String? face}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  int? get mid;
  @override
  String? get name;
  @override
  String? get face;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
mixin _$Stat {
  int? get aid => throw _privateConstructorUsedError;
  int? get view => throw _privateConstructorUsedError;
  int? get danmaku => throw _privateConstructorUsedError;
  int? get reply => throw _privateConstructorUsedError;
  int? get favorite => throw _privateConstructorUsedError;
  int? get coin => throw _privateConstructorUsedError;
  int? get share => throw _privateConstructorUsedError;
  int? get nowRank => throw _privateConstructorUsedError;
  int? get hisRank => throw _privateConstructorUsedError;
  int? get like => throw _privateConstructorUsedError;
  int? get dislike => throw _privateConstructorUsedError;
  String? get evaluation => throw _privateConstructorUsedError;
  int? get vt => throw _privateConstructorUsedError;

  /// Serializes this Stat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res, Stat>;
  @useResult
  $Res call(
      {int? aid,
      int? view,
      int? danmaku,
      int? reply,
      int? favorite,
      int? coin,
      int? share,
      int? nowRank,
      int? hisRank,
      int? like,
      int? dislike,
      String? evaluation,
      int? vt});
}

/// @nodoc
class _$StatCopyWithImpl<$Res, $Val extends Stat>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aid = freezed,
    Object? view = freezed,
    Object? danmaku = freezed,
    Object? reply = freezed,
    Object? favorite = freezed,
    Object? coin = freezed,
    Object? share = freezed,
    Object? nowRank = freezed,
    Object? hisRank = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
    Object? evaluation = freezed,
    Object? vt = freezed,
  }) {
    return _then(_value.copyWith(
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int?,
      danmaku: freezed == danmaku
          ? _value.danmaku
          : danmaku // ignore: cast_nullable_to_non_nullable
              as int?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as int?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as int?,
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as int?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int?,
      nowRank: freezed == nowRank
          ? _value.nowRank
          : nowRank // ignore: cast_nullable_to_non_nullable
              as int?,
      hisRank: freezed == hisRank
          ? _value.hisRank
          : hisRank // ignore: cast_nullable_to_non_nullable
              as int?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      dislike: freezed == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
      evaluation: freezed == evaluation
          ? _value.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as String?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatImplCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$StatImplCopyWith(
          _$StatImpl value, $Res Function(_$StatImpl) then) =
      __$$StatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? aid,
      int? view,
      int? danmaku,
      int? reply,
      int? favorite,
      int? coin,
      int? share,
      int? nowRank,
      int? hisRank,
      int? like,
      int? dislike,
      String? evaluation,
      int? vt});
}

/// @nodoc
class __$$StatImplCopyWithImpl<$Res>
    extends _$StatCopyWithImpl<$Res, _$StatImpl>
    implements _$$StatImplCopyWith<$Res> {
  __$$StatImplCopyWithImpl(_$StatImpl _value, $Res Function(_$StatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aid = freezed,
    Object? view = freezed,
    Object? danmaku = freezed,
    Object? reply = freezed,
    Object? favorite = freezed,
    Object? coin = freezed,
    Object? share = freezed,
    Object? nowRank = freezed,
    Object? hisRank = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
    Object? evaluation = freezed,
    Object? vt = freezed,
  }) {
    return _then(_$StatImpl(
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int?,
      danmaku: freezed == danmaku
          ? _value.danmaku
          : danmaku // ignore: cast_nullable_to_non_nullable
              as int?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as int?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as int?,
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as int?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int?,
      nowRank: freezed == nowRank
          ? _value.nowRank
          : nowRank // ignore: cast_nullable_to_non_nullable
              as int?,
      hisRank: freezed == hisRank
          ? _value.hisRank
          : hisRank // ignore: cast_nullable_to_non_nullable
              as int?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      dislike: freezed == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
      evaluation: freezed == evaluation
          ? _value.evaluation
          : evaluation // ignore: cast_nullable_to_non_nullable
              as String?,
      vt: freezed == vt
          ? _value.vt
          : vt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatImpl with DiagnosticableTreeMixin implements _Stat {
  const _$StatImpl(
      {this.aid,
      this.view,
      this.danmaku,
      this.reply,
      this.favorite,
      this.coin,
      this.share,
      this.nowRank,
      this.hisRank,
      this.like,
      this.dislike,
      this.evaluation,
      this.vt});

  factory _$StatImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatImplFromJson(json);

  @override
  final int? aid;
  @override
  final int? view;
  @override
  final int? danmaku;
  @override
  final int? reply;
  @override
  final int? favorite;
  @override
  final int? coin;
  @override
  final int? share;
  @override
  final int? nowRank;
  @override
  final int? hisRank;
  @override
  final int? like;
  @override
  final int? dislike;
  @override
  final String? evaluation;
  @override
  final int? vt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stat(aid: $aid, view: $view, danmaku: $danmaku, reply: $reply, favorite: $favorite, coin: $coin, share: $share, nowRank: $nowRank, hisRank: $hisRank, like: $like, dislike: $dislike, evaluation: $evaluation, vt: $vt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stat'))
      ..add(DiagnosticsProperty('aid', aid))
      ..add(DiagnosticsProperty('view', view))
      ..add(DiagnosticsProperty('danmaku', danmaku))
      ..add(DiagnosticsProperty('reply', reply))
      ..add(DiagnosticsProperty('favorite', favorite))
      ..add(DiagnosticsProperty('coin', coin))
      ..add(DiagnosticsProperty('share', share))
      ..add(DiagnosticsProperty('nowRank', nowRank))
      ..add(DiagnosticsProperty('hisRank', hisRank))
      ..add(DiagnosticsProperty('like', like))
      ..add(DiagnosticsProperty('dislike', dislike))
      ..add(DiagnosticsProperty('evaluation', evaluation))
      ..add(DiagnosticsProperty('vt', vt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatImpl &&
            (identical(other.aid, aid) || other.aid == aid) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.danmaku, danmaku) || other.danmaku == danmaku) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.nowRank, nowRank) || other.nowRank == nowRank) &&
            (identical(other.hisRank, hisRank) || other.hisRank == hisRank) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.dislike, dislike) || other.dislike == dislike) &&
            (identical(other.evaluation, evaluation) ||
                other.evaluation == evaluation) &&
            (identical(other.vt, vt) || other.vt == vt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, aid, view, danmaku, reply,
      favorite, coin, share, nowRank, hisRank, like, dislike, evaluation, vt);

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      __$$StatImplCopyWithImpl<_$StatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatImplToJson(
      this,
    );
  }
}

abstract class _Stat implements Stat {
  const factory _Stat(
      {final int? aid,
      final int? view,
      final int? danmaku,
      final int? reply,
      final int? favorite,
      final int? coin,
      final int? share,
      final int? nowRank,
      final int? hisRank,
      final int? like,
      final int? dislike,
      final String? evaluation,
      final int? vt}) = _$StatImpl;

  factory _Stat.fromJson(Map<String, dynamic> json) = _$StatImpl.fromJson;

  @override
  int? get aid;
  @override
  int? get view;
  @override
  int? get danmaku;
  @override
  int? get reply;
  @override
  int? get favorite;
  @override
  int? get coin;
  @override
  int? get share;
  @override
  int? get nowRank;
  @override
  int? get hisRank;
  @override
  int? get like;
  @override
  int? get dislike;
  @override
  String? get evaluation;
  @override
  int? get vt;

  /// Create a copy of Stat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArgueInfo _$ArgueInfoFromJson(Map<String, dynamic> json) {
  return _ArgueInfo.fromJson(json);
}

/// @nodoc
mixin _$ArgueInfo {
  String? get argueMsg => throw _privateConstructorUsedError;
  int? get argueType => throw _privateConstructorUsedError;
  String? get argueLink => throw _privateConstructorUsedError;

  /// Serializes this ArgueInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArgueInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArgueInfoCopyWith<ArgueInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArgueInfoCopyWith<$Res> {
  factory $ArgueInfoCopyWith(ArgueInfo value, $Res Function(ArgueInfo) then) =
      _$ArgueInfoCopyWithImpl<$Res, ArgueInfo>;
  @useResult
  $Res call({String? argueMsg, int? argueType, String? argueLink});
}

/// @nodoc
class _$ArgueInfoCopyWithImpl<$Res, $Val extends ArgueInfo>
    implements $ArgueInfoCopyWith<$Res> {
  _$ArgueInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArgueInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? argueMsg = freezed,
    Object? argueType = freezed,
    Object? argueLink = freezed,
  }) {
    return _then(_value.copyWith(
      argueMsg: freezed == argueMsg
          ? _value.argueMsg
          : argueMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      argueType: freezed == argueType
          ? _value.argueType
          : argueType // ignore: cast_nullable_to_non_nullable
              as int?,
      argueLink: freezed == argueLink
          ? _value.argueLink
          : argueLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArgueInfoImplCopyWith<$Res>
    implements $ArgueInfoCopyWith<$Res> {
  factory _$$ArgueInfoImplCopyWith(
          _$ArgueInfoImpl value, $Res Function(_$ArgueInfoImpl) then) =
      __$$ArgueInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? argueMsg, int? argueType, String? argueLink});
}

/// @nodoc
class __$$ArgueInfoImplCopyWithImpl<$Res>
    extends _$ArgueInfoCopyWithImpl<$Res, _$ArgueInfoImpl>
    implements _$$ArgueInfoImplCopyWith<$Res> {
  __$$ArgueInfoImplCopyWithImpl(
      _$ArgueInfoImpl _value, $Res Function(_$ArgueInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArgueInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? argueMsg = freezed,
    Object? argueType = freezed,
    Object? argueLink = freezed,
  }) {
    return _then(_$ArgueInfoImpl(
      argueMsg: freezed == argueMsg
          ? _value.argueMsg
          : argueMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      argueType: freezed == argueType
          ? _value.argueType
          : argueType // ignore: cast_nullable_to_non_nullable
              as int?,
      argueLink: freezed == argueLink
          ? _value.argueLink
          : argueLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArgueInfoImpl with DiagnosticableTreeMixin implements _ArgueInfo {
  const _$ArgueInfoImpl({this.argueMsg, this.argueType, this.argueLink});

  factory _$ArgueInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArgueInfoImplFromJson(json);

  @override
  final String? argueMsg;
  @override
  final int? argueType;
  @override
  final String? argueLink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArgueInfo(argueMsg: $argueMsg, argueType: $argueType, argueLink: $argueLink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArgueInfo'))
      ..add(DiagnosticsProperty('argueMsg', argueMsg))
      ..add(DiagnosticsProperty('argueType', argueType))
      ..add(DiagnosticsProperty('argueLink', argueLink));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArgueInfoImpl &&
            (identical(other.argueMsg, argueMsg) ||
                other.argueMsg == argueMsg) &&
            (identical(other.argueType, argueType) ||
                other.argueType == argueType) &&
            (identical(other.argueLink, argueLink) ||
                other.argueLink == argueLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, argueMsg, argueType, argueLink);

  /// Create a copy of ArgueInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArgueInfoImplCopyWith<_$ArgueInfoImpl> get copyWith =>
      __$$ArgueInfoImplCopyWithImpl<_$ArgueInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArgueInfoImplToJson(
      this,
    );
  }
}

abstract class _ArgueInfo implements ArgueInfo {
  const factory _ArgueInfo(
      {final String? argueMsg,
      final int? argueType,
      final String? argueLink}) = _$ArgueInfoImpl;

  factory _ArgueInfo.fromJson(Map<String, dynamic> json) =
      _$ArgueInfoImpl.fromJson;

  @override
  String? get argueMsg;
  @override
  int? get argueType;
  @override
  String? get argueLink;

  /// Create a copy of ArgueInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArgueInfoImplCopyWith<_$ArgueInfoImpl> get copyWith =>
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

Pages _$PagesFromJson(Map<String, dynamic> json) {
  return _Pages.fromJson(json);
}

/// @nodoc
mixin _$Pages {
  int? get cid => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get partProperty => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get vid => throw _privateConstructorUsedError;
  String? get weblink => throw _privateConstructorUsedError;
  Dimension? get dimension => throw _privateConstructorUsedError;

  /// Serializes this Pages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagesCopyWith<Pages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagesCopyWith<$Res> {
  factory $PagesCopyWith(Pages value, $Res Function(Pages) then) =
      _$PagesCopyWithImpl<$Res, Pages>;
  @useResult
  $Res call(
      {int? cid,
      int? page,
      String? from,
      String? partProperty,
      int? duration,
      String? vid,
      String? weblink,
      Dimension? dimension});

  $DimensionCopyWith<$Res>? get dimension;
}

/// @nodoc
class _$PagesCopyWithImpl<$Res, $Val extends Pages>
    implements $PagesCopyWith<$Res> {
  _$PagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = freezed,
    Object? page = freezed,
    Object? from = freezed,
    Object? partProperty = freezed,
    Object? duration = freezed,
    Object? vid = freezed,
    Object? weblink = freezed,
    Object? dimension = freezed,
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
      partProperty: freezed == partProperty
          ? _value.partProperty
          : partProperty // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }

  /// Create a copy of Pages
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
abstract class _$$PagesImplCopyWith<$Res> implements $PagesCopyWith<$Res> {
  factory _$$PagesImplCopyWith(
          _$PagesImpl value, $Res Function(_$PagesImpl) then) =
      __$$PagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? cid,
      int? page,
      String? from,
      String? partProperty,
      int? duration,
      String? vid,
      String? weblink,
      Dimension? dimension});

  @override
  $DimensionCopyWith<$Res>? get dimension;
}

/// @nodoc
class __$$PagesImplCopyWithImpl<$Res>
    extends _$PagesCopyWithImpl<$Res, _$PagesImpl>
    implements _$$PagesImplCopyWith<$Res> {
  __$$PagesImplCopyWithImpl(
      _$PagesImpl _value, $Res Function(_$PagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cid = freezed,
    Object? page = freezed,
    Object? from = freezed,
    Object? partProperty = freezed,
    Object? duration = freezed,
    Object? vid = freezed,
    Object? weblink = freezed,
    Object? dimension = freezed,
  }) {
    return _then(_$PagesImpl(
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
      partProperty: freezed == partProperty
          ? _value.partProperty
          : partProperty // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagesImpl with DiagnosticableTreeMixin implements _Pages {
  const _$PagesImpl(
      {this.cid,
      this.page,
      this.from,
      this.partProperty,
      this.duration,
      this.vid,
      this.weblink,
      this.dimension});

  factory _$PagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagesImplFromJson(json);

  @override
  final int? cid;
  @override
  final int? page;
  @override
  final String? from;
  @override
  final String? partProperty;
  @override
  final int? duration;
  @override
  final String? vid;
  @override
  final String? weblink;
  @override
  final Dimension? dimension;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pages(cid: $cid, page: $page, from: $from, partProperty: $partProperty, duration: $duration, vid: $vid, weblink: $weblink, dimension: $dimension)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pages'))
      ..add(DiagnosticsProperty('cid', cid))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('partProperty', partProperty))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('vid', vid))
      ..add(DiagnosticsProperty('weblink', weblink))
      ..add(DiagnosticsProperty('dimension', dimension));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagesImpl &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.partProperty, partProperty) ||
                other.partProperty == partProperty) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.vid, vid) || other.vid == vid) &&
            (identical(other.weblink, weblink) || other.weblink == weblink) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cid, page, from, partProperty,
      duration, vid, weblink, dimension);

  /// Create a copy of Pages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagesImplCopyWith<_$PagesImpl> get copyWith =>
      __$$PagesImplCopyWithImpl<_$PagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagesImplToJson(
      this,
    );
  }
}

abstract class _Pages implements Pages {
  const factory _Pages(
      {final int? cid,
      final int? page,
      final String? from,
      final String? partProperty,
      final int? duration,
      final String? vid,
      final String? weblink,
      final Dimension? dimension}) = _$PagesImpl;

  factory _Pages.fromJson(Map<String, dynamic> json) = _$PagesImpl.fromJson;

  @override
  int? get cid;
  @override
  int? get page;
  @override
  String? get from;
  @override
  String? get partProperty;
  @override
  int? get duration;
  @override
  String? get vid;
  @override
  String? get weblink;
  @override
  Dimension? get dimension;

  /// Create a copy of Pages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagesImplCopyWith<_$PagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subtitle _$SubtitleFromJson(Map<String, dynamic> json) {
  return _Subtitle.fromJson(json);
}

/// @nodoc
mixin _$Subtitle {
  bool? get allowSubmit => throw _privateConstructorUsedError;
  List<SubtitleList>? get list => throw _privateConstructorUsedError;

  /// Serializes this Subtitle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subtitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubtitleCopyWith<Subtitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleCopyWith<$Res> {
  factory $SubtitleCopyWith(Subtitle value, $Res Function(Subtitle) then) =
      _$SubtitleCopyWithImpl<$Res, Subtitle>;
  @useResult
  $Res call({bool? allowSubmit, List<SubtitleList>? list});
}

/// @nodoc
class _$SubtitleCopyWithImpl<$Res, $Val extends Subtitle>
    implements $SubtitleCopyWith<$Res> {
  _$SubtitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subtitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowSubmit = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      allowSubmit: freezed == allowSubmit
          ? _value.allowSubmit
          : allowSubmit // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SubtitleList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubtitleImplCopyWith<$Res>
    implements $SubtitleCopyWith<$Res> {
  factory _$$SubtitleImplCopyWith(
          _$SubtitleImpl value, $Res Function(_$SubtitleImpl) then) =
      __$$SubtitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? allowSubmit, List<SubtitleList>? list});
}

/// @nodoc
class __$$SubtitleImplCopyWithImpl<$Res>
    extends _$SubtitleCopyWithImpl<$Res, _$SubtitleImpl>
    implements _$$SubtitleImplCopyWith<$Res> {
  __$$SubtitleImplCopyWithImpl(
      _$SubtitleImpl _value, $Res Function(_$SubtitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subtitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowSubmit = freezed,
    Object? list = freezed,
  }) {
    return _then(_$SubtitleImpl(
      allowSubmit: freezed == allowSubmit
          ? _value.allowSubmit
          : allowSubmit // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<SubtitleList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtitleImpl with DiagnosticableTreeMixin implements _Subtitle {
  const _$SubtitleImpl({this.allowSubmit, final List<SubtitleList>? list})
      : _list = list;

  factory _$SubtitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtitleImplFromJson(json);

  @override
  final bool? allowSubmit;
  final List<SubtitleList>? _list;
  @override
  List<SubtitleList>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Subtitle(allowSubmit: $allowSubmit, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Subtitle'))
      ..add(DiagnosticsProperty('allowSubmit', allowSubmit))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleImpl &&
            (identical(other.allowSubmit, allowSubmit) ||
                other.allowSubmit == allowSubmit) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, allowSubmit, const DeepCollectionEquality().hash(_list));

  /// Create a copy of Subtitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleImplCopyWith<_$SubtitleImpl> get copyWith =>
      __$$SubtitleImplCopyWithImpl<_$SubtitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtitleImplToJson(
      this,
    );
  }
}

abstract class _Subtitle implements Subtitle {
  const factory _Subtitle(
      {final bool? allowSubmit,
      final List<SubtitleList>? list}) = _$SubtitleImpl;

  factory _Subtitle.fromJson(Map<String, dynamic> json) =
      _$SubtitleImpl.fromJson;

  @override
  bool? get allowSubmit;
  @override
  List<SubtitleList>? get list;

  /// Create a copy of Subtitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubtitleImplCopyWith<_$SubtitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubtitleList _$SubtitleListFromJson(Map<String, dynamic> json) {
  return _SubtitleList.fromJson(json);
}

/// @nodoc
mixin _$SubtitleList {
  int? get id => throw _privateConstructorUsedError;
  String? get lan => throw _privateConstructorUsedError;
  String? get lanDoc => throw _privateConstructorUsedError;
  bool? get isLock => throw _privateConstructorUsedError;
  String? get subtitleUrl => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get idStr => throw _privateConstructorUsedError;
  int? get aiType => throw _privateConstructorUsedError;
  int? get aiStatus => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;

  /// Serializes this SubtitleList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubtitleList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubtitleListCopyWith<SubtitleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubtitleListCopyWith<$Res> {
  factory $SubtitleListCopyWith(
          SubtitleList value, $Res Function(SubtitleList) then) =
      _$SubtitleListCopyWithImpl<$Res, SubtitleList>;
  @useResult
  $Res call(
      {int? id,
      String? lan,
      String? lanDoc,
      bool? isLock,
      String? subtitleUrl,
      int? type,
      String? idStr,
      int? aiType,
      int? aiStatus,
      Author? author});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$SubtitleListCopyWithImpl<$Res, $Val extends SubtitleList>
    implements $SubtitleListCopyWith<$Res> {
  _$SubtitleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubtitleList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lan = freezed,
    Object? lanDoc = freezed,
    Object? isLock = freezed,
    Object? subtitleUrl = freezed,
    Object? type = freezed,
    Object? idStr = freezed,
    Object? aiType = freezed,
    Object? aiStatus = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lan: freezed == lan
          ? _value.lan
          : lan // ignore: cast_nullable_to_non_nullable
              as String?,
      lanDoc: freezed == lanDoc
          ? _value.lanDoc
          : lanDoc // ignore: cast_nullable_to_non_nullable
              as String?,
      isLock: freezed == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool?,
      subtitleUrl: freezed == subtitleUrl
          ? _value.subtitleUrl
          : subtitleUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      idStr: freezed == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String?,
      aiType: freezed == aiType
          ? _value.aiType
          : aiType // ignore: cast_nullable_to_non_nullable
              as int?,
      aiStatus: freezed == aiStatus
          ? _value.aiStatus
          : aiStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ) as $Val);
  }

  /// Create a copy of SubtitleList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubtitleListImplCopyWith<$Res>
    implements $SubtitleListCopyWith<$Res> {
  factory _$$SubtitleListImplCopyWith(
          _$SubtitleListImpl value, $Res Function(_$SubtitleListImpl) then) =
      __$$SubtitleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? lan,
      String? lanDoc,
      bool? isLock,
      String? subtitleUrl,
      int? type,
      String? idStr,
      int? aiType,
      int? aiStatus,
      Author? author});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$SubtitleListImplCopyWithImpl<$Res>
    extends _$SubtitleListCopyWithImpl<$Res, _$SubtitleListImpl>
    implements _$$SubtitleListImplCopyWith<$Res> {
  __$$SubtitleListImplCopyWithImpl(
      _$SubtitleListImpl _value, $Res Function(_$SubtitleListImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubtitleList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? lan = freezed,
    Object? lanDoc = freezed,
    Object? isLock = freezed,
    Object? subtitleUrl = freezed,
    Object? type = freezed,
    Object? idStr = freezed,
    Object? aiType = freezed,
    Object? aiStatus = freezed,
    Object? author = freezed,
  }) {
    return _then(_$SubtitleListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      lan: freezed == lan
          ? _value.lan
          : lan // ignore: cast_nullable_to_non_nullable
              as String?,
      lanDoc: freezed == lanDoc
          ? _value.lanDoc
          : lanDoc // ignore: cast_nullable_to_non_nullable
              as String?,
      isLock: freezed == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool?,
      subtitleUrl: freezed == subtitleUrl
          ? _value.subtitleUrl
          : subtitleUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      idStr: freezed == idStr
          ? _value.idStr
          : idStr // ignore: cast_nullable_to_non_nullable
              as String?,
      aiType: freezed == aiType
          ? _value.aiType
          : aiType // ignore: cast_nullable_to_non_nullable
              as int?,
      aiStatus: freezed == aiStatus
          ? _value.aiStatus
          : aiStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubtitleListImpl with DiagnosticableTreeMixin implements _SubtitleList {
  const _$SubtitleListImpl(
      {this.id,
      this.lan,
      this.lanDoc,
      this.isLock,
      this.subtitleUrl,
      this.type,
      this.idStr,
      this.aiType,
      this.aiStatus,
      this.author});

  factory _$SubtitleListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubtitleListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? lan;
  @override
  final String? lanDoc;
  @override
  final bool? isLock;
  @override
  final String? subtitleUrl;
  @override
  final int? type;
  @override
  final String? idStr;
  @override
  final int? aiType;
  @override
  final int? aiStatus;
  @override
  final Author? author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubtitleList(id: $id, lan: $lan, lanDoc: $lanDoc, isLock: $isLock, subtitleUrl: $subtitleUrl, type: $type, idStr: $idStr, aiType: $aiType, aiStatus: $aiStatus, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubtitleList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lan', lan))
      ..add(DiagnosticsProperty('lanDoc', lanDoc))
      ..add(DiagnosticsProperty('isLock', isLock))
      ..add(DiagnosticsProperty('subtitleUrl', subtitleUrl))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('idStr', idStr))
      ..add(DiagnosticsProperty('aiType', aiType))
      ..add(DiagnosticsProperty('aiStatus', aiStatus))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubtitleListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lan, lan) || other.lan == lan) &&
            (identical(other.lanDoc, lanDoc) || other.lanDoc == lanDoc) &&
            (identical(other.isLock, isLock) || other.isLock == isLock) &&
            (identical(other.subtitleUrl, subtitleUrl) ||
                other.subtitleUrl == subtitleUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.idStr, idStr) || other.idStr == idStr) &&
            (identical(other.aiType, aiType) || other.aiType == aiType) &&
            (identical(other.aiStatus, aiStatus) ||
                other.aiStatus == aiStatus) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, lan, lanDoc, isLock,
      subtitleUrl, type, idStr, aiType, aiStatus, author);

  /// Create a copy of SubtitleList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubtitleListImplCopyWith<_$SubtitleListImpl> get copyWith =>
      __$$SubtitleListImplCopyWithImpl<_$SubtitleListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubtitleListImplToJson(
      this,
    );
  }
}

abstract class _SubtitleList implements SubtitleList {
  const factory _SubtitleList(
      {final int? id,
      final String? lan,
      final String? lanDoc,
      final bool? isLock,
      final String? subtitleUrl,
      final int? type,
      final String? idStr,
      final int? aiType,
      final int? aiStatus,
      final Author? author}) = _$SubtitleListImpl;

  factory _SubtitleList.fromJson(Map<String, dynamic> json) =
      _$SubtitleListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get lan;
  @override
  String? get lanDoc;
  @override
  bool? get isLock;
  @override
  String? get subtitleUrl;
  @override
  int? get type;
  @override
  String? get idStr;
  @override
  int? get aiType;
  @override
  int? get aiStatus;
  @override
  Author? get author;

  /// Create a copy of SubtitleList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubtitleListImplCopyWith<_$SubtitleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  int? get mid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get sex => throw _privateConstructorUsedError;
  String? get face => throw _privateConstructorUsedError;
  String? get sign => throw _privateConstructorUsedError;
  int? get rank => throw _privateConstructorUsedError;
  int? get birthday => throw _privateConstructorUsedError;
  int? get isFakeAccount => throw _privateConstructorUsedError;
  int? get isDeleted => throw _privateConstructorUsedError;
  int? get inRegAudit => throw _privateConstructorUsedError;
  int? get isSeniorMember => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call(
      {int? mid,
      String? name,
      String? sex,
      String? face,
      String? sign,
      int? rank,
      int? birthday,
      int? isFakeAccount,
      int? isDeleted,
      int? inRegAudit,
      int? isSeniorMember});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? sex = freezed,
    Object? face = freezed,
    Object? sign = freezed,
    Object? rank = freezed,
    Object? birthday = freezed,
    Object? isFakeAccount = freezed,
    Object? isDeleted = freezed,
    Object? inRegAudit = freezed,
    Object? isSeniorMember = freezed,
  }) {
    return _then(_value.copyWith(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as int?,
      isFakeAccount: freezed == isFakeAccount
          ? _value.isFakeAccount
          : isFakeAccount // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      inRegAudit: freezed == inRegAudit
          ? _value.inRegAudit
          : inRegAudit // ignore: cast_nullable_to_non_nullable
              as int?,
      isSeniorMember: freezed == isSeniorMember
          ? _value.isSeniorMember
          : isSeniorMember // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mid,
      String? name,
      String? sex,
      String? face,
      String? sign,
      int? rank,
      int? birthday,
      int? isFakeAccount,
      int? isDeleted,
      int? inRegAudit,
      int? isSeniorMember});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? sex = freezed,
    Object? face = freezed,
    Object? sign = freezed,
    Object? rank = freezed,
    Object? birthday = freezed,
    Object? isFakeAccount = freezed,
    Object? isDeleted = freezed,
    Object? inRegAudit = freezed,
    Object? isSeniorMember = freezed,
  }) {
    return _then(_$AuthorImpl(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as int?,
      isFakeAccount: freezed == isFakeAccount
          ? _value.isFakeAccount
          : isFakeAccount // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      inRegAudit: freezed == inRegAudit
          ? _value.inRegAudit
          : inRegAudit // ignore: cast_nullable_to_non_nullable
              as int?,
      isSeniorMember: freezed == isSeniorMember
          ? _value.isSeniorMember
          : isSeniorMember // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl with DiagnosticableTreeMixin implements _Author {
  const _$AuthorImpl(
      {this.mid,
      this.name,
      this.sex,
      this.face,
      this.sign,
      this.rank,
      this.birthday,
      this.isFakeAccount,
      this.isDeleted,
      this.inRegAudit,
      this.isSeniorMember});

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final int? mid;
  @override
  final String? name;
  @override
  final String? sex;
  @override
  final String? face;
  @override
  final String? sign;
  @override
  final int? rank;
  @override
  final int? birthday;
  @override
  final int? isFakeAccount;
  @override
  final int? isDeleted;
  @override
  final int? inRegAudit;
  @override
  final int? isSeniorMember;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Author(mid: $mid, name: $name, sex: $sex, face: $face, sign: $sign, rank: $rank, birthday: $birthday, isFakeAccount: $isFakeAccount, isDeleted: $isDeleted, inRegAudit: $inRegAudit, isSeniorMember: $isSeniorMember)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Author'))
      ..add(DiagnosticsProperty('mid', mid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('sex', sex))
      ..add(DiagnosticsProperty('face', face))
      ..add(DiagnosticsProperty('sign', sign))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('isFakeAccount', isFakeAccount))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('inRegAudit', inRegAudit))
      ..add(DiagnosticsProperty('isSeniorMember', isSeniorMember));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.isFakeAccount, isFakeAccount) ||
                other.isFakeAccount == isFakeAccount) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.inRegAudit, inRegAudit) ||
                other.inRegAudit == inRegAudit) &&
            (identical(other.isSeniorMember, isSeniorMember) ||
                other.isSeniorMember == isSeniorMember));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mid, name, sex, face, sign, rank,
      birthday, isFakeAccount, isDeleted, inRegAudit, isSeniorMember);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {final int? mid,
      final String? name,
      final String? sex,
      final String? face,
      final String? sign,
      final int? rank,
      final int? birthday,
      final int? isFakeAccount,
      final int? isDeleted,
      final int? inRegAudit,
      final int? isSeniorMember}) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  int? get mid;
  @override
  String? get name;
  @override
  String? get sex;
  @override
  String? get face;
  @override
  String? get sign;
  @override
  int? get rank;
  @override
  int? get birthday;
  @override
  int? get isFakeAccount;
  @override
  int? get isDeleted;
  @override
  int? get inRegAudit;
  @override
  int? get isSeniorMember;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
mixin _$Staff {
  int? get mid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get face => throw _privateConstructorUsedError;
  Vip? get vip => throw _privateConstructorUsedError;
  Official? get official => throw _privateConstructorUsedError;
  int? get follower => throw _privateConstructorUsedError;
  int? get labelStyle => throw _privateConstructorUsedError;

  /// Serializes this Staff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call(
      {int? mid,
      String? title,
      String? name,
      String? face,
      Vip? vip,
      Official? official,
      int? follower,
      int? labelStyle});

  $VipCopyWith<$Res>? get vip;
  $OfficialCopyWith<$Res>? get official;
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? face = freezed,
    Object? vip = freezed,
    Object? official = freezed,
    Object? follower = freezed,
    Object? labelStyle = freezed,
  }) {
    return _then(_value.copyWith(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as Vip?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as Official?,
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
      labelStyle: freezed == labelStyle
          ? _value.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VipCopyWith<$Res>? get vip {
    if (_value.vip == null) {
      return null;
    }

    return $VipCopyWith<$Res>(_value.vip!, (value) {
      return _then(_value.copyWith(vip: value) as $Val);
    });
  }

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfficialCopyWith<$Res>? get official {
    if (_value.official == null) {
      return null;
    }

    return $OfficialCopyWith<$Res>(_value.official!, (value) {
      return _then(_value.copyWith(official: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StaffImplCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$StaffImplCopyWith(
          _$StaffImpl value, $Res Function(_$StaffImpl) then) =
      __$$StaffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mid,
      String? title,
      String? name,
      String? face,
      Vip? vip,
      Official? official,
      int? follower,
      int? labelStyle});

  @override
  $VipCopyWith<$Res>? get vip;
  @override
  $OfficialCopyWith<$Res>? get official;
}

/// @nodoc
class __$$StaffImplCopyWithImpl<$Res>
    extends _$StaffCopyWithImpl<$Res, _$StaffImpl>
    implements _$$StaffImplCopyWith<$Res> {
  __$$StaffImplCopyWithImpl(
      _$StaffImpl _value, $Res Function(_$StaffImpl) _then)
      : super(_value, _then);

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? face = freezed,
    Object? vip = freezed,
    Object? official = freezed,
    Object? follower = freezed,
    Object? labelStyle = freezed,
  }) {
    return _then(_$StaffImpl(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as Vip?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as Official?,
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
      labelStyle: freezed == labelStyle
          ? _value.labelStyle
          : labelStyle // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffImpl with DiagnosticableTreeMixin implements _Staff {
  const _$StaffImpl(
      {this.mid,
      this.title,
      this.name,
      this.face,
      this.vip,
      this.official,
      this.follower,
      this.labelStyle});

  factory _$StaffImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffImplFromJson(json);

  @override
  final int? mid;
  @override
  final String? title;
  @override
  final String? name;
  @override
  final String? face;
  @override
  final Vip? vip;
  @override
  final Official? official;
  @override
  final int? follower;
  @override
  final int? labelStyle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Staff(mid: $mid, title: $title, name: $name, face: $face, vip: $vip, official: $official, follower: $follower, labelStyle: $labelStyle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Staff'))
      ..add(DiagnosticsProperty('mid', mid))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('face', face))
      ..add(DiagnosticsProperty('vip', vip))
      ..add(DiagnosticsProperty('official', official))
      ..add(DiagnosticsProperty('follower', follower))
      ..add(DiagnosticsProperty('labelStyle', labelStyle));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffImpl &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.labelStyle, labelStyle) ||
                other.labelStyle == labelStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mid, title, name, face, vip, official, follower, labelStyle);

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffImplCopyWith<_$StaffImpl> get copyWith =>
      __$$StaffImplCopyWithImpl<_$StaffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffImplToJson(
      this,
    );
  }
}

abstract class _Staff implements Staff {
  const factory _Staff(
      {final int? mid,
      final String? title,
      final String? name,
      final String? face,
      final Vip? vip,
      final Official? official,
      final int? follower,
      final int? labelStyle}) = _$StaffImpl;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$StaffImpl.fromJson;

  @override
  int? get mid;
  @override
  String? get title;
  @override
  String? get name;
  @override
  String? get face;
  @override
  Vip? get vip;
  @override
  Official? get official;
  @override
  int? get follower;
  @override
  int? get labelStyle;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffImplCopyWith<_$StaffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vip _$VipFromJson(Map<String, dynamic> json) {
  return _Vip.fromJson(json);
}

/// @nodoc
mixin _$Vip {
  int? get type => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get dueDate => throw _privateConstructorUsedError;
  int? get vipPayType => throw _privateConstructorUsedError;
  int? get themeType => throw _privateConstructorUsedError;
  Label? get label => throw _privateConstructorUsedError;
  int? get avatarSubscript => throw _privateConstructorUsedError;
  String? get nicknameColor => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;
  String? get avatarSubscriptUrl => throw _privateConstructorUsedError;
  int? get tvVipStatus => throw _privateConstructorUsedError;
  int? get tvVipPayType => throw _privateConstructorUsedError;
  int? get tvDueDate => throw _privateConstructorUsedError;

  /// Serializes this Vip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VipCopyWith<Vip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipCopyWith<$Res> {
  factory $VipCopyWith(Vip value, $Res Function(Vip) then) =
      _$VipCopyWithImpl<$Res, Vip>;
  @useResult
  $Res call(
      {int? type,
      int? status,
      int? dueDate,
      int? vipPayType,
      int? themeType,
      Label? label,
      int? avatarSubscript,
      String? nicknameColor,
      int? role,
      String? avatarSubscriptUrl,
      int? tvVipStatus,
      int? tvVipPayType,
      int? tvDueDate});

  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class _$VipCopyWithImpl<$Res, $Val extends Vip> implements $VipCopyWith<$Res> {
  _$VipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? dueDate = freezed,
    Object? vipPayType = freezed,
    Object? themeType = freezed,
    Object? label = freezed,
    Object? avatarSubscript = freezed,
    Object? nicknameColor = freezed,
    Object? role = freezed,
    Object? avatarSubscriptUrl = freezed,
    Object? tvVipStatus = freezed,
    Object? tvVipPayType = freezed,
    Object? tvDueDate = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as int?,
      vipPayType: freezed == vipPayType
          ? _value.vipPayType
          : vipPayType // ignore: cast_nullable_to_non_nullable
              as int?,
      themeType: freezed == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
      avatarSubscript: freezed == avatarSubscript
          ? _value.avatarSubscript
          : avatarSubscript // ignore: cast_nullable_to_non_nullable
              as int?,
      nicknameColor: freezed == nicknameColor
          ? _value.nicknameColor
          : nicknameColor // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarSubscriptUrl: freezed == avatarSubscriptUrl
          ? _value.avatarSubscriptUrl
          : avatarSubscriptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tvVipStatus: freezed == tvVipStatus
          ? _value.tvVipStatus
          : tvVipStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      tvVipPayType: freezed == tvVipPayType
          ? _value.tvVipPayType
          : tvVipPayType // ignore: cast_nullable_to_non_nullable
              as int?,
      tvDueDate: freezed == tvDueDate
          ? _value.tvDueDate
          : tvDueDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LabelCopyWith<$Res>? get label {
    if (_value.label == null) {
      return null;
    }

    return $LabelCopyWith<$Res>(_value.label!, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VipImplCopyWith<$Res> implements $VipCopyWith<$Res> {
  factory _$$VipImplCopyWith(_$VipImpl value, $Res Function(_$VipImpl) then) =
      __$$VipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? type,
      int? status,
      int? dueDate,
      int? vipPayType,
      int? themeType,
      Label? label,
      int? avatarSubscript,
      String? nicknameColor,
      int? role,
      String? avatarSubscriptUrl,
      int? tvVipStatus,
      int? tvVipPayType,
      int? tvDueDate});

  @override
  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class __$$VipImplCopyWithImpl<$Res> extends _$VipCopyWithImpl<$Res, _$VipImpl>
    implements _$$VipImplCopyWith<$Res> {
  __$$VipImplCopyWithImpl(_$VipImpl _value, $Res Function(_$VipImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? dueDate = freezed,
    Object? vipPayType = freezed,
    Object? themeType = freezed,
    Object? label = freezed,
    Object? avatarSubscript = freezed,
    Object? nicknameColor = freezed,
    Object? role = freezed,
    Object? avatarSubscriptUrl = freezed,
    Object? tvVipStatus = freezed,
    Object? tvVipPayType = freezed,
    Object? tvDueDate = freezed,
  }) {
    return _then(_$VipImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as int?,
      vipPayType: freezed == vipPayType
          ? _value.vipPayType
          : vipPayType // ignore: cast_nullable_to_non_nullable
              as int?,
      themeType: freezed == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
      avatarSubscript: freezed == avatarSubscript
          ? _value.avatarSubscript
          : avatarSubscript // ignore: cast_nullable_to_non_nullable
              as int?,
      nicknameColor: freezed == nicknameColor
          ? _value.nicknameColor
          : nicknameColor // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarSubscriptUrl: freezed == avatarSubscriptUrl
          ? _value.avatarSubscriptUrl
          : avatarSubscriptUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tvVipStatus: freezed == tvVipStatus
          ? _value.tvVipStatus
          : tvVipStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      tvVipPayType: freezed == tvVipPayType
          ? _value.tvVipPayType
          : tvVipPayType // ignore: cast_nullable_to_non_nullable
              as int?,
      tvDueDate: freezed == tvDueDate
          ? _value.tvDueDate
          : tvDueDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VipImpl with DiagnosticableTreeMixin implements _Vip {
  const _$VipImpl(
      {this.type,
      this.status,
      this.dueDate,
      this.vipPayType,
      this.themeType,
      this.label,
      this.avatarSubscript,
      this.nicknameColor,
      this.role,
      this.avatarSubscriptUrl,
      this.tvVipStatus,
      this.tvVipPayType,
      this.tvDueDate});

  factory _$VipImpl.fromJson(Map<String, dynamic> json) =>
      _$$VipImplFromJson(json);

  @override
  final int? type;
  @override
  final int? status;
  @override
  final int? dueDate;
  @override
  final int? vipPayType;
  @override
  final int? themeType;
  @override
  final Label? label;
  @override
  final int? avatarSubscript;
  @override
  final String? nicknameColor;
  @override
  final int? role;
  @override
  final String? avatarSubscriptUrl;
  @override
  final int? tvVipStatus;
  @override
  final int? tvVipPayType;
  @override
  final int? tvDueDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Vip(type: $type, status: $status, dueDate: $dueDate, vipPayType: $vipPayType, themeType: $themeType, label: $label, avatarSubscript: $avatarSubscript, nicknameColor: $nicknameColor, role: $role, avatarSubscriptUrl: $avatarSubscriptUrl, tvVipStatus: $tvVipStatus, tvVipPayType: $tvVipPayType, tvDueDate: $tvDueDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Vip'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('dueDate', dueDate))
      ..add(DiagnosticsProperty('vipPayType', vipPayType))
      ..add(DiagnosticsProperty('themeType', themeType))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('avatarSubscript', avatarSubscript))
      ..add(DiagnosticsProperty('nicknameColor', nicknameColor))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('avatarSubscriptUrl', avatarSubscriptUrl))
      ..add(DiagnosticsProperty('tvVipStatus', tvVipStatus))
      ..add(DiagnosticsProperty('tvVipPayType', tvVipPayType))
      ..add(DiagnosticsProperty('tvDueDate', tvDueDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VipImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.vipPayType, vipPayType) ||
                other.vipPayType == vipPayType) &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.avatarSubscript, avatarSubscript) ||
                other.avatarSubscript == avatarSubscript) &&
            (identical(other.nicknameColor, nicknameColor) ||
                other.nicknameColor == nicknameColor) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatarSubscriptUrl, avatarSubscriptUrl) ||
                other.avatarSubscriptUrl == avatarSubscriptUrl) &&
            (identical(other.tvVipStatus, tvVipStatus) ||
                other.tvVipStatus == tvVipStatus) &&
            (identical(other.tvVipPayType, tvVipPayType) ||
                other.tvVipPayType == tvVipPayType) &&
            (identical(other.tvDueDate, tvDueDate) ||
                other.tvDueDate == tvDueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      status,
      dueDate,
      vipPayType,
      themeType,
      label,
      avatarSubscript,
      nicknameColor,
      role,
      avatarSubscriptUrl,
      tvVipStatus,
      tvVipPayType,
      tvDueDate);

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VipImplCopyWith<_$VipImpl> get copyWith =>
      __$$VipImplCopyWithImpl<_$VipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VipImplToJson(
      this,
    );
  }
}

abstract class _Vip implements Vip {
  const factory _Vip(
      {final int? type,
      final int? status,
      final int? dueDate,
      final int? vipPayType,
      final int? themeType,
      final Label? label,
      final int? avatarSubscript,
      final String? nicknameColor,
      final int? role,
      final String? avatarSubscriptUrl,
      final int? tvVipStatus,
      final int? tvVipPayType,
      final int? tvDueDate}) = _$VipImpl;

  factory _Vip.fromJson(Map<String, dynamic> json) = _$VipImpl.fromJson;

  @override
  int? get type;
  @override
  int? get status;
  @override
  int? get dueDate;
  @override
  int? get vipPayType;
  @override
  int? get themeType;
  @override
  Label? get label;
  @override
  int? get avatarSubscript;
  @override
  String? get nicknameColor;
  @override
  int? get role;
  @override
  String? get avatarSubscriptUrl;
  @override
  int? get tvVipStatus;
  @override
  int? get tvVipPayType;
  @override
  int? get tvDueDate;

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VipImplCopyWith<_$VipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Label _$LabelFromJson(Map<String, dynamic> json) {
  return _Label.fromJson(json);
}

/// @nodoc
mixin _$Label {
  String? get path => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get labelTheme => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  int? get bgStyle => throw _privateConstructorUsedError;
  String? get bgColor => throw _privateConstructorUsedError;
  String? get borderColor => throw _privateConstructorUsedError;
  bool? get useImgLabel => throw _privateConstructorUsedError;
  String? get imgLabelUriHans => throw _privateConstructorUsedError;
  String? get imgLabelUriHant => throw _privateConstructorUsedError;
  String? get imgLabelUriHansStatic => throw _privateConstructorUsedError;
  String? get imgLabelUriHantStatic => throw _privateConstructorUsedError;

  /// Serializes this Label to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabelCopyWith<Label> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelCopyWith<$Res> {
  factory $LabelCopyWith(Label value, $Res Function(Label) then) =
      _$LabelCopyWithImpl<$Res, Label>;
  @useResult
  $Res call(
      {String? path,
      String? text,
      String? labelTheme,
      String? textColor,
      int? bgStyle,
      String? bgColor,
      String? borderColor,
      bool? useImgLabel,
      String? imgLabelUriHans,
      String? imgLabelUriHant,
      String? imgLabelUriHansStatic,
      String? imgLabelUriHantStatic});
}

/// @nodoc
class _$LabelCopyWithImpl<$Res, $Val extends Label>
    implements $LabelCopyWith<$Res> {
  _$LabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? text = freezed,
    Object? labelTheme = freezed,
    Object? textColor = freezed,
    Object? bgStyle = freezed,
    Object? bgColor = freezed,
    Object? borderColor = freezed,
    Object? useImgLabel = freezed,
    Object? imgLabelUriHans = freezed,
    Object? imgLabelUriHant = freezed,
    Object? imgLabelUriHansStatic = freezed,
    Object? imgLabelUriHantStatic = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      labelTheme: freezed == labelTheme
          ? _value.labelTheme
          : labelTheme // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgStyle: freezed == bgStyle
          ? _value.bgStyle
          : bgStyle // ignore: cast_nullable_to_non_nullable
              as int?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      useImgLabel: freezed == useImgLabel
          ? _value.useImgLabel
          : useImgLabel // ignore: cast_nullable_to_non_nullable
              as bool?,
      imgLabelUriHans: freezed == imgLabelUriHans
          ? _value.imgLabelUriHans
          : imgLabelUriHans // ignore: cast_nullable_to_non_nullable
              as String?,
      imgLabelUriHant: freezed == imgLabelUriHant
          ? _value.imgLabelUriHant
          : imgLabelUriHant // ignore: cast_nullable_to_non_nullable
              as String?,
      imgLabelUriHansStatic: freezed == imgLabelUriHansStatic
          ? _value.imgLabelUriHansStatic
          : imgLabelUriHansStatic // ignore: cast_nullable_to_non_nullable
              as String?,
      imgLabelUriHantStatic: freezed == imgLabelUriHantStatic
          ? _value.imgLabelUriHantStatic
          : imgLabelUriHantStatic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelImplCopyWith<$Res> implements $LabelCopyWith<$Res> {
  factory _$$LabelImplCopyWith(
          _$LabelImpl value, $Res Function(_$LabelImpl) then) =
      __$$LabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? path,
      String? text,
      String? labelTheme,
      String? textColor,
      int? bgStyle,
      String? bgColor,
      String? borderColor,
      bool? useImgLabel,
      String? imgLabelUriHans,
      String? imgLabelUriHant,
      String? imgLabelUriHansStatic,
      String? imgLabelUriHantStatic});
}

/// @nodoc
class __$$LabelImplCopyWithImpl<$Res>
    extends _$LabelCopyWithImpl<$Res, _$LabelImpl>
    implements _$$LabelImplCopyWith<$Res> {
  __$$LabelImplCopyWithImpl(
      _$LabelImpl _value, $Res Function(_$LabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? text = freezed,
    Object? labelTheme = freezed,
    Object? textColor = freezed,
    Object? bgStyle = freezed,
    Object? bgColor = freezed,
    Object? borderColor = freezed,
    Object? useImgLabel = freezed,
    Object? imgLabelUriHans = freezed,
    Object? imgLabelUriHant = freezed,
    Object? imgLabelUriHansStatic = freezed,
    Object? imgLabelUriHantStatic = freezed,
  }) {
    return _then(_$LabelImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      labelTheme: freezed == labelTheme
          ? _value.labelTheme
          : labelTheme // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgStyle: freezed == bgStyle
          ? _value.bgStyle
          : bgStyle // ignore: cast_nullable_to_non_nullable
              as int?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as String?,
      useImgLabel: freezed == useImgLabel
          ? _value.useImgLabel
          : useImgLabel // ignore: cast_nullable_to_non_nullable
              as bool?,
      imgLabelUriHans: freezed == imgLabelUriHans
          ? _value.imgLabelUriHans
          : imgLabelUriHans // ignore: cast_nullable_to_non_nullable
              as String?,
      imgLabelUriHant: freezed == imgLabelUriHant
          ? _value.imgLabelUriHant
          : imgLabelUriHant // ignore: cast_nullable_to_non_nullable
              as String?,
      imgLabelUriHansStatic: freezed == imgLabelUriHansStatic
          ? _value.imgLabelUriHansStatic
          : imgLabelUriHansStatic // ignore: cast_nullable_to_non_nullable
              as String?,
      imgLabelUriHantStatic: freezed == imgLabelUriHantStatic
          ? _value.imgLabelUriHantStatic
          : imgLabelUriHantStatic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelImpl with DiagnosticableTreeMixin implements _Label {
  const _$LabelImpl(
      {this.path,
      this.text,
      this.labelTheme,
      this.textColor,
      this.bgStyle,
      this.bgColor,
      this.borderColor,
      this.useImgLabel,
      this.imgLabelUriHans,
      this.imgLabelUriHant,
      this.imgLabelUriHansStatic,
      this.imgLabelUriHantStatic});

  factory _$LabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelImplFromJson(json);

  @override
  final String? path;
  @override
  final String? text;
  @override
  final String? labelTheme;
  @override
  final String? textColor;
  @override
  final int? bgStyle;
  @override
  final String? bgColor;
  @override
  final String? borderColor;
  @override
  final bool? useImgLabel;
  @override
  final String? imgLabelUriHans;
  @override
  final String? imgLabelUriHant;
  @override
  final String? imgLabelUriHansStatic;
  @override
  final String? imgLabelUriHantStatic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Label(path: $path, text: $text, labelTheme: $labelTheme, textColor: $textColor, bgStyle: $bgStyle, bgColor: $bgColor, borderColor: $borderColor, useImgLabel: $useImgLabel, imgLabelUriHans: $imgLabelUriHans, imgLabelUriHant: $imgLabelUriHant, imgLabelUriHansStatic: $imgLabelUriHansStatic, imgLabelUriHantStatic: $imgLabelUriHantStatic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Label'))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('labelTheme', labelTheme))
      ..add(DiagnosticsProperty('textColor', textColor))
      ..add(DiagnosticsProperty('bgStyle', bgStyle))
      ..add(DiagnosticsProperty('bgColor', bgColor))
      ..add(DiagnosticsProperty('borderColor', borderColor))
      ..add(DiagnosticsProperty('useImgLabel', useImgLabel))
      ..add(DiagnosticsProperty('imgLabelUriHans', imgLabelUriHans))
      ..add(DiagnosticsProperty('imgLabelUriHant', imgLabelUriHant))
      ..add(DiagnosticsProperty('imgLabelUriHansStatic', imgLabelUriHansStatic))
      ..add(
          DiagnosticsProperty('imgLabelUriHantStatic', imgLabelUriHantStatic));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.labelTheme, labelTheme) ||
                other.labelTheme == labelTheme) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.bgStyle, bgStyle) || other.bgStyle == bgStyle) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.useImgLabel, useImgLabel) ||
                other.useImgLabel == useImgLabel) &&
            (identical(other.imgLabelUriHans, imgLabelUriHans) ||
                other.imgLabelUriHans == imgLabelUriHans) &&
            (identical(other.imgLabelUriHant, imgLabelUriHant) ||
                other.imgLabelUriHant == imgLabelUriHant) &&
            (identical(other.imgLabelUriHansStatic, imgLabelUriHansStatic) ||
                other.imgLabelUriHansStatic == imgLabelUriHansStatic) &&
            (identical(other.imgLabelUriHantStatic, imgLabelUriHantStatic) ||
                other.imgLabelUriHantStatic == imgLabelUriHantStatic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      text,
      labelTheme,
      textColor,
      bgStyle,
      bgColor,
      borderColor,
      useImgLabel,
      imgLabelUriHans,
      imgLabelUriHant,
      imgLabelUriHansStatic,
      imgLabelUriHantStatic);

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      __$$LabelImplCopyWithImpl<_$LabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelImplToJson(
      this,
    );
  }
}

abstract class _Label implements Label {
  const factory _Label(
      {final String? path,
      final String? text,
      final String? labelTheme,
      final String? textColor,
      final int? bgStyle,
      final String? bgColor,
      final String? borderColor,
      final bool? useImgLabel,
      final String? imgLabelUriHans,
      final String? imgLabelUriHant,
      final String? imgLabelUriHansStatic,
      final String? imgLabelUriHantStatic}) = _$LabelImpl;

  factory _Label.fromJson(Map<String, dynamic> json) = _$LabelImpl.fromJson;

  @override
  String? get path;
  @override
  String? get text;
  @override
  String? get labelTheme;
  @override
  String? get textColor;
  @override
  int? get bgStyle;
  @override
  String? get bgColor;
  @override
  String? get borderColor;
  @override
  bool? get useImgLabel;
  @override
  String? get imgLabelUriHans;
  @override
  String? get imgLabelUriHant;
  @override
  String? get imgLabelUriHansStatic;
  @override
  String? get imgLabelUriHantStatic;

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Official _$OfficialFromJson(Map<String, dynamic> json) {
  return _Official.fromJson(json);
}

/// @nodoc
mixin _$Official {
  int? get role => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this Official to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfficialCopyWith<Official> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialCopyWith<$Res> {
  factory $OfficialCopyWith(Official value, $Res Function(Official) then) =
      _$OfficialCopyWithImpl<$Res, Official>;
  @useResult
  $Res call({int? role, String? title, String? desc, int? type});
}

/// @nodoc
class _$OfficialCopyWithImpl<$Res, $Val extends Official>
    implements $OfficialCopyWith<$Res> {
  _$OfficialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialImplCopyWith<$Res>
    implements $OfficialCopyWith<$Res> {
  factory _$$OfficialImplCopyWith(
          _$OfficialImpl value, $Res Function(_$OfficialImpl) then) =
      __$$OfficialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? role, String? title, String? desc, int? type});
}

/// @nodoc
class __$$OfficialImplCopyWithImpl<$Res>
    extends _$OfficialCopyWithImpl<$Res, _$OfficialImpl>
    implements _$$OfficialImplCopyWith<$Res> {
  __$$OfficialImplCopyWithImpl(
      _$OfficialImpl _value, $Res Function(_$OfficialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? type = freezed,
  }) {
    return _then(_$OfficialImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficialImpl with DiagnosticableTreeMixin implements _Official {
  const _$OfficialImpl({this.role, this.title, this.desc, this.type});

  factory _$OfficialImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficialImplFromJson(json);

  @override
  final int? role;
  @override
  final String? title;
  @override
  final String? desc;
  @override
  final int? type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Official(role: $role, title: $title, desc: $desc, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Official'))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, title, desc, type);

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialImplCopyWith<_$OfficialImpl> get copyWith =>
      __$$OfficialImplCopyWithImpl<_$OfficialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficialImplToJson(
      this,
    );
  }
}

abstract class _Official implements Official {
  const factory _Official(
      {final int? role,
      final String? title,
      final String? desc,
      final int? type}) = _$OfficialImpl;

  factory _Official.fromJson(Map<String, dynamic> json) =
      _$OfficialImpl.fromJson;

  @override
  int? get role;
  @override
  String? get title;
  @override
  String? get desc;
  @override
  int? get type;

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfficialImplCopyWith<_$OfficialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserGarb _$UserGarbFromJson(Map<String, dynamic> json) {
  return _UserGarb.fromJson(json);
}

/// @nodoc
mixin _$UserGarb {
  String? get urlImageAniCut => throw _privateConstructorUsedError;

  /// Serializes this UserGarb to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGarb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGarbCopyWith<UserGarb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGarbCopyWith<$Res> {
  factory $UserGarbCopyWith(UserGarb value, $Res Function(UserGarb) then) =
      _$UserGarbCopyWithImpl<$Res, UserGarb>;
  @useResult
  $Res call({String? urlImageAniCut});
}

/// @nodoc
class _$UserGarbCopyWithImpl<$Res, $Val extends UserGarb>
    implements $UserGarbCopyWith<$Res> {
  _$UserGarbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGarb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImageAniCut = freezed,
  }) {
    return _then(_value.copyWith(
      urlImageAniCut: freezed == urlImageAniCut
          ? _value.urlImageAniCut
          : urlImageAniCut // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGarbImplCopyWith<$Res>
    implements $UserGarbCopyWith<$Res> {
  factory _$$UserGarbImplCopyWith(
          _$UserGarbImpl value, $Res Function(_$UserGarbImpl) then) =
      __$$UserGarbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? urlImageAniCut});
}

/// @nodoc
class __$$UserGarbImplCopyWithImpl<$Res>
    extends _$UserGarbCopyWithImpl<$Res, _$UserGarbImpl>
    implements _$$UserGarbImplCopyWith<$Res> {
  __$$UserGarbImplCopyWithImpl(
      _$UserGarbImpl _value, $Res Function(_$UserGarbImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGarb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImageAniCut = freezed,
  }) {
    return _then(_$UserGarbImpl(
      urlImageAniCut: freezed == urlImageAniCut
          ? _value.urlImageAniCut
          : urlImageAniCut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGarbImpl with DiagnosticableTreeMixin implements _UserGarb {
  const _$UserGarbImpl({this.urlImageAniCut});

  factory _$UserGarbImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGarbImplFromJson(json);

  @override
  final String? urlImageAniCut;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserGarb(urlImageAniCut: $urlImageAniCut)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserGarb'))
      ..add(DiagnosticsProperty('urlImageAniCut', urlImageAniCut));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGarbImpl &&
            (identical(other.urlImageAniCut, urlImageAniCut) ||
                other.urlImageAniCut == urlImageAniCut));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, urlImageAniCut);

  /// Create a copy of UserGarb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGarbImplCopyWith<_$UserGarbImpl> get copyWith =>
      __$$UserGarbImplCopyWithImpl<_$UserGarbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGarbImplToJson(
      this,
    );
  }
}

abstract class _UserGarb implements UserGarb {
  const factory _UserGarb({final String? urlImageAniCut}) = _$UserGarbImpl;

  factory _UserGarb.fromJson(Map<String, dynamic> json) =
      _$UserGarbImpl.fromJson;

  @override
  String? get urlImageAniCut;

  /// Create a copy of UserGarb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGarbImplCopyWith<_$UserGarbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HonorReply _$HonorReplyFromJson(Map<String, dynamic> json) {
  return _HonorReply.fromJson(json);
}

/// @nodoc
mixin _$HonorReply {
  List<Honor>? get honor => throw _privateConstructorUsedError;

  /// Serializes this HonorReply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HonorReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HonorReplyCopyWith<HonorReply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HonorReplyCopyWith<$Res> {
  factory $HonorReplyCopyWith(
          HonorReply value, $Res Function(HonorReply) then) =
      _$HonorReplyCopyWithImpl<$Res, HonorReply>;
  @useResult
  $Res call({List<Honor>? honor});
}

/// @nodoc
class _$HonorReplyCopyWithImpl<$Res, $Val extends HonorReply>
    implements $HonorReplyCopyWith<$Res> {
  _$HonorReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HonorReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? honor = freezed,
  }) {
    return _then(_value.copyWith(
      honor: freezed == honor
          ? _value.honor
          : honor // ignore: cast_nullable_to_non_nullable
              as List<Honor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HonorReplyImplCopyWith<$Res>
    implements $HonorReplyCopyWith<$Res> {
  factory _$$HonorReplyImplCopyWith(
          _$HonorReplyImpl value, $Res Function(_$HonorReplyImpl) then) =
      __$$HonorReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Honor>? honor});
}

/// @nodoc
class __$$HonorReplyImplCopyWithImpl<$Res>
    extends _$HonorReplyCopyWithImpl<$Res, _$HonorReplyImpl>
    implements _$$HonorReplyImplCopyWith<$Res> {
  __$$HonorReplyImplCopyWithImpl(
      _$HonorReplyImpl _value, $Res Function(_$HonorReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HonorReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? honor = freezed,
  }) {
    return _then(_$HonorReplyImpl(
      honor: freezed == honor
          ? _value._honor
          : honor // ignore: cast_nullable_to_non_nullable
              as List<Honor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HonorReplyImpl with DiagnosticableTreeMixin implements _HonorReply {
  const _$HonorReplyImpl({final List<Honor>? honor}) : _honor = honor;

  factory _$HonorReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$HonorReplyImplFromJson(json);

  final List<Honor>? _honor;
  @override
  List<Honor>? get honor {
    final value = _honor;
    if (value == null) return null;
    if (_honor is EqualUnmodifiableListView) return _honor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HonorReply(honor: $honor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HonorReply'))
      ..add(DiagnosticsProperty('honor', honor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HonorReplyImpl &&
            const DeepCollectionEquality().equals(other._honor, _honor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_honor));

  /// Create a copy of HonorReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HonorReplyImplCopyWith<_$HonorReplyImpl> get copyWith =>
      __$$HonorReplyImplCopyWithImpl<_$HonorReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HonorReplyImplToJson(
      this,
    );
  }
}

abstract class _HonorReply implements HonorReply {
  const factory _HonorReply({final List<Honor>? honor}) = _$HonorReplyImpl;

  factory _HonorReply.fromJson(Map<String, dynamic> json) =
      _$HonorReplyImpl.fromJson;

  @override
  List<Honor>? get honor;

  /// Create a copy of HonorReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HonorReplyImplCopyWith<_$HonorReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Honor _$HonorFromJson(Map<String, dynamic> json) {
  return _Honor.fromJson(json);
}

/// @nodoc
mixin _$Honor {
  int? get aid => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  int? get weeklyRecommendNum => throw _privateConstructorUsedError;

  /// Serializes this Honor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Honor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HonorCopyWith<Honor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HonorCopyWith<$Res> {
  factory $HonorCopyWith(Honor value, $Res Function(Honor) then) =
      _$HonorCopyWithImpl<$Res, Honor>;
  @useResult
  $Res call({int? aid, int? type, String? desc, int? weeklyRecommendNum});
}

/// @nodoc
class _$HonorCopyWithImpl<$Res, $Val extends Honor>
    implements $HonorCopyWith<$Res> {
  _$HonorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Honor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aid = freezed,
    Object? type = freezed,
    Object? desc = freezed,
    Object? weeklyRecommendNum = freezed,
  }) {
    return _then(_value.copyWith(
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      weeklyRecommendNum: freezed == weeklyRecommendNum
          ? _value.weeklyRecommendNum
          : weeklyRecommendNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HonorImplCopyWith<$Res> implements $HonorCopyWith<$Res> {
  factory _$$HonorImplCopyWith(
          _$HonorImpl value, $Res Function(_$HonorImpl) then) =
      __$$HonorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? aid, int? type, String? desc, int? weeklyRecommendNum});
}

/// @nodoc
class __$$HonorImplCopyWithImpl<$Res>
    extends _$HonorCopyWithImpl<$Res, _$HonorImpl>
    implements _$$HonorImplCopyWith<$Res> {
  __$$HonorImplCopyWithImpl(
      _$HonorImpl _value, $Res Function(_$HonorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Honor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aid = freezed,
    Object? type = freezed,
    Object? desc = freezed,
    Object? weeklyRecommendNum = freezed,
  }) {
    return _then(_$HonorImpl(
      aid: freezed == aid
          ? _value.aid
          : aid // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      weeklyRecommendNum: freezed == weeklyRecommendNum
          ? _value.weeklyRecommendNum
          : weeklyRecommendNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HonorImpl with DiagnosticableTreeMixin implements _Honor {
  const _$HonorImpl({this.aid, this.type, this.desc, this.weeklyRecommendNum});

  factory _$HonorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HonorImplFromJson(json);

  @override
  final int? aid;
  @override
  final int? type;
  @override
  final String? desc;
  @override
  final int? weeklyRecommendNum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Honor(aid: $aid, type: $type, desc: $desc, weeklyRecommendNum: $weeklyRecommendNum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Honor'))
      ..add(DiagnosticsProperty('aid', aid))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('weeklyRecommendNum', weeklyRecommendNum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HonorImpl &&
            (identical(other.aid, aid) || other.aid == aid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.weeklyRecommendNum, weeklyRecommendNum) ||
                other.weeklyRecommendNum == weeklyRecommendNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, aid, type, desc, weeklyRecommendNum);

  /// Create a copy of Honor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HonorImplCopyWith<_$HonorImpl> get copyWith =>
      __$$HonorImplCopyWithImpl<_$HonorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HonorImplToJson(
      this,
    );
  }
}

abstract class _Honor implements Honor {
  const factory _Honor(
      {final int? aid,
      final int? type,
      final String? desc,
      final int? weeklyRecommendNum}) = _$HonorImpl;

  factory _Honor.fromJson(Map<String, dynamic> json) = _$HonorImpl.fromJson;

  @override
  int? get aid;
  @override
  int? get type;
  @override
  String? get desc;
  @override
  int? get weeklyRecommendNum;

  /// Create a copy of Honor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HonorImplCopyWith<_$HonorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
