// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upper_notice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpperNoticeDto _$UpperNoticeDtoFromJson(Map<String, dynamic> json) {
  return _UpperNoticeDto.fromJson(json);
}

/// @nodoc
mixin _$UpperNoticeDto {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  /// Serializes this UpperNoticeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpperNoticeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpperNoticeDtoCopyWith<UpperNoticeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpperNoticeDtoCopyWith<$Res> {
  factory $UpperNoticeDtoCopyWith(
          UpperNoticeDto value, $Res Function(UpperNoticeDto) then) =
      _$UpperNoticeDtoCopyWithImpl<$Res, UpperNoticeDto>;
  @useResult
  $Res call({int? code, String? message, int? ttl, String? data});
}

/// @nodoc
class _$UpperNoticeDtoCopyWithImpl<$Res, $Val extends UpperNoticeDto>
    implements $UpperNoticeDtoCopyWith<$Res> {
  _$UpperNoticeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpperNoticeDto
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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpperNoticeDtoImplCopyWith<$Res>
    implements $UpperNoticeDtoCopyWith<$Res> {
  factory _$$UpperNoticeDtoImplCopyWith(_$UpperNoticeDtoImpl value,
          $Res Function(_$UpperNoticeDtoImpl) then) =
      __$$UpperNoticeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, String? data});
}

/// @nodoc
class __$$UpperNoticeDtoImplCopyWithImpl<$Res>
    extends _$UpperNoticeDtoCopyWithImpl<$Res, _$UpperNoticeDtoImpl>
    implements _$$UpperNoticeDtoImplCopyWith<$Res> {
  __$$UpperNoticeDtoImplCopyWithImpl(
      _$UpperNoticeDtoImpl _value, $Res Function(_$UpperNoticeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpperNoticeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpperNoticeDtoImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpperNoticeDtoImpl
    with DiagnosticableTreeMixin
    implements _UpperNoticeDto {
  const _$UpperNoticeDtoImpl({this.code, this.message, this.ttl, this.data});

  factory _$UpperNoticeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpperNoticeDtoImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final String? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpperNoticeDto(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpperNoticeDto'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('ttl', ttl))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpperNoticeDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of UpperNoticeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpperNoticeDtoImplCopyWith<_$UpperNoticeDtoImpl> get copyWith =>
      __$$UpperNoticeDtoImplCopyWithImpl<_$UpperNoticeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpperNoticeDtoImplToJson(
      this,
    );
  }
}

abstract class _UpperNoticeDto implements UpperNoticeDto {
  const factory _UpperNoticeDto(
      {final int? code,
      final String? message,
      final int? ttl,
      final String? data}) = _$UpperNoticeDtoImpl;

  factory _UpperNoticeDto.fromJson(Map<String, dynamic> json) =
      _$UpperNoticeDtoImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  String? get data;

  /// Create a copy of UpperNoticeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpperNoticeDtoImplCopyWith<_$UpperNoticeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
