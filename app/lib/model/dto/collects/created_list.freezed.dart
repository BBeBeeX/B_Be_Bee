// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatedList _$CreatedListFromJson(Map<String, dynamic> json) {
  return _CreatedsList.fromJson(json);
}

/// @nodoc
mixin _$CreatedList {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  CreatedListData? get data => throw _privateConstructorUsedError;

  /// Serializes this CreatedList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatedList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatedListCopyWith<CreatedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedListCopyWith<$Res> {
  factory $CreatedListCopyWith(
          CreatedList value, $Res Function(CreatedList) then) =
      _$CreatedListCopyWithImpl<$Res, CreatedList>;
  @useResult
  $Res call({int? code, String? message, int? ttl, CreatedListData? data});

  $CreatedListDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatedListCopyWithImpl<$Res, $Val extends CreatedList>
    implements $CreatedListCopyWith<$Res> {
  _$CreatedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatedList
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
              as CreatedListData?,
    ) as $Val);
  }

  /// Create a copy of CreatedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatedListDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreatedListDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatedsListImplCopyWith<$Res>
    implements $CreatedListCopyWith<$Res> {
  factory _$$CreatedsListImplCopyWith(
          _$CreatedsListImpl value, $Res Function(_$CreatedsListImpl) then) =
      __$$CreatedsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, CreatedListData? data});

  @override
  $CreatedListDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreatedsListImplCopyWithImpl<$Res>
    extends _$CreatedListCopyWithImpl<$Res, _$CreatedsListImpl>
    implements _$$CreatedsListImplCopyWith<$Res> {
  __$$CreatedsListImplCopyWithImpl(
      _$CreatedsListImpl _value, $Res Function(_$CreatedsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatedList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreatedsListImpl(
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
              as CreatedListData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedsListImpl with DiagnosticableTreeMixin implements _CreatedsList {
  const _$CreatedsListImpl({this.code, this.message, this.ttl, this.data});

  factory _$CreatedsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedsListImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final CreatedListData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatedList(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatedList'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedsListImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of CreatedList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedsListImplCopyWith<_$CreatedsListImpl> get copyWith =>
      __$$CreatedsListImplCopyWithImpl<_$CreatedsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedsListImplToJson(
      this,
    );
  }
}

abstract class _CreatedsList implements CreatedList {
  const factory _CreatedsList(
      {final int? code,
      final String? message,
      final int? ttl,
      final CreatedListData? data}) = _$CreatedsListImpl;

  factory _CreatedsList.fromJson(Map<String, dynamic> json) =
      _$CreatedsListImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  CreatedListData? get data;

  /// Create a copy of CreatedList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedsListImplCopyWith<_$CreatedsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatedListData _$CreatedListDataFromJson(Map<String, dynamic> json) {
  return _CreatedListData.fromJson(json);
}

/// @nodoc
mixin _$CreatedListData {
  int? get count => throw _privateConstructorUsedError;
  List<CollectsDataDto>? get list => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;

  /// Serializes this CreatedListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatedListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatedListDataCopyWith<CreatedListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedListDataCopyWith<$Res> {
  factory $CreatedListDataCopyWith(
          CreatedListData value, $Res Function(CreatedListData) then) =
      _$CreatedListDataCopyWithImpl<$Res, CreatedListData>;
  @useResult
  $Res call({int? count, List<CollectsDataDto>? list, bool? hasMore});
}

/// @nodoc
class _$CreatedListDataCopyWithImpl<$Res, $Val extends CreatedListData>
    implements $CreatedListDataCopyWith<$Res> {
  _$CreatedListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatedListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? list = freezed,
    Object? hasMore = freezed,
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
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatedListDataImplCopyWith<$Res>
    implements $CreatedListDataCopyWith<$Res> {
  factory _$$CreatedListDataImplCopyWith(_$CreatedListDataImpl value,
          $Res Function(_$CreatedListDataImpl) then) =
      __$$CreatedListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, List<CollectsDataDto>? list, bool? hasMore});
}

/// @nodoc
class __$$CreatedListDataImplCopyWithImpl<$Res>
    extends _$CreatedListDataCopyWithImpl<$Res, _$CreatedListDataImpl>
    implements _$$CreatedListDataImplCopyWith<$Res> {
  __$$CreatedListDataImplCopyWithImpl(
      _$CreatedListDataImpl _value, $Res Function(_$CreatedListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatedListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? list = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_$CreatedListDataImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CollectsDataDto>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedListDataImpl
    with DiagnosticableTreeMixin
    implements _CreatedListData {
  const _$CreatedListDataImpl(
      {this.count, final List<CollectsDataDto>? list, this.hasMore})
      : _list = list;

  factory _$CreatedListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedListDataImplFromJson(json);

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
  final bool? hasMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatedListData(count: $count, list: $list, hasMore: $hasMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatedListData'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('hasMore', hasMore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedListDataImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_list), hasMore);

  /// Create a copy of CreatedListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedListDataImplCopyWith<_$CreatedListDataImpl> get copyWith =>
      __$$CreatedListDataImplCopyWithImpl<_$CreatedListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedListDataImplToJson(
      this,
    );
  }
}

abstract class _CreatedListData implements CreatedListData {
  const factory _CreatedListData(
      {final int? count,
      final List<CollectsDataDto>? list,
      final bool? hasMore}) = _$CreatedListDataImpl;

  factory _CreatedListData.fromJson(Map<String, dynamic> json) =
      _$CreatedListDataImpl.fromJson;

  @override
  int? get count;
  @override
  List<CollectsDataDto>? get list;
  @override
  bool? get hasMore;

  /// Create a copy of CreatedListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedListDataImplCopyWith<_$CreatedListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
