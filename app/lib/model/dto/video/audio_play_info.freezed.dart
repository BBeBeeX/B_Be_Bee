// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_play_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioPlayInfo _$AudioPlayInfoFromJson(Map<String, dynamic> json) {
  return _AudioPlayInfo.fromJson(json);
}

/// @nodoc
mixin _$AudioPlayInfo {
  List<AudioQuality> get supportAudioQualities =>
      throw _privateConstructorUsedError;
  List<AudioPlayItem> get audios => throw _privateConstructorUsedError;

  /// Serializes this AudioPlayInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioPlayInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioPlayInfoCopyWith<AudioPlayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayInfoCopyWith<$Res> {
  factory $AudioPlayInfoCopyWith(
          AudioPlayInfo value, $Res Function(AudioPlayInfo) then) =
      _$AudioPlayInfoCopyWithImpl<$Res, AudioPlayInfo>;
  @useResult
  $Res call(
      {List<AudioQuality> supportAudioQualities, List<AudioPlayItem> audios});
}

/// @nodoc
class _$AudioPlayInfoCopyWithImpl<$Res, $Val extends AudioPlayInfo>
    implements $AudioPlayInfoCopyWith<$Res> {
  _$AudioPlayInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPlayInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportAudioQualities = null,
    Object? audios = null,
  }) {
    return _then(_value.copyWith(
      supportAudioQualities: null == supportAudioQualities
          ? _value.supportAudioQualities
          : supportAudioQualities // ignore: cast_nullable_to_non_nullable
              as List<AudioQuality>,
      audios: null == audios
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<AudioPlayItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioPlayInfoImplCopyWith<$Res>
    implements $AudioPlayInfoCopyWith<$Res> {
  factory _$$AudioPlayInfoImplCopyWith(
          _$AudioPlayInfoImpl value, $Res Function(_$AudioPlayInfoImpl) then) =
      __$$AudioPlayInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AudioQuality> supportAudioQualities, List<AudioPlayItem> audios});
}

/// @nodoc
class __$$AudioPlayInfoImplCopyWithImpl<$Res>
    extends _$AudioPlayInfoCopyWithImpl<$Res, _$AudioPlayInfoImpl>
    implements _$$AudioPlayInfoImplCopyWith<$Res> {
  __$$AudioPlayInfoImplCopyWithImpl(
      _$AudioPlayInfoImpl _value, $Res Function(_$AudioPlayInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportAudioQualities = null,
    Object? audios = null,
  }) {
    return _then(_$AudioPlayInfoImpl(
      supportAudioQualities: null == supportAudioQualities
          ? _value._supportAudioQualities
          : supportAudioQualities // ignore: cast_nullable_to_non_nullable
              as List<AudioQuality>,
      audios: null == audios
          ? _value._audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<AudioPlayItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioPlayInfoImpl implements _AudioPlayInfo {
  const _$AudioPlayInfoImpl(
      {final List<AudioQuality> supportAudioQualities = const [],
      final List<AudioPlayItem> audios = const []})
      : _supportAudioQualities = supportAudioQualities,
        _audios = audios;

  factory _$AudioPlayInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioPlayInfoImplFromJson(json);

  final List<AudioQuality> _supportAudioQualities;
  @override
  @JsonKey()
  List<AudioQuality> get supportAudioQualities {
    if (_supportAudioQualities is EqualUnmodifiableListView)
      return _supportAudioQualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportAudioQualities);
  }

  final List<AudioPlayItem> _audios;
  @override
  @JsonKey()
  List<AudioPlayItem> get audios {
    if (_audios is EqualUnmodifiableListView) return _audios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audios);
  }

  @override
  String toString() {
    return 'AudioPlayInfo(supportAudioQualities: $supportAudioQualities, audios: $audios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._supportAudioQualities, _supportAudioQualities) &&
            const DeepCollectionEquality().equals(other._audios, _audios));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_supportAudioQualities),
      const DeepCollectionEquality().hash(_audios));

  /// Create a copy of AudioPlayInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayInfoImplCopyWith<_$AudioPlayInfoImpl> get copyWith =>
      __$$AudioPlayInfoImplCopyWithImpl<_$AudioPlayInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioPlayInfoImplToJson(
      this,
    );
  }
}

abstract class _AudioPlayInfo implements AudioPlayInfo {
  const factory _AudioPlayInfo(
      {final List<AudioQuality> supportAudioQualities,
      final List<AudioPlayItem> audios}) = _$AudioPlayInfoImpl;

  factory _AudioPlayInfo.fromJson(Map<String, dynamic> json) =
      _$AudioPlayInfoImpl.fromJson;

  @override
  List<AudioQuality> get supportAudioQualities;
  @override
  List<AudioPlayItem> get audios;

  /// Create a copy of AudioPlayInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioPlayInfoImplCopyWith<_$AudioPlayInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
