// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_upper_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectsUpperDto _$CollectsUpperDtoFromJson(Map<String, dynamic> json) {
  return _CollectsUpperDto.fromJson(json);
}

/// @nodoc
mixin _$CollectsUpperDto {
  int? get mid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get face => throw _privateConstructorUsedError;
  bool? get followed => throw _privateConstructorUsedError;
  int? get vip_type => throw _privateConstructorUsedError;
  int? get vip_statue => throw _privateConstructorUsedError;

  /// Serializes this CollectsUpperDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsUpperDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsUpperDtoCopyWith<CollectsUpperDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsUpperDtoCopyWith<$Res> {
  factory $CollectsUpperDtoCopyWith(
          CollectsUpperDto value, $Res Function(CollectsUpperDto) then) =
      _$CollectsUpperDtoCopyWithImpl<$Res, CollectsUpperDto>;
  @useResult
  $Res call(
      {int? mid,
      String? name,
      String? face,
      bool? followed,
      int? vip_type,
      int? vip_statue});
}

/// @nodoc
class _$CollectsUpperDtoCopyWithImpl<$Res, $Val extends CollectsUpperDto>
    implements $CollectsUpperDtoCopyWith<$Res> {
  _$CollectsUpperDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsUpperDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? face = freezed,
    Object? followed = freezed,
    Object? vip_type = freezed,
    Object? vip_statue = freezed,
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
      followed: freezed == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool?,
      vip_type: freezed == vip_type
          ? _value.vip_type
          : vip_type // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_statue: freezed == vip_statue
          ? _value.vip_statue
          : vip_statue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectsUpperDtoImplCopyWith<$Res>
    implements $CollectsUpperDtoCopyWith<$Res> {
  factory _$$CollectsUpperDtoImplCopyWith(_$CollectsUpperDtoImpl value,
          $Res Function(_$CollectsUpperDtoImpl) then) =
      __$$CollectsUpperDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mid,
      String? name,
      String? face,
      bool? followed,
      int? vip_type,
      int? vip_statue});
}

/// @nodoc
class __$$CollectsUpperDtoImplCopyWithImpl<$Res>
    extends _$CollectsUpperDtoCopyWithImpl<$Res, _$CollectsUpperDtoImpl>
    implements _$$CollectsUpperDtoImplCopyWith<$Res> {
  __$$CollectsUpperDtoImplCopyWithImpl(_$CollectsUpperDtoImpl _value,
      $Res Function(_$CollectsUpperDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsUpperDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? name = freezed,
    Object? face = freezed,
    Object? followed = freezed,
    Object? vip_type = freezed,
    Object? vip_statue = freezed,
  }) {
    return _then(_$CollectsUpperDtoImpl(
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
      followed: freezed == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool?,
      vip_type: freezed == vip_type
          ? _value.vip_type
          : vip_type // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_statue: freezed == vip_statue
          ? _value.vip_statue
          : vip_statue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsUpperDtoImpl implements _CollectsUpperDto {
  const _$CollectsUpperDtoImpl(
      {this.mid,
      this.name,
      this.face,
      this.followed,
      this.vip_type,
      this.vip_statue});

  factory _$CollectsUpperDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsUpperDtoImplFromJson(json);

  @override
  final int? mid;
  @override
  final String? name;
  @override
  final String? face;
  @override
  final bool? followed;
  @override
  final int? vip_type;
  @override
  final int? vip_statue;

  @override
  String toString() {
    return 'CollectsUpperDto(mid: $mid, name: $name, face: $face, followed: $followed, vip_type: $vip_type, vip_statue: $vip_statue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsUpperDtoImpl &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.followed, followed) ||
                other.followed == followed) &&
            (identical(other.vip_type, vip_type) ||
                other.vip_type == vip_type) &&
            (identical(other.vip_statue, vip_statue) ||
                other.vip_statue == vip_statue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mid, name, face, followed, vip_type, vip_statue);

  /// Create a copy of CollectsUpperDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsUpperDtoImplCopyWith<_$CollectsUpperDtoImpl> get copyWith =>
      __$$CollectsUpperDtoImplCopyWithImpl<_$CollectsUpperDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsUpperDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectsUpperDto implements CollectsUpperDto {
  const factory _CollectsUpperDto(
      {final int? mid,
      final String? name,
      final String? face,
      final bool? followed,
      final int? vip_type,
      final int? vip_statue}) = _$CollectsUpperDtoImpl;

  factory _CollectsUpperDto.fromJson(Map<String, dynamic> json) =
      _$CollectsUpperDtoImpl.fromJson;

  @override
  int? get mid;
  @override
  String? get name;
  @override
  String? get face;
  @override
  bool? get followed;
  @override
  int? get vip_type;
  @override
  int? get vip_statue;

  /// Create a copy of CollectsUpperDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsUpperDtoImplCopyWith<_$CollectsUpperDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
