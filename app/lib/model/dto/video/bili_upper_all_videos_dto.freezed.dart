// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bili_upper_all_videos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiliUpperAllVideosDto _$BiliUpperAllVideosDtoFromJson(
    Map<String, dynamic> json) {
  return _BiliUpperAllVideosDto.fromJson(json);
}

/// @nodoc
mixin _$BiliUpperAllVideosDto {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  BiliUpperAllVideosDtoData? get data => throw _privateConstructorUsedError;

  /// Serializes this BiliUpperAllVideosDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliUpperAllVideosDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliUpperAllVideosDtoCopyWith<BiliUpperAllVideosDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliUpperAllVideosDtoCopyWith<$Res> {
  factory $BiliUpperAllVideosDtoCopyWith(BiliUpperAllVideosDto value,
          $Res Function(BiliUpperAllVideosDto) then) =
      _$BiliUpperAllVideosDtoCopyWithImpl<$Res, BiliUpperAllVideosDto>;
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, BiliUpperAllVideosDtoData? data});

  $BiliUpperAllVideosDtoDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BiliUpperAllVideosDtoCopyWithImpl<$Res,
        $Val extends BiliUpperAllVideosDto>
    implements $BiliUpperAllVideosDtoCopyWith<$Res> {
  _$BiliUpperAllVideosDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliUpperAllVideosDto
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
              as BiliUpperAllVideosDtoData?,
    ) as $Val);
  }

  /// Create a copy of BiliUpperAllVideosDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliUpperAllVideosDtoDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BiliUpperAllVideosDtoDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliUpperAllVideosDtoImplCopyWith<$Res>
    implements $BiliUpperAllVideosDtoCopyWith<$Res> {
  factory _$$BiliUpperAllVideosDtoImplCopyWith(
          _$BiliUpperAllVideosDtoImpl value,
          $Res Function(_$BiliUpperAllVideosDtoImpl) then) =
      __$$BiliUpperAllVideosDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, BiliUpperAllVideosDtoData? data});

  @override
  $BiliUpperAllVideosDtoDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BiliUpperAllVideosDtoImplCopyWithImpl<$Res>
    extends _$BiliUpperAllVideosDtoCopyWithImpl<$Res,
        _$BiliUpperAllVideosDtoImpl>
    implements _$$BiliUpperAllVideosDtoImplCopyWith<$Res> {
  __$$BiliUpperAllVideosDtoImplCopyWithImpl(_$BiliUpperAllVideosDtoImpl _value,
      $Res Function(_$BiliUpperAllVideosDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliUpperAllVideosDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BiliUpperAllVideosDtoImpl(
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
              as BiliUpperAllVideosDtoData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliUpperAllVideosDtoImpl
    with DiagnosticableTreeMixin
    implements _BiliUpperAllVideosDto {
  const _$BiliUpperAllVideosDtoImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$BiliUpperAllVideosDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliUpperAllVideosDtoImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final BiliUpperAllVideosDtoData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliUpperAllVideosDto(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliUpperAllVideosDto'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliUpperAllVideosDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of BiliUpperAllVideosDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliUpperAllVideosDtoImplCopyWith<_$BiliUpperAllVideosDtoImpl>
      get copyWith => __$$BiliUpperAllVideosDtoImplCopyWithImpl<
          _$BiliUpperAllVideosDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliUpperAllVideosDtoImplToJson(
      this,
    );
  }
}

abstract class _BiliUpperAllVideosDto implements BiliUpperAllVideosDto {
  const factory _BiliUpperAllVideosDto(
      {final int? code,
      final String? message,
      final int? ttl,
      final BiliUpperAllVideosDtoData? data}) = _$BiliUpperAllVideosDtoImpl;

  factory _BiliUpperAllVideosDto.fromJson(Map<String, dynamic> json) =
      _$BiliUpperAllVideosDtoImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  BiliUpperAllVideosDtoData? get data;

  /// Create a copy of BiliUpperAllVideosDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliUpperAllVideosDtoImplCopyWith<_$BiliUpperAllVideosDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliUpperAllVideosDtoData _$BiliUpperAllVideosDtoDataFromJson(
    Map<String, dynamic> json) {
  return _BiliUpperAllVideosDtoData.fromJson(json);
}

/// @nodoc
mixin _$BiliUpperAllVideosDtoData {
  List<BiliSeasonsSeriesArchives>? get archives =>
      throw _privateConstructorUsedError;
  BiliUpperAllVideosDtoPage? get page => throw _privateConstructorUsedError;

  /// Serializes this BiliUpperAllVideosDtoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliUpperAllVideosDtoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliUpperAllVideosDtoDataCopyWith<BiliUpperAllVideosDtoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliUpperAllVideosDtoDataCopyWith<$Res> {
  factory $BiliUpperAllVideosDtoDataCopyWith(BiliUpperAllVideosDtoData value,
          $Res Function(BiliUpperAllVideosDtoData) then) =
      _$BiliUpperAllVideosDtoDataCopyWithImpl<$Res, BiliUpperAllVideosDtoData>;
  @useResult
  $Res call(
      {List<BiliSeasonsSeriesArchives>? archives,
      BiliUpperAllVideosDtoPage? page});

  $BiliUpperAllVideosDtoPageCopyWith<$Res>? get page;
}

/// @nodoc
class _$BiliUpperAllVideosDtoDataCopyWithImpl<$Res,
        $Val extends BiliUpperAllVideosDtoData>
    implements $BiliUpperAllVideosDtoDataCopyWith<$Res> {
  _$BiliUpperAllVideosDtoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliUpperAllVideosDtoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archives = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      archives: freezed == archives
          ? _value.archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliUpperAllVideosDtoPage?,
    ) as $Val);
  }

  /// Create a copy of BiliUpperAllVideosDtoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliUpperAllVideosDtoPageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $BiliUpperAllVideosDtoPageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliUpperAllVideosDtoDataImplCopyWith<$Res>
    implements $BiliUpperAllVideosDtoDataCopyWith<$Res> {
  factory _$$BiliUpperAllVideosDtoDataImplCopyWith(
          _$BiliUpperAllVideosDtoDataImpl value,
          $Res Function(_$BiliUpperAllVideosDtoDataImpl) then) =
      __$$BiliUpperAllVideosDtoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BiliSeasonsSeriesArchives>? archives,
      BiliUpperAllVideosDtoPage? page});

  @override
  $BiliUpperAllVideosDtoPageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$BiliUpperAllVideosDtoDataImplCopyWithImpl<$Res>
    extends _$BiliUpperAllVideosDtoDataCopyWithImpl<$Res,
        _$BiliUpperAllVideosDtoDataImpl>
    implements _$$BiliUpperAllVideosDtoDataImplCopyWith<$Res> {
  __$$BiliUpperAllVideosDtoDataImplCopyWithImpl(
      _$BiliUpperAllVideosDtoDataImpl _value,
      $Res Function(_$BiliUpperAllVideosDtoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliUpperAllVideosDtoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archives = freezed,
    Object? page = freezed,
  }) {
    return _then(_$BiliUpperAllVideosDtoDataImpl(
      archives: freezed == archives
          ? _value._archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliUpperAllVideosDtoPage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliUpperAllVideosDtoDataImpl
    with DiagnosticableTreeMixin
    implements _BiliUpperAllVideosDtoData {
  const _$BiliUpperAllVideosDtoDataImpl(
      {final List<BiliSeasonsSeriesArchives>? archives, this.page})
      : _archives = archives;

  factory _$BiliUpperAllVideosDtoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliUpperAllVideosDtoDataImplFromJson(json);

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
  final BiliUpperAllVideosDtoPage? page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliUpperAllVideosDtoData(archives: $archives, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliUpperAllVideosDtoData'))
      ..add(DiagnosticsProperty('archives', archives))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliUpperAllVideosDtoDataImpl &&
            const DeepCollectionEquality().equals(other._archives, _archives) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_archives), page);

  /// Create a copy of BiliUpperAllVideosDtoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliUpperAllVideosDtoDataImplCopyWith<_$BiliUpperAllVideosDtoDataImpl>
      get copyWith => __$$BiliUpperAllVideosDtoDataImplCopyWithImpl<
          _$BiliUpperAllVideosDtoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliUpperAllVideosDtoDataImplToJson(
      this,
    );
  }
}

abstract class _BiliUpperAllVideosDtoData implements BiliUpperAllVideosDtoData {
  const factory _BiliUpperAllVideosDtoData(
      {final List<BiliSeasonsSeriesArchives>? archives,
      final BiliUpperAllVideosDtoPage? page}) = _$BiliUpperAllVideosDtoDataImpl;

  factory _BiliUpperAllVideosDtoData.fromJson(Map<String, dynamic> json) =
      _$BiliUpperAllVideosDtoDataImpl.fromJson;

  @override
  List<BiliSeasonsSeriesArchives>? get archives;
  @override
  BiliUpperAllVideosDtoPage? get page;

  /// Create a copy of BiliUpperAllVideosDtoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliUpperAllVideosDtoDataImplCopyWith<_$BiliUpperAllVideosDtoDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliUpperAllVideosDtoPage _$BiliUpperAllVideosDtoPageFromJson(
    Map<String, dynamic> json) {
  return _BiliUpperAllVideosDtoPage.fromJson(json);
}

/// @nodoc
mixin _$BiliUpperAllVideosDtoPage {
  int? get num => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this BiliUpperAllVideosDtoPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliUpperAllVideosDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliUpperAllVideosDtoPageCopyWith<BiliUpperAllVideosDtoPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliUpperAllVideosDtoPageCopyWith<$Res> {
  factory $BiliUpperAllVideosDtoPageCopyWith(BiliUpperAllVideosDtoPage value,
          $Res Function(BiliUpperAllVideosDtoPage) then) =
      _$BiliUpperAllVideosDtoPageCopyWithImpl<$Res, BiliUpperAllVideosDtoPage>;
  @useResult
  $Res call({int? num, int? size, int? total});
}

/// @nodoc
class _$BiliUpperAllVideosDtoPageCopyWithImpl<$Res,
        $Val extends BiliUpperAllVideosDtoPage>
    implements $BiliUpperAllVideosDtoPageCopyWith<$Res> {
  _$BiliUpperAllVideosDtoPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliUpperAllVideosDtoPage
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
abstract class _$$BiliUpperAllVideosDtoPageImplCopyWith<$Res>
    implements $BiliUpperAllVideosDtoPageCopyWith<$Res> {
  factory _$$BiliUpperAllVideosDtoPageImplCopyWith(
          _$BiliUpperAllVideosDtoPageImpl value,
          $Res Function(_$BiliUpperAllVideosDtoPageImpl) then) =
      __$$BiliUpperAllVideosDtoPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? num, int? size, int? total});
}

/// @nodoc
class __$$BiliUpperAllVideosDtoPageImplCopyWithImpl<$Res>
    extends _$BiliUpperAllVideosDtoPageCopyWithImpl<$Res,
        _$BiliUpperAllVideosDtoPageImpl>
    implements _$$BiliUpperAllVideosDtoPageImplCopyWith<$Res> {
  __$$BiliUpperAllVideosDtoPageImplCopyWithImpl(
      _$BiliUpperAllVideosDtoPageImpl _value,
      $Res Function(_$BiliUpperAllVideosDtoPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliUpperAllVideosDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = freezed,
    Object? size = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BiliUpperAllVideosDtoPageImpl(
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
class _$BiliUpperAllVideosDtoPageImpl
    with DiagnosticableTreeMixin
    implements _BiliUpperAllVideosDtoPage {
  const _$BiliUpperAllVideosDtoPageImpl({this.num, this.size, this.total});

  factory _$BiliUpperAllVideosDtoPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliUpperAllVideosDtoPageImplFromJson(json);

  @override
  final int? num;
  @override
  final int? size;
  @override
  final int? total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliUpperAllVideosDtoPage(num: $num, size: $size, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliUpperAllVideosDtoPage'))
      ..add(DiagnosticsProperty('num', num))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliUpperAllVideosDtoPageImpl &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, num, size, total);

  /// Create a copy of BiliUpperAllVideosDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliUpperAllVideosDtoPageImplCopyWith<_$BiliUpperAllVideosDtoPageImpl>
      get copyWith => __$$BiliUpperAllVideosDtoPageImplCopyWithImpl<
          _$BiliUpperAllVideosDtoPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliUpperAllVideosDtoPageImplToJson(
      this,
    );
  }
}

abstract class _BiliUpperAllVideosDtoPage implements BiliUpperAllVideosDtoPage {
  const factory _BiliUpperAllVideosDtoPage(
      {final int? num,
      final int? size,
      final int? total}) = _$BiliUpperAllVideosDtoPageImpl;

  factory _BiliUpperAllVideosDtoPage.fromJson(Map<String, dynamic> json) =
      _$BiliUpperAllVideosDtoPageImpl.fromJson;

  @override
  int? get num;
  @override
  int? get size;
  @override
  int? get total;

  /// Create a copy of BiliUpperAllVideosDtoPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliUpperAllVideosDtoPageImplCopyWith<_$BiliUpperAllVideosDtoPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
