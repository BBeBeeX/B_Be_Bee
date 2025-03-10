// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_cnt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectsCntDto _$CollectsCntDtoFromJson(Map<String, dynamic> json) {
  return _CollectsCntDto.fromJson(json);
}

/// @nodoc
mixin _$CollectsCntDto {
  int? get collect => throw _privateConstructorUsedError;
  int? get play => throw _privateConstructorUsedError;
  int? get thumb_up => throw _privateConstructorUsedError;
  int? get share => throw _privateConstructorUsedError;

  /// Serializes this CollectsCntDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsCntDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsCntDtoCopyWith<CollectsCntDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsCntDtoCopyWith<$Res> {
  factory $CollectsCntDtoCopyWith(
          CollectsCntDto value, $Res Function(CollectsCntDto) then) =
      _$CollectsCntDtoCopyWithImpl<$Res, CollectsCntDto>;
  @useResult
  $Res call({int? collect, int? play, int? thumb_up, int? share});
}

/// @nodoc
class _$CollectsCntDtoCopyWithImpl<$Res, $Val extends CollectsCntDto>
    implements $CollectsCntDtoCopyWith<$Res> {
  _$CollectsCntDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsCntDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collect = freezed,
    Object? play = freezed,
    Object? thumb_up = freezed,
    Object? share = freezed,
  }) {
    return _then(_value.copyWith(
      collect: freezed == collect
          ? _value.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as int?,
      play: freezed == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as int?,
      thumb_up: freezed == thumb_up
          ? _value.thumb_up
          : thumb_up // ignore: cast_nullable_to_non_nullable
              as int?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectsCntDtoImplCopyWith<$Res>
    implements $CollectsCntDtoCopyWith<$Res> {
  factory _$$CollectsCntDtoImplCopyWith(_$CollectsCntDtoImpl value,
          $Res Function(_$CollectsCntDtoImpl) then) =
      __$$CollectsCntDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? collect, int? play, int? thumb_up, int? share});
}

/// @nodoc
class __$$CollectsCntDtoImplCopyWithImpl<$Res>
    extends _$CollectsCntDtoCopyWithImpl<$Res, _$CollectsCntDtoImpl>
    implements _$$CollectsCntDtoImplCopyWith<$Res> {
  __$$CollectsCntDtoImplCopyWithImpl(
      _$CollectsCntDtoImpl _value, $Res Function(_$CollectsCntDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsCntDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collect = freezed,
    Object? play = freezed,
    Object? thumb_up = freezed,
    Object? share = freezed,
  }) {
    return _then(_$CollectsCntDtoImpl(
      collect: freezed == collect
          ? _value.collect
          : collect // ignore: cast_nullable_to_non_nullable
              as int?,
      play: freezed == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as int?,
      thumb_up: freezed == thumb_up
          ? _value.thumb_up
          : thumb_up // ignore: cast_nullable_to_non_nullable
              as int?,
      share: freezed == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsCntDtoImpl implements _CollectsCntDto {
  const _$CollectsCntDtoImpl(
      {this.collect, this.play, this.thumb_up, this.share});

  factory _$CollectsCntDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsCntDtoImplFromJson(json);

  @override
  final int? collect;
  @override
  final int? play;
  @override
  final int? thumb_up;
  @override
  final int? share;

  @override
  String toString() {
    return 'CollectsCntDto(collect: $collect, play: $play, thumb_up: $thumb_up, share: $share)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsCntDtoImpl &&
            (identical(other.collect, collect) || other.collect == collect) &&
            (identical(other.play, play) || other.play == play) &&
            (identical(other.thumb_up, thumb_up) ||
                other.thumb_up == thumb_up) &&
            (identical(other.share, share) || other.share == share));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, collect, play, thumb_up, share);

  /// Create a copy of CollectsCntDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsCntDtoImplCopyWith<_$CollectsCntDtoImpl> get copyWith =>
      __$$CollectsCntDtoImplCopyWithImpl<_$CollectsCntDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsCntDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectsCntDto implements CollectsCntDto {
  const factory _CollectsCntDto(
      {final int? collect,
      final int? play,
      final int? thumb_up,
      final int? share}) = _$CollectsCntDtoImpl;

  factory _CollectsCntDto.fromJson(Map<String, dynamic> json) =
      _$CollectsCntDtoImpl.fromJson;

  @override
  int? get collect;
  @override
  int? get play;
  @override
  int? get thumb_up;
  @override
  int? get share;

  /// Create a copy of CollectsCntDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsCntDtoImplCopyWith<_$CollectsCntDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
