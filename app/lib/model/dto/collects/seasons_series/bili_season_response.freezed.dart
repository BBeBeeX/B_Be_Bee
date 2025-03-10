// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bili_season_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiliSeasonResponse _$BiliSeasonResponseFromJson(Map<String, dynamic> json) {
  return _BiliSeasonResponse.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  BiliSeasonResponseData? get data => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonResponseCopyWith<BiliSeasonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonResponseCopyWith<$Res> {
  factory $BiliSeasonResponseCopyWith(
          BiliSeasonResponse value, $Res Function(BiliSeasonResponse) then) =
      _$BiliSeasonResponseCopyWithImpl<$Res, BiliSeasonResponse>;
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, BiliSeasonResponseData? data});

  $BiliSeasonResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BiliSeasonResponseCopyWithImpl<$Res, $Val extends BiliSeasonResponse>
    implements $BiliSeasonResponseCopyWith<$Res> {
  _$BiliSeasonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonResponse
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
              as BiliSeasonResponseData?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BiliSeasonResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BiliSeasonResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiliSeasonResponseImplCopyWith<$Res>
    implements $BiliSeasonResponseCopyWith<$Res> {
  factory _$$BiliSeasonResponseImplCopyWith(_$BiliSeasonResponseImpl value,
          $Res Function(_$BiliSeasonResponseImpl) then) =
      __$$BiliSeasonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, int? ttl, BiliSeasonResponseData? data});

  @override
  $BiliSeasonResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BiliSeasonResponseImplCopyWithImpl<$Res>
    extends _$BiliSeasonResponseCopyWithImpl<$Res, _$BiliSeasonResponseImpl>
    implements _$$BiliSeasonResponseImplCopyWith<$Res> {
  __$$BiliSeasonResponseImplCopyWithImpl(_$BiliSeasonResponseImpl _value,
      $Res Function(_$BiliSeasonResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BiliSeasonResponseImpl(
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
              as BiliSeasonResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonResponseImpl
    with DiagnosticableTreeMixin
    implements _BiliSeasonResponse {
  const _$BiliSeasonResponseImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$BiliSeasonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeasonResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final BiliSeasonResponseData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeasonResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeasonResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of BiliSeasonResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonResponseImplCopyWith<_$BiliSeasonResponseImpl> get copyWith =>
      __$$BiliSeasonResponseImplCopyWithImpl<_$BiliSeasonResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonResponseImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonResponse implements BiliSeasonResponse {
  const factory _BiliSeasonResponse(
      {final int? code,
      final String? message,
      final int? ttl,
      final BiliSeasonResponseData? data}) = _$BiliSeasonResponseImpl;

  factory _BiliSeasonResponse.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  BiliSeasonResponseData? get data;

  /// Create a copy of BiliSeasonResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonResponseImplCopyWith<_$BiliSeasonResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BiliSeasonResponseData _$BiliSeasonResponseDataFromJson(
    Map<String, dynamic> json) {
  return _BiliSeasonResponseData.fromJson(json);
}

/// @nodoc
mixin _$BiliSeasonResponseData {
  List<int>? get aids => throw _privateConstructorUsedError;
  List<BiliSeasonsSeriesArchives>? get archives =>
      throw _privateConstructorUsedError;
  BiliSeasonsSeriesMeta? get meta => throw _privateConstructorUsedError;
  BiliSeasonsSerirePage? get page => throw _privateConstructorUsedError;

  /// Serializes this BiliSeasonResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiliSeasonResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiliSeasonResponseDataCopyWith<BiliSeasonResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiliSeasonResponseDataCopyWith<$Res> {
  factory $BiliSeasonResponseDataCopyWith(BiliSeasonResponseData value,
          $Res Function(BiliSeasonResponseData) then) =
      _$BiliSeasonResponseDataCopyWithImpl<$Res, BiliSeasonResponseData>;
  @useResult
  $Res call(
      {List<int>? aids,
      List<BiliSeasonsSeriesArchives>? archives,
      BiliSeasonsSeriesMeta? meta,
      BiliSeasonsSerirePage? page});

  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta;
  $BiliSeasonsSerirePageCopyWith<$Res>? get page;
}

/// @nodoc
class _$BiliSeasonResponseDataCopyWithImpl<$Res,
        $Val extends BiliSeasonResponseData>
    implements $BiliSeasonResponseDataCopyWith<$Res> {
  _$BiliSeasonResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiliSeasonResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aids = freezed,
    Object? archives = freezed,
    Object? meta = freezed,
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
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesMeta?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSerirePage?,
    ) as $Val);
  }

  /// Create a copy of BiliSeasonResponseData
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

  /// Create a copy of BiliSeasonResponseData
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
abstract class _$$BiliSeasonResponseDataImplCopyWith<$Res>
    implements $BiliSeasonResponseDataCopyWith<$Res> {
  factory _$$BiliSeasonResponseDataImplCopyWith(
          _$BiliSeasonResponseDataImpl value,
          $Res Function(_$BiliSeasonResponseDataImpl) then) =
      __$$BiliSeasonResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? aids,
      List<BiliSeasonsSeriesArchives>? archives,
      BiliSeasonsSeriesMeta? meta,
      BiliSeasonsSerirePage? page});

  @override
  $BiliSeasonsSeriesMetaCopyWith<$Res>? get meta;
  @override
  $BiliSeasonsSerirePageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$BiliSeasonResponseDataImplCopyWithImpl<$Res>
    extends _$BiliSeasonResponseDataCopyWithImpl<$Res,
        _$BiliSeasonResponseDataImpl>
    implements _$$BiliSeasonResponseDataImplCopyWith<$Res> {
  __$$BiliSeasonResponseDataImplCopyWithImpl(
      _$BiliSeasonResponseDataImpl _value,
      $Res Function(_$BiliSeasonResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiliSeasonResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aids = freezed,
    Object? archives = freezed,
    Object? meta = freezed,
    Object? page = freezed,
  }) {
    return _then(_$BiliSeasonResponseDataImpl(
      aids: freezed == aids
          ? _value._aids
          : aids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      archives: freezed == archives
          ? _value._archives
          : archives // ignore: cast_nullable_to_non_nullable
              as List<BiliSeasonsSeriesArchives>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSeriesMeta?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BiliSeasonsSerirePage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiliSeasonResponseDataImpl
    with DiagnosticableTreeMixin
    implements _BiliSeasonResponseData {
  const _$BiliSeasonResponseDataImpl(
      {final List<int>? aids,
      final List<BiliSeasonsSeriesArchives>? archives,
      this.meta,
      this.page})
      : _aids = aids,
        _archives = archives;

  factory _$BiliSeasonResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiliSeasonResponseDataImplFromJson(json);

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
  final BiliSeasonsSeriesMeta? meta;
  @override
  final BiliSeasonsSerirePage? page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BiliSeasonResponseData(aids: $aids, archives: $archives, meta: $meta, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BiliSeasonResponseData'))
      ..add(DiagnosticsProperty('aids', aids))
      ..add(DiagnosticsProperty('archives', archives))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiliSeasonResponseDataImpl &&
            const DeepCollectionEquality().equals(other._aids, _aids) &&
            const DeepCollectionEquality().equals(other._archives, _archives) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_aids),
      const DeepCollectionEquality().hash(_archives),
      meta,
      page);

  /// Create a copy of BiliSeasonResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiliSeasonResponseDataImplCopyWith<_$BiliSeasonResponseDataImpl>
      get copyWith => __$$BiliSeasonResponseDataImplCopyWithImpl<
          _$BiliSeasonResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiliSeasonResponseDataImplToJson(
      this,
    );
  }
}

abstract class _BiliSeasonResponseData implements BiliSeasonResponseData {
  const factory _BiliSeasonResponseData(
      {final List<int>? aids,
      final List<BiliSeasonsSeriesArchives>? archives,
      final BiliSeasonsSeriesMeta? meta,
      final BiliSeasonsSerirePage? page}) = _$BiliSeasonResponseDataImpl;

  factory _BiliSeasonResponseData.fromJson(Map<String, dynamic> json) =
      _$BiliSeasonResponseDataImpl.fromJson;

  @override
  List<int>? get aids;
  @override
  List<BiliSeasonsSeriesArchives>? get archives;
  @override
  BiliSeasonsSeriesMeta? get meta;
  @override
  BiliSeasonsSerirePage? get page;

  /// Create a copy of BiliSeasonResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiliSeasonResponseDataImplCopyWith<_$BiliSeasonResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
