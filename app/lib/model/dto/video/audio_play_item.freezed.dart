// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_play_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioPlayItem _$AudioPlayItemFromJson(Map<String, dynamic> json) {
  return _AudioPlayItem.fromJson(json);
}

/// @nodoc
mixin _$AudioPlayItem {
  @HiveField(0)
  List<String> get urls => throw _privateConstructorUsedError; // 视频流地址或本地文件路径
  @HiveField(1)
  AudioQuality get quality => throw _privateConstructorUsedError; // 音频质量
  @HiveField(2)
  int get bandWidth => throw _privateConstructorUsedError; // 带宽
  @HiveField(3)
  String get codecs => throw _privateConstructorUsedError; // 编码
  @HiveField(4)
  AudioSourceTypeEnum get audioType => throw _privateConstructorUsedError;

  /// Serializes this AudioPlayItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioPlayItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioPlayItemCopyWith<AudioPlayItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayItemCopyWith<$Res> {
  factory $AudioPlayItemCopyWith(
          AudioPlayItem value, $Res Function(AudioPlayItem) then) =
      _$AudioPlayItemCopyWithImpl<$Res, AudioPlayItem>;
  @useResult
  $Res call(
      {@HiveField(0) List<String> urls,
      @HiveField(1) AudioQuality quality,
      @HiveField(2) int bandWidth,
      @HiveField(3) String codecs,
      @HiveField(4) AudioSourceTypeEnum audioType});
}

/// @nodoc
class _$AudioPlayItemCopyWithImpl<$Res, $Val extends AudioPlayItem>
    implements $AudioPlayItemCopyWith<$Res> {
  _$AudioPlayItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioPlayItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? quality = null,
    Object? bandWidth = null,
    Object? codecs = null,
    Object? audioType = null,
  }) {
    return _then(_value.copyWith(
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as AudioQuality,
      bandWidth: null == bandWidth
          ? _value.bandWidth
          : bandWidth // ignore: cast_nullable_to_non_nullable
              as int,
      codecs: null == codecs
          ? _value.codecs
          : codecs // ignore: cast_nullable_to_non_nullable
              as String,
      audioType: null == audioType
          ? _value.audioType
          : audioType // ignore: cast_nullable_to_non_nullable
              as AudioSourceTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioPlayItemImplCopyWith<$Res>
    implements $AudioPlayItemCopyWith<$Res> {
  factory _$$AudioPlayItemImplCopyWith(
          _$AudioPlayItemImpl value, $Res Function(_$AudioPlayItemImpl) then) =
      __$$AudioPlayItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) List<String> urls,
      @HiveField(1) AudioQuality quality,
      @HiveField(2) int bandWidth,
      @HiveField(3) String codecs,
      @HiveField(4) AudioSourceTypeEnum audioType});
}

/// @nodoc
class __$$AudioPlayItemImplCopyWithImpl<$Res>
    extends _$AudioPlayItemCopyWithImpl<$Res, _$AudioPlayItemImpl>
    implements _$$AudioPlayItemImplCopyWith<$Res> {
  __$$AudioPlayItemImplCopyWithImpl(
      _$AudioPlayItemImpl _value, $Res Function(_$AudioPlayItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioPlayItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? quality = null,
    Object? bandWidth = null,
    Object? codecs = null,
    Object? audioType = null,
  }) {
    return _then(_$AudioPlayItemImpl(
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as AudioQuality,
      bandWidth: null == bandWidth
          ? _value.bandWidth
          : bandWidth // ignore: cast_nullable_to_non_nullable
              as int,
      codecs: null == codecs
          ? _value.codecs
          : codecs // ignore: cast_nullable_to_non_nullable
              as String,
      audioType: null == audioType
          ? _value.audioType
          : audioType // ignore: cast_nullable_to_non_nullable
              as AudioSourceTypeEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 8)
class _$AudioPlayItemImpl extends _AudioPlayItem {
  const _$AudioPlayItemImpl(
      {@HiveField(0) final List<String> urls = const [],
      @HiveField(1) this.quality = AudioQuality.unknown,
      @HiveField(2) this.bandWidth = 0,
      @HiveField(3) this.codecs = '',
      @HiveField(4) this.audioType = AudioSourceTypeEnum.bili})
      : _urls = urls,
        super._();

  factory _$AudioPlayItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioPlayItemImplFromJson(json);

  final List<String> _urls;
  @override
  @JsonKey()
  @HiveField(0)
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

// 视频流地址或本地文件路径
  @override
  @JsonKey()
  @HiveField(1)
  final AudioQuality quality;
// 音频质量
  @override
  @JsonKey()
  @HiveField(2)
  final int bandWidth;
// 带宽
  @override
  @JsonKey()
  @HiveField(3)
  final String codecs;
// 编码
  @override
  @JsonKey()
  @HiveField(4)
  final AudioSourceTypeEnum audioType;

  @override
  String toString() {
    return 'AudioPlayItem(urls: $urls, quality: $quality, bandWidth: $bandWidth, codecs: $codecs, audioType: $audioType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioPlayItemImpl &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.bandWidth, bandWidth) ||
                other.bandWidth == bandWidth) &&
            (identical(other.codecs, codecs) || other.codecs == codecs) &&
            (identical(other.audioType, audioType) ||
                other.audioType == audioType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_urls),
      quality,
      bandWidth,
      codecs,
      audioType);

  /// Create a copy of AudioPlayItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioPlayItemImplCopyWith<_$AudioPlayItemImpl> get copyWith =>
      __$$AudioPlayItemImplCopyWithImpl<_$AudioPlayItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioPlayItemImplToJson(
      this,
    );
  }
}

abstract class _AudioPlayItem extends AudioPlayItem {
  const factory _AudioPlayItem(
      {@HiveField(0) final List<String> urls,
      @HiveField(1) final AudioQuality quality,
      @HiveField(2) final int bandWidth,
      @HiveField(3) final String codecs,
      @HiveField(4) final AudioSourceTypeEnum audioType}) = _$AudioPlayItemImpl;
  const _AudioPlayItem._() : super._();

  factory _AudioPlayItem.fromJson(Map<String, dynamic> json) =
      _$AudioPlayItemImpl.fromJson;

  @override
  @HiveField(0)
  List<String> get urls; // 视频流地址或本地文件路径
  @override
  @HiveField(1)
  AudioQuality get quality; // 音频质量
  @override
  @HiveField(2)
  int get bandWidth; // 带宽
  @override
  @HiveField(3)
  String get codecs; // 编码
  @override
  @HiveField(4)
  AudioSourceTypeEnum get audioType;

  /// Create a copy of AudioPlayItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioPlayItemImplCopyWith<_$AudioPlayItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
