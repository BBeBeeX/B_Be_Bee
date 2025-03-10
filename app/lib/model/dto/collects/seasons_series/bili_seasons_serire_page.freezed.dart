// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bili_seasons_serire_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiliSeasonsSerirePage _$BiliSeasonsSerirePageFromJson(
    Map<String, dynamic> json) {
  return _SeasonResponsePage.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsSerirePage {
  int? get page_num => throw _privateConstructorUsedError;
  int? get page_size => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsSerirePage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsSerirePage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsSerirePageCopyWith<BiliSeasonsSerirePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsSerirePageCopyWith<$Res> {
  factory $BiliSeasonsSerirePageCopyWith(BiliSeasonsSerirePage value,
          $Res Function(BiliSeasonsSerirePage) then) =
      _$BiliSeasonsSerirePageCopyWithImpl<$Res, BiliSeasonsSerirePage>;
  @useResult
  $Res call({int? page_num, int? page_size, int? total});
}

/// @nodoc
class _$BiliSeasonsSerirePageCopyWithImpl<$Res,
        $Val extends BiliSeasonsSerirePage>
    implements $BiliSeasonsSerirePageCopyWith<$Res> {
  _$BiliSeasonsSerirePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsSerirePage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page_num = freezed,
    Object? page_size = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      page_num: freezed == page_num
          ? _value.page_num
          : page_num // ignore: cast_nullable_to_non_nullable
              as int?,
      page_size: freezed == page_size
          ? _value.page_size
          : page_size // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonResponsePageImplCopyWith<$Res>
    implements $BiliSeasonsSerirePageCopyWith<$Res> {
  factory _$$SeasonResponsePageImplCopyWith(_$SeasonResponsePageImpl value,
          $Res Function(_$SeasonResponsePageImpl) then) =
      __$$SeasonResponsePageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page_num, int? page_size, int? total});
}

/// @nodoc
class __$$SeasonResponsePageImplCopyWithImpl<$Res>
    extends _$BiliSeasonsSerirePageCopyWithImpl<$Res, _$SeasonResponsePageImpl>
    implements _$$SeasonResponsePageImplCopyWith<$Res> {
  __$$SeasonResponsePageImplCopyWithImpl(_$SeasonResponsePageImpl _value,
      $Res Function(_$SeasonResponsePageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsSerirePage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page_num = freezed,
    Object? page_size = freezed,
    Object? total = freezed,
  }) {
    return _then(_$SeasonResponsePageImpl(
      page_num: freezed == page_num
          ? _value.page_num
          : page_num // ignore: cast_nullable_to_non_nullable
              as int?,
      page_size: freezed == page_size
          ? _value.page_size
          : page_size // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonResponsePageImpl implements _SeasonResponsePage {
  const _$SeasonResponsePageImpl({this.page_num, this.page_size, this.total});

  factory _$SeasonResponsePageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonResponsePageImplFromJson(json);

  @override
  final int? page_num;
  @override
  final int? page_size;
  @override
  final int? total;

  @override
  String toString() {
    return 'BiliSeasonsSerirePage(page_num: $page_num, page_size: $page_size, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonResponsePageImpl &&
            (identical(other.page_num, page_num) ||
                other.page_num == page_num) &&
            (identical(other.page_size, page_size) ||
                other.page_size == page_size) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page_num, page_size, total);

  /// Create a copy of BiliSeasonsSerirePage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonResponsePageImplCopyWith<_$SeasonResponsePageImpl> get copyWith =>
      __$$SeasonResponsePageImplCopyWithImpl<_$SeasonResponsePageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonResponsePageImplToJson(
      this,
    );
  }
}

abstract class _SeasonResponsePage implements BiliSeasonsSerirePage {
  const factory _SeasonResponsePage(
      {final int? page_num,
      final int? page_size,
      final int? total}) = _$SeasonResponsePageImpl;

  factory _SeasonResponsePage.fromJson(Map<String, dynamic> json) =
      _$SeasonResponsePageImpl.fromJson;

  @override
  int? get page_num;
  @override
  int? get page_size;
  @override
  int? get total;

  /// Create a copy of BiliSeasonsSerirePage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonResponsePageImplCopyWith<_$SeasonResponsePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
