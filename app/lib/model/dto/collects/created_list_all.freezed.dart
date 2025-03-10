// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_list_all.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatedListAll _$CreatedListAllFromJson(Map<String, dynamic> json) {
  return _CreatedListAll.fromJson(json);
}

/// @nodoc
mixin _$CreatedListAll {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  CollectsListAllDto? get data => throw _privateConstructorUsedError;

  /// Serializes this CreatedListAll to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatedListAll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatedListAllCopyWith<CreatedListAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedListAllCopyWith<$Res> {
  factory $CreatedListAllCopyWith(
          CreatedListAll value, $Res Function(CreatedListAll) then) =
      _$CreatedListAllCopyWithImpl<$Res, CreatedListAll>;
  @useResult
  $Res call({int? code, String? message, int? ttl, CollectsListAllDto? data});

  $CollectsListAllDtoCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatedListAllCopyWithImpl<$Res, $Val extends CreatedListAll>
    implements $CreatedListAllCopyWith<$Res> {
  _$CreatedListAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatedListAll
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
              as CollectsListAllDto?,
    ) as $Val);
  }

  /// Create a copy of CreatedListAll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectsListAllDtoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CollectsListAllDtoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatedListAllImplCopyWith<$Res>
    implements $CreatedListAllCopyWith<$Res> {
  factory _$$CreatedListAllImplCopyWith(_$CreatedListAllImpl value,
          $Res Function(_$CreatedListAllImpl) then) =
      __$$CreatedListAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, CollectsListAllDto? data});

  @override
  $CollectsListAllDtoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreatedListAllImplCopyWithImpl<$Res>
    extends _$CreatedListAllCopyWithImpl<$Res, _$CreatedListAllImpl>
    implements _$$CreatedListAllImplCopyWith<$Res> {
  __$$CreatedListAllImplCopyWithImpl(
      _$CreatedListAllImpl _value, $Res Function(_$CreatedListAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatedListAll
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreatedListAllImpl(
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
              as CollectsListAllDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedListAllImpl
    with DiagnosticableTreeMixin
    implements _CreatedListAll {
  const _$CreatedListAllImpl({this.code, this.message, this.ttl, this.data});

  factory _$CreatedListAllImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedListAllImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final CollectsListAllDto? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatedListAll(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatedListAll'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedListAllImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of CreatedListAll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedListAllImplCopyWith<_$CreatedListAllImpl> get copyWith =>
      __$$CreatedListAllImplCopyWithImpl<_$CreatedListAllImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedListAllImplToJson(
      this,
    );
  }
}

abstract class _CreatedListAll implements CreatedListAll {
  const factory _CreatedListAll(
      {final int? code,
      final String? message,
      final int? ttl,
      final CollectsListAllDto? data}) = _$CreatedListAllImpl;

  factory _CreatedListAll.fromJson(Map<String, dynamic> json) =
      _$CreatedListAllImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  CollectsListAllDto? get data;

  /// Create a copy of CreatedListAll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedListAllImplCopyWith<_$CreatedListAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
