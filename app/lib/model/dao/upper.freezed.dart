// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Upper _$UpperFromJson(Map<String, dynamic> json) {
  return _Upper.fromJson(json);
}

/// @nodoc
mixin _$Upper {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get face => throw _privateConstructorUsedError;

  /// Serializes this Upper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Upper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpperCopyWith<Upper> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpperCopyWith<$Res> {
  factory $UpperCopyWith(Upper value, $Res Function(Upper) then) =
      _$UpperCopyWithImpl<$Res, Upper>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String face});
}

/// @nodoc
class _$UpperCopyWithImpl<$Res, $Val extends Upper>
    implements $UpperCopyWith<$Res> {
  _$UpperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Upper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? face = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpperImplCopyWith<$Res> implements $UpperCopyWith<$Res> {
  factory _$$UpperImplCopyWith(
          _$UpperImpl value, $Res Function(_$UpperImpl) then) =
      __$$UpperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String face});
}

/// @nodoc
class __$$UpperImplCopyWithImpl<$Res>
    extends _$UpperCopyWithImpl<$Res, _$UpperImpl>
    implements _$$UpperImplCopyWith<$Res> {
  __$$UpperImplCopyWithImpl(
      _$UpperImpl _value, $Res Function(_$UpperImpl) _then)
      : super(_value, _then);

  /// Create a copy of Upper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? face = null,
  }) {
    return _then(_$UpperImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpperImpl extends _Upper {
  const _$UpperImpl(
      {@HiveField(0) this.id = '',
      @HiveField(1) this.name = '',
      @HiveField(2) this.face = ''})
      : super._();

  factory _$UpperImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpperImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String id;
  @override
  @JsonKey()
  @HiveField(1)
  final String name;
  @override
  @JsonKey()
  @HiveField(2)
  final String face;

  @override
  String toString() {
    return 'Upper(id: $id, name: $name, face: $face)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpperImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.face, face) || other.face == face));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, face);

  /// Create a copy of Upper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpperImplCopyWith<_$UpperImpl> get copyWith =>
      __$$UpperImplCopyWithImpl<_$UpperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpperImplToJson(
      this,
    );
  }
}

abstract class _Upper extends Upper {
  const factory _Upper(
      {@HiveField(0) final String id,
      @HiveField(1) final String name,
      @HiveField(2) final String face}) = _$UpperImpl;
  const _Upper._() : super._();

  factory _Upper.fromJson(Map<String, dynamic> json) = _$UpperImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get face;

  /// Create a copy of Upper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpperImplCopyWith<_$UpperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
