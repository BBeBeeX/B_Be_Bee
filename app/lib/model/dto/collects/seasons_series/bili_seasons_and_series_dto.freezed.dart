// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bili_seasons_and_series_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiliSeasonsAndSeriesDto _$BiliSeasonsAndSeriesDtoFromJson(
    Map<String, dynamic> json) {
  return _BiliSeasonsAndSeriesDto.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsAndSeriesDto {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  BiliSeasonsAndSeriesDtoData? get data => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsAndSeriesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsAndSeriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsAndSeriesDtoCopyWith<BiliSeasonsAndSeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsAndSeriesDtoCopyWith<$Res> {
  factory $BiliSeasonsAndSeriesDtoCopyWith(BiliSeasonsAndSeriesDto value,
          $Res Function(BiliSeasonsAndSeriesDto) then) =
      _$BiliSeasonsAndSeriesDtoCopyWithImpl<$Res, BiliSeasonsAndSeriesDto>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      int? ttl,
      BiliSeasonsAndSeriesDtoData? data});

  $BiliSeasonsAndSeriesDtoDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BiliSeasonsAndSeriesDtoCopyWithImpl<$Res,
        $Val extends BiliSeasonsAndSeriesDto>
    implements $BiliSeasonsAndSeriesDtoCopyWith<$Res> {
  _$BiliSeasonsAndSeriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsAndSeriesDto
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
              as BiliSeasonsAndSeriesDtoData?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonsAndSeriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonsAndSeriesDtoDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BiliSeasonsAndSeriesDtoDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeasonsAndSeriesDtoImplCopyWith<$Res>
    implements $BiliSeasonsAndSeriesDtoCopyWith<$Res> {
  factory _$$BiliSeasonsAndSeriesDtoImplCopyWith(
          _$BiliSeasonsAndSeriesDtoImpl value,
          $Res Function(_$BiliSeasonsAndSeriesDtoImpl) then) =
      __$$BiliSeasonsAndSeriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      int? ttl,
      BiliSeasonsAndSeriesDtoData? data});

  @override
  $BiliSeasonsAndSeriesDtoDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BiliSeasonsAndSeriesDtoImplCopyWithImpl<$Res>
    extends _$BiliSeasonsAndSeriesDtoCopyWithImpl<$Res,
        _$BiliSeasonsAndSeriesDtoImpl>
    implements _$$BiliSeasonsAndSeriesDtoImplCopyWith<$Res> {
  __$$BiliSeasonsAndSeriesDtoImplCopyWithImpl(
      _$BiliSeasonsAndSeriesDtoImpl _value,
      $Res Function(_$BiliSeasonsAndSeriesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsAndSeriesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BiliSeasonsAndSeriesDtoImpl(
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
              as BiliSeasonsAndSeriesDtoData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonsAndSeriesDtoImpl
    with DiagnosticableTreeMixin
    implements _BiliSeasonsAndSeriesDto {
  const _$BiliSeasonsAndSeriesDtoImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$BiliSeasonsAndSeriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeasonsAndSeriesDtoImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final BiliSeasonsAndSeriesDtoData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeasonsAndSeriesDto(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeasonsAndSeriesDto'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonsAndSeriesDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of BiliSeasonsAndSeriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonsAndSeriesDtoImplCopyWith<_$BiliSeasonsAndSeriesDtoImpl>
      get copyWith => __$$BiliSeasonsAndSeriesDtoImplCopyWithImpl<
          _$BiliSeasonsAndSeriesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonsAndSeriesDtoImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonsAndSeriesDto implements BiliSeasonsAndSeriesDto {
  const factory _BiliSeasonsAndSeriesDto(
      {final int? code,
      final String? message,
      final int? ttl,
      final BiliSeasonsAndSeriesDtoData? data}) = _$BiliSeasonsAndSeriesDtoImpl;

  factory _BiliSeasonsAndSeriesDto.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonsAndSeriesDtoImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  BiliSeasonsAndSeriesDtoData? get data;

  /// Create a copy of BiliSeasonsAndSeriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonsAndSeriesDtoImplCopyWith<_$BiliSeasonsAndSeriesDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliSeasonsAndSeriesDtoData _$BiliSeasonsAndSeriesDtoDataFromJson(
    Map<String, dynamic> json) {
  return _BiliSeasonsAndSeriesDtoData.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsAndSeriesDtoData {
  BiliSeasonsAndSeriesDtoItemsLists? get items_lists =>
      throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsAndSeriesDtoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsAndSeriesDtoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsAndSeriesDtoDataCopyWith<BiliSeasonsAndSeriesDtoData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsAndSeriesDtoDataCopyWith<$Res> {
  factory $BiliSeasonsAndSeriesDtoDataCopyWith(
          BiliSeasonsAndSeriesDtoData value,
          $Res Function(BiliSeasonsAndSeriesDtoData) then) =
      _$BiliSeasonsAndSeriesDtoDataCopyWithImpl<$Res,
          BiliSeasonsAndSeriesDtoData>;
  @useResult
  $Res call({BiliSeasonsAndSeriesDtoItemsLists? items_lists});

  $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res>? get items_lists;
}

/// @nodoc
class _$BiliSeasonsAndSeriesDtoDataCopyWithImpl<$Res,
        $Val extends BiliSeasonsAndSeriesDtoData>
    implements $BiliSeasonsAndSeriesDtoDataCopyWith<$Res> {
  _$BiliSeasonsAndSeriesDtoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsAndSeriesDtoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items_lists = freezed,
  }) {
    return _then(_value.copyWith(
      items_lists: freezed == items_lists
          ? _value.items_lists
          : items_lists // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsAndSeriesDtoItemsLists?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonsAndSeriesDtoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res>? get items_lists {
    if (_value.items_lists == null) {
      return null;
    }

    return $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res>(_value.items_lists!,
        (value) {
      return _then(_value.copyWith(items_lists: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeasonsAndSeriesDtoDataImplCopyWith<$Res>
    implements $BiliSeasonsAndSeriesDtoDataCopyWith<$Res> {
  factory _$$BiliSeasonsAndSeriesDtoDataImplCopyWith(
          _$BiliSeasonsAndSeriesDtoDataImpl value,
          $Res Function(_$BiliSeasonsAndSeriesDtoDataImpl) then) =
      __$$BiliSeasonsAndSeriesDtoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BiliSeasonsAndSeriesDtoItemsLists? items_lists});

  @override
  $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res>? get items_lists;
}

/// @nodoc
class __$$BiliSeasonsAndSeriesDtoDataImplCopyWithImpl<$Res>
    extends _$BiliSeasonsAndSeriesDtoDataCopyWithImpl<$Res,
        _$BiliSeasonsAndSeriesDtoDataImpl>
    implements _$$BiliSeasonsAndSeriesDtoDataImplCopyWith<$Res> {
  __$$BiliSeasonsAndSeriesDtoDataImplCopyWithImpl(
      _$BiliSeasonsAndSeriesDtoDataImpl _value,
      $Res Function(_$BiliSeasonsAndSeriesDtoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsAndSeriesDtoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items_lists = freezed,
  }) {
    return _then(_$BiliSeasonsAndSeriesDtoDataImpl(
      items_lists: freezed == items_lists
          ? _value.items_lists
          : items_lists // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsAndSeriesDtoItemsLists?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonsAndSeriesDtoDataImpl
    with DiagnosticableTreeMixin
    implements _BiliSeasonsAndSeriesDtoData {
  const _$BiliSeasonsAndSeriesDtoDataImpl({this.items_lists});

  factory _$BiliSeasonsAndSeriesDtoDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BiliSeasonsAndSeriesDtoDataImplFromJson(json);

  @override
  final BiliSeasonsAndSeriesDtoItemsLists? items_lists;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeasonsAndSeriesDtoData(items_lists: $items_lists)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeasonsAndSeriesDtoData'))
      ..add(DiagnosticsProperty('items_lists', items_lists));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonsAndSeriesDtoDataImpl &&
            (identical(other.items_lists, items_lists) ||
                other.items_lists == items_lists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, items_lists);

  /// Create a copy of BiliSeasonsAndSeriesDtoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonsAndSeriesDtoDataImplCopyWith<_$BiliSeasonsAndSeriesDtoDataImpl>
      get copyWith => __$$BiliSeasonsAndSeriesDtoDataImplCopyWithImpl<
          _$BiliSeasonsAndSeriesDtoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonsAndSeriesDtoDataImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonsAndSeriesDtoData
    implements BiliSeasonsAndSeriesDtoData {
  const factory _BiliSeasonsAndSeriesDtoData(
          {final BiliSeasonsAndSeriesDtoItemsLists? items_lists}) =
      _$BiliSeasonsAndSeriesDtoDataImpl;

  factory _BiliSeasonsAndSeriesDtoData.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonsAndSeriesDtoDataImpl.fromJson;

  @override
  BiliSeasonsAndSeriesDtoItemsLists? get items_lists;

  /// Create a copy of BiliSeasonsAndSeriesDtoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonsAndSeriesDtoDataImplCopyWith<_$BiliSeasonsAndSeriesDtoDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliSeasonsAndSeriesDtoItemsLists _$BiliSeasonsAndSeriesDtoItemsListsFromJson(
    Map<String, dynamic> json) {
  return _BiliSeasonsAndSeriesDtoItemsLists.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsAndSeriesDtoItemsLists {
  BiliSeasonsSerirePage? get page => throw _privateConstructorUsedError;
  List<BiliSeasonsList>? get seasons_list => throw _privateConstructorUsedError;
  List<BiliSeriesList>? get series_list => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsAndSeriesDtoItemsLists to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsAndSeriesDtoItemsLists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsAndSeriesDtoItemsListsCopyWith<BiliSeasonsAndSeriesDtoItemsLists>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res> {
  factory $BiliSeasonsAndSeriesDtoItemsListsCopyWith(
          BiliSeasonsAndSeriesDtoItemsLists value,
          $Res Function(BiliSeasonsAndSeriesDtoItemsLists) then) =
      _$BiliSeasonsAndSeriesDtoItemsListsCopyWithImpl<$Res,
          BiliSeasonsAndSeriesDtoItemsLists>;
  @useResult
  $Res call(
      {BiliSeasonsSerirePage? page,
      List<BiliSeasonsList>? seasons_list,
      List<BiliSeriesList>? series_list});

  $BiliSeasonsSerirePageCopyWith<$Res>? get page;
}

/// @nodoc
class _$BiliSeasonsAndSeriesDtoItemsListsCopyWithImpl<$Res,
        $Val extends BiliSeasonsAndSeriesDtoItemsLists>
    implements $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res> {
  _$BiliSeasonsAndSeriesDtoItemsListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsAndSeriesDtoItemsLists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? seasons_list = freezed,
    Object? series_list = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSerirePage?,
      seasons_list: freezed == seasons_list
          ? _value.seasons_list
          : seasons_list // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsList>?,
      series_list: freezed == series_list
          ? _value.series_list
          : series_list // ignore: cast_nullable_to_non_nullable
              as List<BiliSeriesList>?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonsAndSeriesDtoItemsLists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonsSerirePageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $BiliSeasonsSerirePageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWith<$Res>
    implements $BiliSeasonsAndSeriesDtoItemsListsCopyWith<$Res> {
  factory _$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWith(
          _$BiliSeasonsAndSeriesDtoItemsListsImpl value,
          $Res Function(_$BiliSeasonsAndSeriesDtoItemsListsImpl) then) =
      __$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BiliSeasonsSerirePage? page,
      List<BiliSeasonsList>? seasons_list,
      List<BiliSeriesList>? series_list});

  @override
  $BiliSeasonsSerirePageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWithImpl<$Res>
    extends _$BiliSeasonsAndSeriesDtoItemsListsCopyWithImpl<$Res,
        _$BiliSeasonsAndSeriesDtoItemsListsImpl>
    implements _$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWith<$Res> {
  __$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWithImpl(
      _$BiliSeasonsAndSeriesDtoItemsListsImpl _value,
      $Res Function(_$BiliSeasonsAndSeriesDtoItemsListsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsAndSeriesDtoItemsLists
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? seasons_list = freezed,
    Object? series_list = freezed,
  }) {
    return _then(_$BiliSeasonsAndSeriesDtoItemsListsImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSerirePage?,
      seasons_list: freezed == seasons_list
          ? _value._seasons_list
          : seasons_list // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsList>?,
      series_list: freezed == series_list
          ? _value._series_list
          : series_list // ignore: cast_nullable_to_non_nullable
              as List<BiliSeriesList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonsAndSeriesDtoItemsListsImpl
    with DiagnosticableTreeMixin
    implements _BiliSeasonsAndSeriesDtoItemsLists {
  const _$BiliSeasonsAndSeriesDtoItemsListsImpl(
      {this.page,
      final List<BiliSeasonsList>? seasons_list,
      final List<BiliSeriesList>? series_list})
      : _seasons_list = seasons_list,
        _series_list = series_list;

  factory _$BiliSeasonsAndSeriesDtoItemsListsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BiliSeasonsAndSeriesDtoItemsListsImplFromJson(json);

  @override
  final BiliSeasonsSerirePage? page;
  final List<BiliSeasonsList>? _seasons_list;
  @override
  List<BiliSeasonsList>? get seasons_list {
    final value = _seasons_list;
    if (value == null) return null;
    if (_seasons_list is EqualUnmodifiableListView) return _seasons_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BiliSeriesList>? _series_list;
  @override
  List<BiliSeriesList>? get series_list {
    final value = _series_list;
    if (value == null) return null;
    if (_series_list is EqualUnmodifiableListView) return _series_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeasonsAndSeriesDtoItemsLists(page: $page, seasons_list: $seasons_list, series_list: $series_list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeasonsAndSeriesDtoItemsLists'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('seasons_list', seasons_list))
      ..add(DiagnosticsProperty('series_list', series_list));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonsAndSeriesDtoItemsListsImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._seasons_list, _seasons_list) &&
            const DeepCollectionEquality()
                .equals(other._series_list, _series_list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_seasons_list),
      const DeepCollectionEquality().hash(_series_list));

  /// Create a copy of BiliSeasonsAndSeriesDtoItemsLists
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWith<
          _$BiliSeasonsAndSeriesDtoItemsListsImpl>
      get copyWith => __$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWithImpl<
          _$BiliSeasonsAndSeriesDtoItemsListsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonsAndSeriesDtoItemsListsImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonsAndSeriesDtoItemsLists
    implements BiliSeasonsAndSeriesDtoItemsLists {
  const factory _BiliSeasonsAndSeriesDtoItemsLists(
          {final BiliSeasonsSerirePage? page,
          final List<BiliSeasonsList>? seasons_list,
          final List<BiliSeriesList>? series_list}) =
      _$BiliSeasonsAndSeriesDtoItemsListsImpl;

  factory _BiliSeasonsAndSeriesDtoItemsLists.fromJson(
          Map<String, dynamic> json) =
      _$BiliSeasonsAndSeriesDtoItemsListsImpl.fromJson;

  @override
  BiliSeasonsSerirePage? get page;
  @override
  List<BiliSeasonsList>? get seasons_list;
  @override
  List<BiliSeriesList>? get series_list;

  /// Create a copy of BiliSeasonsAndSeriesDtoItemsLists
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonsAndSeriesDtoItemsListsImplCopyWith<
          _$BiliSeasonsAndSeriesDtoItemsListsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BiliSeasonsList _$BiliSeasonsListFromJson(Map<String, dynamic> json) {
  return _BiliSeasonsList.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonsList {
  List<BiliSeasonsSeriesArchives>? get archives =>
      throw _privateConstructorUsedError;
  BiliSeasonsSeriesMeta? get meta => throw _privateConstructorUsedError;
  List<int>? get recent_aids => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonsListCopyWith<BiliSeasonsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonsListCopyWith<$Res> {
  factory $BiliSeasonsListCopyWith(
          BiliSeasonsList value, $Res Function(BiliSeasonsList) then) =
      _$BiliSeasonsListCopyWithImpl<$Res, BiliSeasonsList>;
  @useResult
  $Res call(
      {List<BiliSeasonsSeriesArchives>? archives,
      BiliSeasonsSeriesMeta? meta,
      List<int>? recent_aids});

  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BiliSeasonsListCopyWithImpl<$Res, $Val extends BiliSeasonsList>
    implements $BiliSeasonsListCopyWith<$Res> {
  _$BiliSeasonsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archives = freezed,
    Object? meta = freezed,
    Object? recent_aids = freezed,
  }) {
    return _then(_value.copyWith(
      archives: freezed == archives
          ? _value.archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesMeta?,
      recent_aids: freezed == recent_aids
          ? _value.recent_aids
          : recent_aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $BiliSeasonsSeriesMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeasonsListImplCopyWith<$Res>
    implements $BiliSeasonsListCopyWith<$Res> {
  factory _$$BiliSeasonsListImplCopyWith(_$BiliSeasonsListImpl value,
          $Res Function(_$BiliSeasonsListImpl) then) =
      __$$BiliSeasonsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BiliSeasonsSeriesArchives>? archives,
      BiliSeasonsSeriesMeta? meta,
      List<int>? recent_aids});

  @override
  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$BiliSeasonsListImplCopyWithImpl<$Res>
    extends _$BiliSeasonsListCopyWithImpl<$Res, _$BiliSeasonsListImpl>
    implements _$$BiliSeasonsListImplCopyWith<$Res> {
  __$$BiliSeasonsListImplCopyWithImpl(
      _$BiliSeasonsListImpl _value, $Res Function(_$BiliSeasonsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archives = freezed,
    Object? meta = freezed,
    Object? recent_aids = freezed,
  }) {
    return _then(_$BiliSeasonsListImpl(
      archives: freezed == archives
          ? _value._archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesMeta?,
      recent_aids: freezed == recent_aids
          ? _value._recent_aids
          : recent_aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonsListImpl
    with DiagnosticableTreeMixin
    implements _BiliSeasonsList {
  const _$BiliSeasonsListImpl(
      {final List<BiliSeasonsSeriesArchives>? archives,
      this.meta,
      final List<int>? recent_aids})
      : _archives = archives,
        _recent_aids = recent_aids;

  factory _$BiliSeasonsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeasonsListImplFromJson(json);

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
  final BiliSeasonsSeriesMeta? meta;
  final List<int>? _recent_aids;
  @override
  List<int>? get recent_aids {
    final value = _recent_aids;
    if (value == null) return null;
    if (_recent_aids is EqualUnmodifiableListView) return _recent_aids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeasonsList(archives: $archives, meta: $meta, recent_aids: $recent_aids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeasonsList'))
      ..add(DiagnosticsProperty('archives', archives))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('recent_aids', recent_aids));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonsListImpl &&
            const DeepCollectionEquality().equals(other._archives, _archives) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._recent_aids, _recent_aids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_archives),
      meta,
      const DeepCollectionEquality().hash(_recent_aids));

  /// Create a copy of BiliSeasonsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonsListImplCopyWith<_$BiliSeasonsListImpl> get copyWith =>
      __$$BiliSeasonsListImplCopyWithImpl<_$BiliSeasonsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonsListImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonsList implements BiliSeasonsList {
  const factory _BiliSeasonsList(
      {final List<BiliSeasonsSeriesArchives>? archives,
      final BiliSeasonsSeriesMeta? meta,
      final List<int>? recent_aids}) = _$BiliSeasonsListImpl;

  factory _BiliSeasonsList.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonsListImpl.fromJson;

  @override
  List<BiliSeasonsSeriesArchives>? get archives;
  @override
  BiliSeasonsSeriesMeta? get meta;
  @override
  List<int>? get recent_aids;

  /// Create a copy of BiliSeasonsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonsListImplCopyWith<_$BiliSeasonsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BiliSeriesList _$BiliSeriesListFromJson(Map<String, dynamic> json) {
  return _BiliSeriesList.fromJson(json);
}

/// @nodoc
mixin _$BiliSeriesList {
  List<BiliSeasonsSeriesArchives>? get archives =>
      throw _privateConstructorUsedError;
  BiliSeasonsSeriesMeta? get meta => throw _privateConstructorUsedError;
  List<int>? get recent_aids => throw _privateConstructorUsedError;

  /// Serializes this BiliSeriesList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeriesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeriesListCopyWith<BiliSeriesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeriesListCopyWith<$Res> {
  factory $BiliSeriesListCopyWith(
          BiliSeriesList value, $Res Function(BiliSeriesList) then) =
      _$BiliSeriesListCopyWithImpl<$Res, BiliSeriesList>;
  @useResult
  $Res call(
      {List<BiliSeasonsSeriesArchives>? archives,
      BiliSeasonsSeriesMeta? meta,
      List<int>? recent_aids});

  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BiliSeriesListCopyWithImpl<$Res, $Val extends BiliSeriesList>
    implements $BiliSeriesListCopyWith<$Res> {
  _$BiliSeriesListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeriesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archives = freezed,
    Object? meta = freezed,
    Object? recent_aids = freezed,
  }) {
    return _then(_value.copyWith(
      archives: freezed == archives
          ? _value.archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesMeta?,
      recent_aids: freezed == recent_aids
          ? _value.recent_aids
          : recent_aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  /// Create a copy of BiliSeriesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $BiliSeasonsSeriesMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeriesListImplCopyWith<$Res>
    implements $BiliSeriesListCopyWith<$Res> {
  factory _$$BiliSeriesListImplCopyWith(_$BiliSeriesListImpl value,
          $Res Function(_$BiliSeriesListImpl) then) =
      __$$BiliSeriesListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BiliSeasonsSeriesArchives>? archives,
      BiliSeasonsSeriesMeta? meta,
      List<int>? recent_aids});

  @override
  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$BiliSeriesListImplCopyWithImpl<$Res>
    extends _$BiliSeriesListCopyWithImpl<$Res, _$BiliSeriesListImpl>
    implements _$$BiliSeriesListImplCopyWith<$Res> {
  __$$BiliSeriesListImplCopyWithImpl(
      _$BiliSeriesListImpl _value, $Res Function(_$BiliSeriesListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeriesList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? archives = freezed,
    Object? meta = freezed,
    Object? recent_aids = freezed,
  }) {
    return _then(_$BiliSeriesListImpl(
      archives: freezed == archives
          ? _value._archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesMeta?,
      recent_aids: freezed == recent_aids
          ? _value._recent_aids
          : recent_aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeriesListImpl
    with DiagnosticableTreeMixin
    implements _BiliSeriesList {
  const _$BiliSeriesListImpl(
      {final List<BiliSeasonsSeriesArchives>? archives,
      this.meta,
      final List<int>? recent_aids})
      : _archives = archives,
        _recent_aids = recent_aids;

  factory _$BiliSeriesListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeriesListImplFromJson(json);

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
  final BiliSeasonsSeriesMeta? meta;
  final List<int>? _recent_aids;
  @override
  List<int>? get recent_aids {
    final value = _recent_aids;
    if (value == null) return null;
    if (_recent_aids is EqualUnmodifiableListView) return _recent_aids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeriesList(archives: $archives, meta: $meta, recent_aids: $recent_aids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeriesList'))
      ..add(DiagnosticsProperty('archives', archives))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('recent_aids', recent_aids));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeriesListImpl &&
            const DeepCollectionEquality().equals(other._archives, _archives) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._recent_aids, _recent_aids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_archives),
      meta,
      const DeepCollectionEquality().hash(_recent_aids));

  /// Create a copy of BiliSeriesList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeriesListImplCopyWith<_$BiliSeriesListImpl> get copyWith =>
      __$$BiliSeriesListImplCopyWithImpl<_$BiliSeriesListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeriesListImplToJson(
      this,
    );
  }
}

abstract class _BiliSeriesList implements BiliSeriesList {
  const factory _BiliSeriesList(
      {final List<BiliSeasonsSeriesArchives>? archives,
      final BiliSeasonsSeriesMeta? meta,
      final List<int>? recent_aids}) = _$BiliSeriesListImpl;

  factory _BiliSeriesList.fromJson(Map<String, dynamic> json) =
      _$BiliSeriesListImpl.fromJson;

  @override
  List<BiliSeasonsSeriesArchives>? get archives;
  @override
  BiliSeasonsSeriesMeta? get meta;
  @override
  List<int>? get recent_aids;

  /// Create a copy of BiliSeriesList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeriesListImplCopyWith<_$BiliSeriesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
