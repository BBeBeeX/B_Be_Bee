// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collects_list_all_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectsListAllDto _$CollectsListAllDtoFromJson(Map<String, dynamic> json) {
  return _CollectsListAllDto.fromJson(json);
}

/// @nodoc
mixin _$CollectsListAllDto {
  int? get count => throw _privateConstructorUsedError;
  List<CollectsDataDto>? get list => throw _privateConstructorUsedError;

  /// Serializes this CollectsListAllDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectsListAllDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectsListAllDtoCopyWith<CollectsListAllDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectsListAllDtoCopyWith<$Res> {
  factory $CollectsListAllDtoCopyWith(
          CollectsListAllDto value, $Res Function(CollectsListAllDto) then) =
      _$CollectsListAllDtoCopyWithImpl<$Res, CollectsListAllDto>;
  @useResult
  $Res call({int? count, List<CollectsDataDto>? list});
}

/// @nodoc
class _$CollectsListAllDtoCopyWithImpl<$Res, $Val extends CollectsListAllDto>
    implements $CollectsListAllDtoCopyWith<$Res> {
  _$CollectsListAllDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectsListAllDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CollectsDataDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectsListAllDtoImplCopyWith<$Res>
    implements $CollectsListAllDtoCopyWith<$Res> {
  factory _$$CollectsListAllDtoImplCopyWith(_$CollectsListAllDtoImpl value,
          $Res Function(_$CollectsListAllDtoImpl) then) =
      __$$CollectsListAllDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<CollectsDataDto>? list});
}

/// @nodoc
class __$$CollectsListAllDtoImplCopyWithImpl<$Res>
    extends _$CollectsListAllDtoCopyWithImpl<$Res, _$CollectsListAllDtoImpl>
    implements _$$CollectsListAllDtoImplCopyWith<$Res> {
  __$$CollectsListAllDtoImplCopyWithImpl(_$CollectsListAllDtoImpl _value,
      $Res Function(_$CollectsListAllDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectsListAllDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? list = freezed,
  }) {
    return _then(_$CollectsListAllDtoImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CollectsDataDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectsListAllDtoImpl implements _CollectsListAllDto {
  const _$CollectsListAllDtoImpl(
      {this.count, final List<CollectsDataDto>? list})
      : _list = list;

  factory _$CollectsListAllDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectsListAllDtoImplFromJson(json);

  @override
  final int? count;
  final List<CollectsDataDto>? _list;
  @override
  List<CollectsDataDto>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollectsListAllDto(count: $count, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectsListAllDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_list));

  /// Create a copy of CollectsListAllDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectsListAllDtoImplCopyWith<_$CollectsListAllDtoImpl> get copyWith =>
      __$$CollectsListAllDtoImplCopyWithImpl<_$CollectsListAllDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectsListAllDtoImplToJson(
      this,
    );
  }
}

abstract class _CollectsListAllDto implements CollectsListAllDto {
  const factory _CollectsListAllDto(
      {final int? count,
      final List<CollectsDataDto>? list}) = _$CollectsListAllDtoImpl;

  factory _CollectsListAllDto.fromJson(Map<String, dynamic> json) =
      _$CollectsListAllDtoImpl.fromJson;

  @override
  int? get count;
  @override
  List<CollectsDataDto>? get list;

  /// Create a copy of CollectsListAllDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectsListAllDtoImplCopyWith<_$CollectsListAllDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
