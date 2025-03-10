// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bili_series_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiliSeriesResponseDto _$BiliSeriesResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _BiliSeriesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$BiliSeriesResponseDto {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  BiliSeriesResponseDtoData? get data => throw _privateConstructorUsedError;

  /// Serializes this BiliSeriesResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeriesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeriesResponseDtoCopyWith<BiliSeriesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeriesResponseDtoCopyWith<$Res> {
  factory $BiliSeriesResponseDtoCopyWith(BiliSeriesResponseDto value,
          $Res Function(BiliSeriesResponseDto) then) =
      _$BiliSeriesResponseDtoCopyWithImpl<$Res, BiliSeriesResponseDto>;
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, BiliSeriesResponseDtoData? data});

  $BiliSeriesResponseDtoDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BiliSeriesResponseDtoCopyWithImpl<$Res,
        $Val extends BiliSeriesResponseDto>
    implements $BiliSeriesResponseDtoCopyWith<$Res> {
  _$BiliSeriesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeriesResponseDto
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
              as BiliSeriesResponseDtoData?,
    ) as $Val);
  }

  /// Create a copy of BiliSeriesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeriesResponseDtoDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BiliSeriesResponseDtoDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeriesResponseDtoImplCopyWith<$Res>
    implements $BiliSeriesResponseDtoCopyWith<$Res> {
  factory _$$BiliSeriesResponseDtoImplCopyWith(
          _$BiliSeriesResponseDtoImpl value,
          $Res Function(_$BiliSeriesResponseDtoImpl) then) =
      __$$BiliSeriesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, BiliSeriesResponseDtoData? data});

  @override
  $BiliSeriesResponseDtoDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BiliSeriesResponseDtoImplCopyWithImpl<$Res>
    extends _$BiliSeriesResponseDtoCopyWithImpl<$Res,
        _$BiliSeriesResponseDtoImpl>
    implements _$$BiliSeriesResponseDtoImplCopyWith<$Res> {
  __$$BiliSeriesResponseDtoImplCopyWithImpl(_$BiliSeriesResponseDtoImpl _value,
      $Res Function(_$BiliSeriesResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeriesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BiliSeriesResponseDtoImpl(
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
              as BiliSeriesResponseDtoData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeriesResponseDtoImpl implements _BiliSeriesResponseDto {
  const _$BiliSeriesResponseDtoImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$BiliSeriesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeriesResponseDtoImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final BiliSeriesResponseDtoData? data;

  @override
  String toString() {
    return 'BiliSeriesResponseDto(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeriesResponseDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of BiliSeriesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeriesResponseDtoImplCopyWith<_$BiliSeriesResponseDtoImpl>
      get copyWith => __$$BiliSeriesResponseDtoImplCopyWithImpl<
          _$BiliSeriesResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeriesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _BiliSeriesResponseDto implements BiliSeriesResponseDto {
  const factory _BiliSeriesResponseDto(
      {final int? code,
      final String? message,
      final int? ttl,
      final BiliSeriesResponseDtoData? data}) = _$BiliSeriesResponseDtoImpl;

  factory _BiliSeriesResponseDto.fromJson(Map<String, dynamic> json) =
      _$BiliSeriesResponseDtoImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  BiliSeriesResponseDtoData? get data;

  /// Create a copy of BiliSeriesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeriesResponseDtoImplCopyWith<_$BiliSeriesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliSeriesResponseDtoData _$BiliSeriesResponseDtoDataFromJson(
    Map<String, dynamic> json) {
  return _BiliSeriesResponseDtoData.fromJson(json);
}

/// @nodoc
mixin _$BiliSeriesResponseDtoData {
  List<int>? get aids => throw _privateConstructorUsedError;
  List<BiliSeasonsSeriesArchives>? get archives =>
      throw _privateConstructorUsedError;
  BiliSeriesResponseDtoPage? get page => throw _privateConstructorUsedError;

  /// Serializes this BiliSeriesResponseDtoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeriesResponseDtoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeriesResponseDtoDataCopyWith<BiliSeriesResponseDtoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeriesResponseDtoDataCopyWith<$Res> {
  factory $BiliSeriesResponseDtoDataCopyWith(BiliSeriesResponseDtoData value,
          $Res Function(BiliSeriesResponseDtoData) then) =
      _$BiliSeriesResponseDtoDataCopyWithImpl<$Res, BiliSeriesResponseDtoData>;
  @useResult
  $Res call(
      {List<int>? aids,
      List<BiliSeasonsSeriesArchives>? archives,
      BiliSeriesResponseDtoPage? page});

  $BiliSeriesResponseDtoPageCopyWith<$Res>? get page;
}

/// @nodoc
class _$BiliSeriesResponseDtoDataCopyWithImpl<$Res,
        $Val extends BiliSeriesResponseDtoData>
    implements $BiliSeriesResponseDtoDataCopyWith<$Res> {
  _$BiliSeriesResponseDtoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeriesResponseDtoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aids = freezed,
    Object? archives = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      aids: freezed == aids
          ? _value.aids
          : aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      archives: freezed == archives
          ? _value.archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliSeriesResponseDtoPage?,
    ) as $Val);
  }

  /// Create a copy of BiliSeriesResponseDtoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeriesResponseDtoPageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $BiliSeriesResponseDtoPageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeriesResponseDtoDataImplCopyWith<$Res>
    implements $BiliSeriesResponseDtoDataCopyWith<$Res> {
  factory _$$BiliSeriesResponseDtoDataImplCopyWith(
          _$BiliSeriesResponseDtoDataImpl value,
          $Res Function(_$BiliSeriesResponseDtoDataImpl) then) =
      __$$BiliSeriesResponseDtoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? aids,
      List<BiliSeasonsSeriesArchives>? archives,
      BiliSeriesResponseDtoPage? page});

  @override
  $BiliSeriesResponseDtoPageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$BiliSeriesResponseDtoDataImplCopyWithImpl<$Res>
    extends _$BiliSeriesResponseDtoDataCopyWithImpl<$Res,
        _$BiliSeriesResponseDtoDataImpl>
    implements _$$BiliSeriesResponseDtoDataImplCopyWith<$Res> {
  __$$BiliSeriesResponseDtoDataImplCopyWithImpl(
      _$BiliSeriesResponseDtoDataImpl _value,
      $Res Function(_$BiliSeriesResponseDtoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeriesResponseDtoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aids = freezed,
    Object? archives = freezed,
    Object? page = freezed,
  }) {
    return _then(_$BiliSeriesResponseDtoDataImpl(
      aids: freezed == aids
          ? _value._aids
          : aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      archives: freezed == archives
          ? _value._archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliSeriesResponseDtoPage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeriesResponseDtoDataImpl implements _BiliSeriesResponseDtoData {
  const _$BiliSeriesResponseDtoDataImpl(
      {final List<int>? aids,
      final List<BiliSeasonsSeriesArchives>? archives,
      this.page})
      : _aids = aids,
        _archives = archives;

  factory _$BiliSeriesResponseDtoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeriesResponseDtoDataImplFromJson(json);

  final List<int>? _aids;
  @override
  List<int>? get aids {
    final value = _aids;
    if (value == null) return null;
    if (_aids is EqualUnmodifiableListView) return _aids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BiliSeasonsSeriesArchives>? _archives;
  @override
  List<BiliSeasonsSeriesArchives>? get archives {
    final value = _archives;
    if (value == null) return null;
    if (_archives is EqualUnmodifiableListView) return _archives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BiliSeriesResponseDtoPage? page;

  @override
  String toString() {
    return 'BiliSeriesResponseDtoData(aids: $aids, archives: $archives, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeriesResponseDtoDataImpl &&
            const DeepCollectionEquality().equals(other._aids, _aids) &&
            const DeepCollectionEquality().equals(other._archives, _archives) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_aids),
      const DeepCollectionEquality().hash(_archives),
      page);

  /// Create a copy of BiliSeriesResponseDtoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeriesResponseDtoDataImplCopyWith<_$BiliSeriesResponseDtoDataImpl>
      get copyWith => __$$BiliSeriesResponseDtoDataImplCopyWithImpl<
          _$BiliSeriesResponseDtoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeriesResponseDtoDataImplToJson(
      this,
    );
  }
}

abstract class _BiliSeriesResponseDtoData implements BiliSeriesResponseDtoData {
  const factory _BiliSeriesResponseDtoData(
      {final List<int>? aids,
      final List<BiliSeasonsSeriesArchives>? archives,
      final BiliSeriesResponseDtoPage? page}) = _$BiliSeriesResponseDtoDataImpl;

  factory _BiliSeriesResponseDtoData.fromJson(Map<String, dynamic> json) =
      _$BiliSeriesResponseDtoDataImpl.fromJson;

  @override
  List<int>? get aids;
  @override
  List<BiliSeasonsSeriesArchives>? get archives;
  @override
  BiliSeriesResponseDtoPage? get page;

  /// Create a copy of BiliSeriesResponseDtoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeriesResponseDtoDataImplCopyWith<_$BiliSeriesResponseDtoDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliSeriesResponseDtoPage _$BiliSeriesResponseDtoPageFromJson(
    Map<String, dynamic> json) {
  return _BiliSeriesResponseDtoPage.fromJson(json);
}

/// @nodoc
mixin _$BiliSeriesResponseDtoPage {
  int? get num => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this BiliSeriesResponseDtoPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeriesResponseDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeriesResponseDtoPageCopyWith<BiliSeriesResponseDtoPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeriesResponseDtoPageCopyWith<$Res> {
  factory $BiliSeriesResponseDtoPageCopyWith(BiliSeriesResponseDtoPage value,
          $Res Function(BiliSeriesResponseDtoPage) then) =
      _$BiliSeriesResponseDtoPageCopyWithImpl<$Res, BiliSeriesResponseDtoPage>;
  @useResult
  $Res call({int? num, int? size, int? total});
}

/// @nodoc
class _$BiliSeriesResponseDtoPageCopyWithImpl<$Res,
        $Val extends BiliSeriesResponseDtoPage>
    implements $BiliSeriesResponseDtoPageCopyWith<$Res> {
  _$BiliSeriesResponseDtoPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeriesResponseDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = freezed,
    Object? size = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiliSeriesResponseDtoPageImplCopyWith<$Res>
    implements $BiliSeriesResponseDtoPageCopyWith<$Res> {
  factory _$$BiliSeriesResponseDtoPageImplCopyWith(
          _$BiliSeriesResponseDtoPageImpl value,
          $Res Function(_$BiliSeriesResponseDtoPageImpl) then) =
      __$$BiliSeriesResponseDtoPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? num, int? size, int? total});
}

/// @nodoc
class __$$BiliSeriesResponseDtoPageImplCopyWithImpl<$Res>
    extends _$BiliSeriesResponseDtoPageCopyWithImpl<$Res,
        _$BiliSeriesResponseDtoPageImpl>
    implements _$$BiliSeriesResponseDtoPageImplCopyWith<$Res> {
  __$$BiliSeriesResponseDtoPageImplCopyWithImpl(
      _$BiliSeriesResponseDtoPageImpl _value,
      $Res Function(_$BiliSeriesResponseDtoPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeriesResponseDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = freezed,
    Object? size = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BiliSeriesResponseDtoPageImpl(
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
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
class _$BiliSeriesResponseDtoPageImpl implements _BiliSeriesResponseDtoPage {
  const _$BiliSeriesResponseDtoPageImpl({this.num, this.size, this.total});

  factory _$BiliSeriesResponseDtoPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeriesResponseDtoPageImplFromJson(json);

  @override
  final int? num;
  @override
  final int? size;
  @override
  final int? total;

  @override
  String toString() {
    return 'BiliSeriesResponseDtoPage(num: $num, size: $size, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeriesResponseDtoPageImpl &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, num, size, total);

  /// Create a copy of BiliSeriesResponseDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeriesResponseDtoPageImplCopyWith<_$BiliSeriesResponseDtoPageImpl>
      get copyWith => __$$BiliSeriesResponseDtoPageImplCopyWithImpl<
          _$BiliSeriesResponseDtoPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeriesResponseDtoPageImplToJson(
      this,
    );
  }
}

abstract class _BiliSeriesResponseDtoPage implements BiliSeriesResponseDtoPage {
  const factory _BiliSeriesResponseDtoPage(
      {final int? num,
      final int? size,
      final int? total}) = _$BiliSeriesResponseDtoPageImpl;

  factory _BiliSeriesResponseDtoPage.fromJson(Map<String, dynamic> json) =
      _$BiliSeriesResponseDtoPageImpl.fromJson;

  @override
  int? get num;
  @override
  int? get size;
  @override
  int? get total;

  /// Create a copy of BiliSeriesResponseDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeriesResponseDtoPageImplCopyWith<_$BiliSeriesResponseDtoPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
