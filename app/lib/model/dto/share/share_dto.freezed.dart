// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShareDto _$ShareDtoFromJson(Map<String, dynamic> json) {
  return _ShareDto.fromJson(json);
}

/// @nodoc
mixin _$ShareDto {
  String get id => throw _privateConstructorUsedError;
  ShareTypeEnum get type => throw _privateConstructorUsedError;

  /// Serializes this ShareDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShareDtoCopyWith<ShareDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareDtoCopyWith<$Res> {
  factory $ShareDtoCopyWith(ShareDto value, $Res Function(ShareDto) then) =
      _$ShareDtoCopyWithImpl<$Res, ShareDto>;
  @useResult
  $Res call({String id, ShareTypeEnum type});
}

/// @nodoc
class _$ShareDtoCopyWithImpl<$Res, $Val extends ShareDto>
    implements $ShareDtoCopyWith<$Res> {
  _$ShareDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShareTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareDtoImplCopyWith<$Res>
    implements $ShareDtoCopyWith<$Res> {
  factory _$$ShareDtoImplCopyWith(
          _$ShareDtoImpl value, $Res Function(_$ShareDtoImpl) then) =
      __$$ShareDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, ShareTypeEnum type});
}

/// @nodoc
class __$$ShareDtoImplCopyWithImpl<$Res>
    extends _$ShareDtoCopyWithImpl<$Res, _$ShareDtoImpl>
    implements _$$ShareDtoImplCopyWith<$Res> {
  __$$ShareDtoImplCopyWithImpl(
      _$ShareDtoImpl _value, $Res Function(_$ShareDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$ShareDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ShareTypeEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShareDtoImpl implements _ShareDto {
  const _$ShareDtoImpl({required this.id, required this.type});

  factory _$ShareDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShareDtoImplFromJson(json);

  @override
  final String id;
  @override
  final ShareTypeEnum type;

  @override
  String toString() {
    return 'ShareDto(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareDtoImplCopyWith<_$ShareDtoImpl> get copyWith =>
      __$$ShareDtoImplCopyWithImpl<_$ShareDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShareDtoImplToJson(
      this,
    );
  }
}

abstract class _ShareDto implements ShareDto {
  const factory _ShareDto(
      {required final String id,
      required final ShareTypeEnum type}) = _$ShareDtoImpl;

  factory _ShareDto.fromJson(Map<String, dynamic> json) =
      _$ShareDtoImpl.fromJson;

  @override
  String get id;
  @override
  ShareTypeEnum get type;

  /// Create a copy of ShareDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareDtoImplCopyWith<_$ShareDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
