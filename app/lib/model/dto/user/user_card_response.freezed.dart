// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_card_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCardResponse _$UserCardResponseFromJson(Map<String, dynamic> json) {
  return _UserCardResponse.fromJson(json);
}

/// @nodoc
mixin _$UserCardResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  List<UserCardResponseData>? get data => throw _privateConstructorUsedError;

  /// Serializes this UserCardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCardResponseCopyWith<UserCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCardResponseCopyWith<$Res> {
  factory $UserCardResponseCopyWith(
          UserCardResponse value, $Res Function(UserCardResponse) then) =
      _$UserCardResponseCopyWithImpl<$Res, UserCardResponse>;
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, List<UserCardResponseData>? data});
}

/// @nodoc
class _$UserCardResponseCopyWithImpl<$Res, $Val extends UserCardResponse>
    implements $UserCardResponseCopyWith<$Res> {
  _$UserCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCardResponse
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
              as List<UserCardResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCardResponseImplCopyWith<$Res>
    implements $UserCardResponseCopyWith<$Res> {
  factory _$$UserCardResponseImplCopyWith(_$UserCardResponseImpl value,
          $Res Function(_$UserCardResponseImpl) then) =
      __$$UserCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, List<UserCardResponseData>? data});
}

/// @nodoc
class __$$UserCardResponseImplCopyWithImpl<$Res>
    extends _$UserCardResponseCopyWithImpl<$Res, _$UserCardResponseImpl>
    implements _$$UserCardResponseImplCopyWith<$Res> {
  __$$UserCardResponseImplCopyWithImpl(_$UserCardResponseImpl _value,
      $Res Function(_$UserCardResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserCardResponseImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserCardResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCardResponseImpl
    with DiagnosticableTreeMixin
    implements _UserCardResponse {
  const _$UserCardResponseImpl(
      {this.code,
      this.message,
      this.ttl,
      final List<UserCardResponseData>? data})
      : _data = data;

  factory _$UserCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCardResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  final List<UserCardResponseData>? _data;
  @override
  List<UserCardResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserCardResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCardResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCardResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of UserCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCardResponseImplCopyWith<_$UserCardResponseImpl> get copyWith =>
      __$$UserCardResponseImplCopyWithImpl<_$UserCardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCardResponseImplToJson(
      this,
    );
  }
}

abstract class _UserCardResponse implements UserCardResponse {
  const factory _UserCardResponse(
      {final int? code,
      final String? message,
      final int? ttl,
      final List<UserCardResponseData>? data}) = _$UserCardResponseImpl;

  factory _UserCardResponse.fromJson(Map<String, dynamic> json) =
      _$UserCardResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  List<UserCardResponseData>? get data;

  /// Create a copy of UserCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCardResponseImplCopyWith<_$UserCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCardResponseData _$UserCardResponseDataFromJson(Map<String, dynamic> json) {
  return _UserCardResponseData.fromJson(json);
}

/// @nodoc
mixin _$UserCardResponseData {
  int? get mid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get face => throw _privateConstructorUsedError;
  String? get sign => throw _privateConstructorUsedError;
  int? get rank => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  int? get silence => throw _privateConstructorUsedError;

  /// Serializes this UserCardResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCardResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCardResponseDataCopyWith<UserCardResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCardResponseDataCopyWith<$Res> {
  factory $UserCardResponseDataCopyWith(UserCardResponseData value,
          $Res Function(UserCardResponseData) then) =
      _$UserCardResponseDataCopyWithImpl<$Res, UserCardResponseData>;
  @useResult
  $Res call(
      {int? mid,
      String? name,
      String? face,
      String? sign,
      int? rank,
      int? level,
      int? silence});
}

/// @nodoc
class _$UserCardResponseDataCopyWithImpl<$Res,
        $Val extends UserCardResponseData>
    implements $UserCardResponseDataCopyWith<$Res> {
  _$UserCardResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCardResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? face = freezed,
    Object? sign = freezed,
    Object? rank = freezed,
    Object? level = freezed,
    Object? silence = freezed,
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
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      silence: freezed == silence
          ? _value.silence
          : silence // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCardResponseDataImplCopyWith<$Res>
    implements $UserCardResponseDataCopyWith<$Res> {
  factory _$$UserCardResponseDataImplCopyWith(_$UserCardResponseDataImpl value,
          $Res Function(_$UserCardResponseDataImpl) then) =
      __$$UserCardResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mid,
      String? name,
      String? face,
      String? sign,
      int? rank,
      int? level,
      int? silence});
}

/// @nodoc
class __$$UserCardResponseDataImplCopyWithImpl<$Res>
    extends _$UserCardResponseDataCopyWithImpl<$Res, _$UserCardResponseDataImpl>
    implements _$$UserCardResponseDataImplCopyWith<$Res> {
  __$$UserCardResponseDataImplCopyWithImpl(_$UserCardResponseDataImpl _value,
      $Res Function(_$UserCardResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCardResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? face = freezed,
    Object? sign = freezed,
    Object? rank = freezed,
    Object? level = freezed,
    Object? silence = freezed,
  }) {
    return _then(_$UserCardResponseDataImpl(
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
      sign: freezed == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      silence: freezed == silence
          ? _value.silence
          : silence // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCardResponseDataImpl
    with DiagnosticableTreeMixin
    implements _UserCardResponseData {
  const _$UserCardResponseDataImpl(
      {this.mid,
      this.name,
      this.face,
      this.sign,
      this.rank,
      this.level,
      this.silence});

  factory _$UserCardResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCardResponseDataImplFromJson(json);

  @override
  final int? mid;
  @override
  final String? name;
  @override
  final String? face;
  @override
  final String? sign;
  @override
  final int? rank;
  @override
  final int? level;
  @override
  final int? silence;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserCardResponseData(mid: $mid, name: $name, face: $face, sign: $sign, rank: $rank, level: $level, silence: $silence)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserCardResponseData'))
      ..add(DiagnosticsProperty('mid', mid))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('face', face))
      ..add(DiagnosticsProperty('sign', sign))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('silence', silence));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCardResponseDataImpl &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.silence, silence) || other.silence == silence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mid, name, face, sign, rank, level, silence);

  /// Create a copy of UserCardResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCardResponseDataImplCopyWith<_$UserCardResponseDataImpl>
      get copyWith =>
          __$$UserCardResponseDataImplCopyWithImpl<_$UserCardResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCardResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UserCardResponseData implements UserCardResponseData {
  const factory _UserCardResponseData(
      {final int? mid,
      final String? name,
      final String? face,
      final String? sign,
      final int? rank,
      final int? level,
      final int? silence}) = _$UserCardResponseDataImpl;

  factory _UserCardResponseData.fromJson(Map<String, dynamic> json) =
      _$UserCardResponseDataImpl.fromJson;

  @override
  int? get mid;
  @override
  String? get name;
  @override
  String? get face;
  @override
  String? get sign;
  @override
  int? get rank;
  @override
  int? get level;
  @override
  int? get silence;

  /// Create a copy of UserCardResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCardResponseDataImplCopyWith<_$UserCardResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
