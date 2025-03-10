// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_top_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioToplistResponse _$AudioToplistResponseFromJson(Map<String, dynamic> json) {
  return _AudioToplistResponse.fromJson(json);
}

/// @nodoc
mixin _$AudioToplistResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  AudioToplistData? get data => throw _privateConstructorUsedError;

  /// Serializes this AudioToplistResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioToplistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioToplistResponseCopyWith<AudioToplistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioToplistResponseCopyWith<$Res> {
  factory $AudioToplistResponseCopyWith(AudioToplistResponse value,
          $Res Function(AudioToplistResponse) then) =
      _$AudioToplistResponseCopyWithImpl<$Res, AudioToplistResponse>;
  @useResult
  $Res call({int? code, String? message, int? ttl, AudioToplistData? data});

  $AudioToplistDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AudioToplistResponseCopyWithImpl<$Res,
        $Val extends AudioToplistResponse>
    implements $AudioToplistResponseCopyWith<$Res> {
  _$AudioToplistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioToplistResponse
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
              as AudioToplistData?,
    ) as $Val);
  }

  /// Create a copy of AudioToplistResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioToplistDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AudioToplistDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioToplistResponseImplCopyWith<$Res>
    implements $AudioToplistResponseCopyWith<$Res> {
  factory _$$AudioToplistResponseImplCopyWith(_$AudioToplistResponseImpl value,
          $Res Function(_$AudioToplistResponseImpl) then) =
      __$$AudioToplistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, AudioToplistData? data});

  @override
  $AudioToplistDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AudioToplistResponseImplCopyWithImpl<$Res>
    extends _$AudioToplistResponseCopyWithImpl<$Res, _$AudioToplistResponseImpl>
    implements _$$AudioToplistResponseImplCopyWith<$Res> {
  __$$AudioToplistResponseImplCopyWithImpl(_$AudioToplistResponseImpl _value,
      $Res Function(_$AudioToplistResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioToplistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AudioToplistResponseImpl(
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
              as AudioToplistData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioToplistResponseImpl implements _AudioToplistResponse {
  const _$AudioToplistResponseImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$AudioToplistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioToplistResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final AudioToplistData? data;

  @override
  String toString() {
    return 'AudioToplistResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioToplistResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of AudioToplistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioToplistResponseImplCopyWith<_$AudioToplistResponseImpl>
      get copyWith =>
          __$$AudioToplistResponseImplCopyWithImpl<_$AudioToplistResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioToplistResponseImplToJson(
      this,
    );
  }
}

abstract class _AudioToplistResponse implements AudioToplistResponse {
  const factory _AudioToplistResponse(
      {final int? code,
      final String? message,
      final int? ttl,
      final AudioToplistData? data}) = _$AudioToplistResponseImpl;

  factory _AudioToplistResponse.fromJson(Map<String, dynamic> json) =
      _$AudioToplistResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  AudioToplistData? get data;

  /// Create a copy of AudioToplistResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioToplistResponseImplCopyWith<_$AudioToplistResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AudioToplistData _$AudioToplistDataFromJson(Map<String, dynamic> json) {
  return _AudioToplistData.fromJson(json);
}

/// @nodoc
mixin _$AudioToplistData {
  Map<String, List<AudioToplistPeriodItem>>? get list =>
      throw _privateConstructorUsedError;

  /// Serializes this AudioToplistData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioToplistData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioToplistDataCopyWith<AudioToplistData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioToplistDataCopyWith<$Res> {
  factory $AudioToplistDataCopyWith(
          AudioToplistData value, $Res Function(AudioToplistData) then) =
      _$AudioToplistDataCopyWithImpl<$Res, AudioToplistData>;
  @useResult
  $Res call({Map<String, List<AudioToplistPeriodItem>>? list});
}

/// @nodoc
class _$AudioToplistDataCopyWithImpl<$Res, $Val extends AudioToplistData>
    implements $AudioToplistDataCopyWith<$Res> {
  _$AudioToplistDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioToplistData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as Map<String, List<AudioToplistPeriodItem>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioToplistDataImplCopyWith<$Res>
    implements $AudioToplistDataCopyWith<$Res> {
  factory _$$AudioToplistDataImplCopyWith(_$AudioToplistDataImpl value,
          $Res Function(_$AudioToplistDataImpl) then) =
      __$$AudioToplistDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<AudioToplistPeriodItem>>? list});
}

/// @nodoc
class __$$AudioToplistDataImplCopyWithImpl<$Res>
    extends _$AudioToplistDataCopyWithImpl<$Res, _$AudioToplistDataImpl>
    implements _$$AudioToplistDataImplCopyWith<$Res> {
  __$$AudioToplistDataImplCopyWithImpl(_$AudioToplistDataImpl _value,
      $Res Function(_$AudioToplistDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioToplistData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$AudioToplistDataImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as Map<String, List<AudioToplistPeriodItem>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioToplistDataImpl implements _AudioToplistData {
  const _$AudioToplistDataImpl(
      {final Map<String, List<AudioToplistPeriodItem>>? list})
      : _list = list;

  factory _$AudioToplistDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioToplistDataImplFromJson(json);

  final Map<String, List<AudioToplistPeriodItem>>? _list;
  @override
  Map<String, List<AudioToplistPeriodItem>>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableMapView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AudioToplistData(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioToplistDataImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of AudioToplistData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioToplistDataImplCopyWith<_$AudioToplistDataImpl> get copyWith =>
      __$$AudioToplistDataImplCopyWithImpl<_$AudioToplistDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioToplistDataImplToJson(
      this,
    );
  }
}

abstract class _AudioToplistData implements AudioToplistData {
  const factory _AudioToplistData(
          {final Map<String, List<AudioToplistPeriodItem>>? list}) =
      _$AudioToplistDataImpl;

  factory _AudioToplistData.fromJson(Map<String, dynamic> json) =
      _$AudioToplistDataImpl.fromJson;

  @override
  Map<String, List<AudioToplistPeriodItem>>? get list;

  /// Create a copy of AudioToplistData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioToplistDataImplCopyWith<_$AudioToplistDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioToplistPeriodItem _$AudioToplistPeriodItemFromJson(
    Map<String, dynamic> json) {
  return _AudioToplistPeriodItem.fromJson(json);
}

/// @nodoc
mixin _$AudioToplistPeriodItem {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  int get priod => throw _privateConstructorUsedError;
  @JsonKey(name: 'publish_time')
  int get publishTime => throw _privateConstructorUsedError;

  /// Serializes this AudioToplistPeriodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioToplistPeriodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioToplistPeriodItemCopyWith<AudioToplistPeriodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioToplistPeriodItemCopyWith<$Res> {
  factory $AudioToplistPeriodItemCopyWith(AudioToplistPeriodItem value,
          $Res Function(AudioToplistPeriodItem) then) =
      _$AudioToplistPeriodItemCopyWithImpl<$Res, AudioToplistPeriodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      int priod,
      @JsonKey(name: 'publish_time') int publishTime});
}

/// @nodoc
class _$AudioToplistPeriodItemCopyWithImpl<$Res,
        $Val extends AudioToplistPeriodItem>
    implements $AudioToplistPeriodItemCopyWith<$Res> {
  _$AudioToplistPeriodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioToplistPeriodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? priod = null,
    Object? publishTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      priod: null == priod
          ? _value.priod
          : priod // ignore: cast_nullable_to_non_nullable
              as int,
      publishTime: null == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioToplistPeriodItemImplCopyWith<$Res>
    implements $AudioToplistPeriodItemCopyWith<$Res> {
  factory _$$AudioToplistPeriodItemImplCopyWith(
          _$AudioToplistPeriodItemImpl value,
          $Res Function(_$AudioToplistPeriodItemImpl) then) =
      __$$AudioToplistPeriodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      int priod,
      @JsonKey(name: 'publish_time') int publishTime});
}

/// @nodoc
class __$$AudioToplistPeriodItemImplCopyWithImpl<$Res>
    extends _$AudioToplistPeriodItemCopyWithImpl<$Res,
        _$AudioToplistPeriodItemImpl>
    implements _$$AudioToplistPeriodItemImplCopyWith<$Res> {
  __$$AudioToplistPeriodItemImplCopyWithImpl(
      _$AudioToplistPeriodItemImpl _value,
      $Res Function(_$AudioToplistPeriodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioToplistPeriodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? priod = null,
    Object? publishTime = null,
  }) {
    return _then(_$AudioToplistPeriodItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      priod: null == priod
          ? _value.priod
          : priod // ignore: cast_nullable_to_non_nullable
              as int,
      publishTime: null == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioToplistPeriodItemImpl implements _AudioToplistPeriodItem {
  const _$AudioToplistPeriodItemImpl(
      {@JsonKey(name: 'ID') required this.id,
      required this.priod,
      @JsonKey(name: 'publish_time') required this.publishTime});

  factory _$AudioToplistPeriodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioToplistPeriodItemImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  final int priod;
  @override
  @JsonKey(name: 'publish_time')
  final int publishTime;

  @override
  String toString() {
    return 'AudioToplistPeriodItem(id: $id, priod: $priod, publishTime: $publishTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioToplistPeriodItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.priod, priod) || other.priod == priod) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, priod, publishTime);

  /// Create a copy of AudioToplistPeriodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioToplistPeriodItemImplCopyWith<_$AudioToplistPeriodItemImpl>
      get copyWith => __$$AudioToplistPeriodItemImplCopyWithImpl<
          _$AudioToplistPeriodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioToplistPeriodItemImplToJson(
      this,
    );
  }
}

abstract class _AudioToplistPeriodItem implements AudioToplistPeriodItem {
  const factory _AudioToplistPeriodItem(
          {@JsonKey(name: 'ID') required final int id,
          required final int priod,
          @JsonKey(name: 'publish_time') required final int publishTime}) =
      _$AudioToplistPeriodItemImpl;

  factory _AudioToplistPeriodItem.fromJson(Map<String, dynamic> json) =
      _$AudioToplistPeriodItemImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  int get priod;
  @override
  @JsonKey(name: 'publish_time')
  int get publishTime;

  /// Create a copy of AudioToplistPeriodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioToplistPeriodItemImplCopyWith<_$AudioToplistPeriodItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
