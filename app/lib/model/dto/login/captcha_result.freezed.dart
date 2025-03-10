// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captcha_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaptchaResultModel _$CaptchaResultModelFromJson(Map<String, dynamic> json) {
  return _CaptchaResultModel.fromJson(json);
}

/// @nodoc
mixin _$CaptchaResultModel {
  String? get validate => throw _privateConstructorUsedError;
  set validate(String? value) => throw _privateConstructorUsedError;
  String? get seccode => throw _privateConstructorUsedError;
  set seccode(String? value) => throw _privateConstructorUsedError;
  CaptchaDataResponse? get captchaData => throw _privateConstructorUsedError;
  set captchaData(CaptchaDataResponse? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this CaptchaResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaptchaResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaptchaResultModelCopyWith<CaptchaResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptchaResultModelCopyWith<$Res> {
  factory $CaptchaResultModelCopyWith(
          CaptchaResultModel value, $Res Function(CaptchaResultModel) then) =
      _$CaptchaResultModelCopyWithImpl<$Res, CaptchaResultModel>;
  @useResult
  $Res call(
      {String? validate, String? seccode, CaptchaDataResponse? captchaData});

  $CaptchaDataResponseCopyWith<$Res>? get captchaData;
}

/// @nodoc
class _$CaptchaResultModelCopyWithImpl<$Res, $Val extends CaptchaResultModel>
    implements $CaptchaResultModelCopyWith<$Res> {
  _$CaptchaResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaptchaResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validate = freezed,
    Object? seccode = freezed,
    Object? captchaData = freezed,
  }) {
    return _then(_value.copyWith(
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as String?,
      seccode: freezed == seccode
          ? _value.seccode
          : seccode // ignore: cast_nullable_to_non_nullable
              as String?,
      captchaData: freezed == captchaData
          ? _value.captchaData
          : captchaData // ignore: cast_nullable_to_non_nullable
              as CaptchaDataResponse?,
    ) as $Val);
  }

  /// Create a copy of CaptchaResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaptchaDataResponseCopyWith<$Res>? get captchaData {
    if (_value.captchaData == null) {
      return null;
    }

    return $CaptchaDataResponseCopyWith<$Res>(_value.captchaData!, (value) {
      return _then(_value.copyWith(captchaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaptchaResultModelImplCopyWith<$Res>
    implements $CaptchaResultModelCopyWith<$Res> {
  factory _$$CaptchaResultModelImplCopyWith(_$CaptchaResultModelImpl value,
          $Res Function(_$CaptchaResultModelImpl) then) =
      __$$CaptchaResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? validate, String? seccode, CaptchaDataResponse? captchaData});

  @override
  $CaptchaDataResponseCopyWith<$Res>? get captchaData;
}

/// @nodoc
class __$$CaptchaResultModelImplCopyWithImpl<$Res>
    extends _$CaptchaResultModelCopyWithImpl<$Res, _$CaptchaResultModelImpl>
    implements _$$CaptchaResultModelImplCopyWith<$Res> {
  __$$CaptchaResultModelImplCopyWithImpl(_$CaptchaResultModelImpl _value,
      $Res Function(_$CaptchaResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaptchaResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validate = freezed,
    Object? seccode = freezed,
    Object? captchaData = freezed,
  }) {
    return _then(_$CaptchaResultModelImpl(
      validate: freezed == validate
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as String?,
      seccode: freezed == seccode
          ? _value.seccode
          : seccode // ignore: cast_nullable_to_non_nullable
              as String?,
      captchaData: freezed == captchaData
          ? _value.captchaData
          : captchaData // ignore: cast_nullable_to_non_nullable
              as CaptchaDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaptchaResultModelImpl implements _CaptchaResultModel {
  _$CaptchaResultModelImpl({this.validate, this.seccode, this.captchaData});

  factory _$CaptchaResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaptchaResultModelImplFromJson(json);

  @override
  String? validate;
  @override
  String? seccode;
  @override
  CaptchaDataResponse? captchaData;

  @override
  String toString() {
    return 'CaptchaResultModel(validate: $validate, seccode: $seccode, captchaData: $captchaData)';
  }

  /// Create a copy of CaptchaResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptchaResultModelImplCopyWith<_$CaptchaResultModelImpl> get copyWith =>
      __$$CaptchaResultModelImplCopyWithImpl<_$CaptchaResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaptchaResultModelImplToJson(
      this,
    );
  }
}

abstract class _CaptchaResultModel implements CaptchaResultModel {
  factory _CaptchaResultModel(
      {String? validate,
      String? seccode,
      CaptchaDataResponse? captchaData}) = _$CaptchaResultModelImpl;

  factory _CaptchaResultModel.fromJson(Map<String, dynamic> json) =
      _$CaptchaResultModelImpl.fromJson;

  @override
  String? get validate;
  set validate(String? value);
  @override
  String? get seccode;
  set seccode(String? value);
  @override
  CaptchaDataResponse? get captchaData;
  set captchaData(CaptchaDataResponse? value);

  /// Create a copy of CaptchaResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptchaResultModelImplCopyWith<_$CaptchaResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CaptchaDataResponse _$CaptchaDataResponseFromJson(Map<String, dynamic> json) {
  return _CaptchaDataResponse.fromJson(json);
}

/// @nodoc
mixin _$CaptchaDataResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get ttl => throw _privateConstructorUsedError;
  CaptchaDataResponseData? get data => throw _privateConstructorUsedError;

  /// Serializes this CaptchaDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaptchaDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaptchaDataResponseCopyWith<CaptchaDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptchaDataResponseCopyWith<$Res> {
  factory $CaptchaDataResponseCopyWith(
          CaptchaDataResponse value, $Res Function(CaptchaDataResponse) then) =
      _$CaptchaDataResponseCopyWithImpl<$Res, CaptchaDataResponse>;
  @useResult
  $Res call({int code, String message, int ttl, CaptchaDataResponseData? data});

  $CaptchaDataResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CaptchaDataResponseCopyWithImpl<$Res, $Val extends CaptchaDataResponse>
    implements $CaptchaDataResponseCopyWith<$Res> {
  _$CaptchaDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaptchaDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ttl = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CaptchaDataResponseData?,
    ) as $Val);
  }

  /// Create a copy of CaptchaDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CaptchaDataResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CaptchaDataResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaptchaDataResponseImplCopyWith<$Res>
    implements $CaptchaDataResponseCopyWith<$Res> {
  factory _$$CaptchaDataResponseImplCopyWith(_$CaptchaDataResponseImpl value,
          $Res Function(_$CaptchaDataResponseImpl) then) =
      __$$CaptchaDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, int ttl, CaptchaDataResponseData? data});

  @override
  $CaptchaDataResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CaptchaDataResponseImplCopyWithImpl<$Res>
    extends _$CaptchaDataResponseCopyWithImpl<$Res, _$CaptchaDataResponseImpl>
    implements _$$CaptchaDataResponseImplCopyWith<$Res> {
  __$$CaptchaDataResponseImplCopyWithImpl(_$CaptchaDataResponseImpl _value,
      $Res Function(_$CaptchaDataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaptchaDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? ttl = null,
    Object? data = freezed,
  }) {
    return _then(_$CaptchaDataResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      ttl: null == ttl
          ? _value.ttl
          : ttl // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CaptchaDataResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaptchaDataResponseImpl implements _CaptchaDataResponse {
  const _$CaptchaDataResponseImpl(
      {required this.code,
      required this.message,
      required this.ttl,
      required this.data});

  factory _$CaptchaDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaptchaDataResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final int ttl;
  @override
  final CaptchaDataResponseData? data;

  @override
  String toString() {
    return 'CaptchaDataResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptchaDataResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of CaptchaDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptchaDataResponseImplCopyWith<_$CaptchaDataResponseImpl> get copyWith =>
      __$$CaptchaDataResponseImplCopyWithImpl<_$CaptchaDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaptchaDataResponseImplToJson(
      this,
    );
  }
}

abstract class _CaptchaDataResponse implements CaptchaDataResponse {
  const factory _CaptchaDataResponse(
          {required final int code,
          required final String message,
          required final int ttl,
          required final CaptchaDataResponseData? data}) =
      _$CaptchaDataResponseImpl;

  factory _CaptchaDataResponse.fromJson(Map<String, dynamic> json) =
      _$CaptchaDataResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  int get ttl;
  @override
  CaptchaDataResponseData? get data;

  /// Create a copy of CaptchaDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptchaDataResponseImplCopyWith<_$CaptchaDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CaptchaDataResponseData _$CaptchaDataResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CaptchaDataResponseData.fromJson(json);
}

/// @nodoc
mixin _$CaptchaDataResponseData {
  String get type => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  Geetest get geetest => throw _privateConstructorUsedError;
  Tencent get tencent => throw _privateConstructorUsedError;

  /// Serializes this CaptchaDataResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CaptchaDataResponseDataCopyWith<CaptchaDataResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptchaDataResponseDataCopyWith<$Res> {
  factory $CaptchaDataResponseDataCopyWith(CaptchaDataResponseData value,
          $Res Function(CaptchaDataResponseData) then) =
      _$CaptchaDataResponseDataCopyWithImpl<$Res, CaptchaDataResponseData>;
  @useResult
  $Res call({String type, String token, Geetest geetest, Tencent tencent});

  $GeetestCopyWith<$Res> get geetest;
  $TencentCopyWith<$Res> get tencent;
}

/// @nodoc
class _$CaptchaDataResponseDataCopyWithImpl<$Res,
        $Val extends CaptchaDataResponseData>
    implements $CaptchaDataResponseDataCopyWith<$Res> {
  _$CaptchaDataResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? token = null,
    Object? geetest = null,
    Object? tencent = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      geetest: null == geetest
          ? _value.geetest
          : geetest // ignore: cast_nullable_to_non_nullable
              as Geetest,
      tencent: null == tencent
          ? _value.tencent
          : tencent // ignore: cast_nullable_to_non_nullable
              as Tencent,
    ) as $Val);
  }

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeetestCopyWith<$Res> get geetest {
    return $GeetestCopyWith<$Res>(_value.geetest, (value) {
      return _then(_value.copyWith(geetest: value) as $Val);
    });
  }

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TencentCopyWith<$Res> get tencent {
    return $TencentCopyWith<$Res>(_value.tencent, (value) {
      return _then(_value.copyWith(tencent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaptchaDataResponseDataImplCopyWith<$Res>
    implements $CaptchaDataResponseDataCopyWith<$Res> {
  factory _$$CaptchaDataResponseDataImplCopyWith(
          _$CaptchaDataResponseDataImpl value,
          $Res Function(_$CaptchaDataResponseDataImpl) then) =
      __$$CaptchaDataResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String token, Geetest geetest, Tencent tencent});

  @override
  $GeetestCopyWith<$Res> get geetest;
  @override
  $TencentCopyWith<$Res> get tencent;
}

/// @nodoc
class __$$CaptchaDataResponseDataImplCopyWithImpl<$Res>
    extends _$CaptchaDataResponseDataCopyWithImpl<$Res,
        _$CaptchaDataResponseDataImpl>
    implements _$$CaptchaDataResponseDataImplCopyWith<$Res> {
  __$$CaptchaDataResponseDataImplCopyWithImpl(
      _$CaptchaDataResponseDataImpl _value,
      $Res Function(_$CaptchaDataResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? token = null,
    Object? geetest = null,
    Object? tencent = null,
  }) {
    return _then(_$CaptchaDataResponseDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      geetest: null == geetest
          ? _value.geetest
          : geetest // ignore: cast_nullable_to_non_nullable
              as Geetest,
      tencent: null == tencent
          ? _value.tencent
          : tencent // ignore: cast_nullable_to_non_nullable
              as Tencent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaptchaDataResponseDataImpl implements _CaptchaDataResponseData {
  const _$CaptchaDataResponseDataImpl(
      {required this.type,
      required this.token,
      required this.geetest,
      required this.tencent});

  factory _$CaptchaDataResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaptchaDataResponseDataImplFromJson(json);

  @override
  final String type;
  @override
  final String token;
  @override
  final Geetest geetest;
  @override
  final Tencent tencent;

  @override
  String toString() {
    return 'CaptchaDataResponseData(type: $type, token: $token, geetest: $geetest, tencent: $tencent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptchaDataResponseDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.geetest, geetest) || other.geetest == geetest) &&
            (identical(other.tencent, tencent) || other.tencent == tencent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, token, geetest, tencent);

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptchaDataResponseDataImplCopyWith<_$CaptchaDataResponseDataImpl>
      get copyWith => __$$CaptchaDataResponseDataImplCopyWithImpl<
          _$CaptchaDataResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaptchaDataResponseDataImplToJson(
      this,
    );
  }
}

abstract class _CaptchaDataResponseData implements CaptchaDataResponseData {
  const factory _CaptchaDataResponseData(
      {required final String type,
      required final String token,
      required final Geetest geetest,
      required final Tencent tencent}) = _$CaptchaDataResponseDataImpl;

  factory _CaptchaDataResponseData.fromJson(Map<String, dynamic> json) =
      _$CaptchaDataResponseDataImpl.fromJson;

  @override
  String get type;
  @override
  String get token;
  @override
  Geetest get geetest;
  @override
  Tencent get tencent;

  /// Create a copy of CaptchaDataResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptchaDataResponseDataImplCopyWith<_$CaptchaDataResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Geetest _$GeetestFromJson(Map<String, dynamic> json) {
  return _Geetest.fromJson(json);
}

/// @nodoc
mixin _$Geetest {
  String get challenge => throw _privateConstructorUsedError;
  String get gt => throw _privateConstructorUsedError;

  /// Serializes this Geetest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Geetest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeetestCopyWith<Geetest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeetestCopyWith<$Res> {
  factory $GeetestCopyWith(Geetest value, $Res Function(Geetest) then) =
      _$GeetestCopyWithImpl<$Res, Geetest>;
  @useResult
  $Res call({String challenge, String gt});
}

/// @nodoc
class _$GeetestCopyWithImpl<$Res, $Val extends Geetest>
    implements $GeetestCopyWith<$Res> {
  _$GeetestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Geetest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? gt = null,
  }) {
    return _then(_value.copyWith(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      gt: null == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeetestImplCopyWith<$Res> implements $GeetestCopyWith<$Res> {
  factory _$$GeetestImplCopyWith(
          _$GeetestImpl value, $Res Function(_$GeetestImpl) then) =
      __$$GeetestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String challenge, String gt});
}

/// @nodoc
class __$$GeetestImplCopyWithImpl<$Res>
    extends _$GeetestCopyWithImpl<$Res, _$GeetestImpl>
    implements _$$GeetestImplCopyWith<$Res> {
  __$$GeetestImplCopyWithImpl(
      _$GeetestImpl _value, $Res Function(_$GeetestImpl) _then)
      : super(_value, _then);

  /// Create a copy of Geetest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challenge = null,
    Object? gt = null,
  }) {
    return _then(_$GeetestImpl(
      challenge: null == challenge
          ? _value.challenge
          : challenge // ignore: cast_nullable_to_non_nullable
              as String,
      gt: null == gt
          ? _value.gt
          : gt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeetestImpl implements _Geetest {
  const _$GeetestImpl({required this.challenge, required this.gt});

  factory _$GeetestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeetestImplFromJson(json);

  @override
  final String challenge;
  @override
  final String gt;

  @override
  String toString() {
    return 'Geetest(challenge: $challenge, gt: $gt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeetestImpl &&
            (identical(other.challenge, challenge) ||
                other.challenge == challenge) &&
            (identical(other.gt, gt) || other.gt == gt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, challenge, gt);

  /// Create a copy of Geetest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeetestImplCopyWith<_$GeetestImpl> get copyWith =>
      __$$GeetestImplCopyWithImpl<_$GeetestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeetestImplToJson(
      this,
    );
  }
}

abstract class _Geetest implements Geetest {
  const factory _Geetest(
      {required final String challenge,
      required final String gt}) = _$GeetestImpl;

  factory _Geetest.fromJson(Map<String, dynamic> json) = _$GeetestImpl.fromJson;

  @override
  String get challenge;
  @override
  String get gt;

  /// Create a copy of Geetest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeetestImplCopyWith<_$GeetestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tencent _$TencentFromJson(Map<String, dynamic> json) {
  return _Tencent.fromJson(json);
}

/// @nodoc
mixin _$Tencent {
  String get appid => throw _privateConstructorUsedError;

  /// Serializes this Tencent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tencent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TencentCopyWith<Tencent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TencentCopyWith<$Res> {
  factory $TencentCopyWith(Tencent value, $Res Function(Tencent) then) =
      _$TencentCopyWithImpl<$Res, Tencent>;
  @useResult
  $Res call({String appid});
}

/// @nodoc
class _$TencentCopyWithImpl<$Res, $Val extends Tencent>
    implements $TencentCopyWith<$Res> {
  _$TencentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tencent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appid = null,
  }) {
    return _then(_value.copyWith(
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TencentImplCopyWith<$Res> implements $TencentCopyWith<$Res> {
  factory _$$TencentImplCopyWith(
          _$TencentImpl value, $Res Function(_$TencentImpl) then) =
      __$$TencentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appid});
}

/// @nodoc
class __$$TencentImplCopyWithImpl<$Res>
    extends _$TencentCopyWithImpl<$Res, _$TencentImpl>
    implements _$$TencentImplCopyWith<$Res> {
  __$$TencentImplCopyWithImpl(
      _$TencentImpl _value, $Res Function(_$TencentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tencent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appid = null,
  }) {
    return _then(_$TencentImpl(
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TencentImpl implements _Tencent {
  const _$TencentImpl({required this.appid});

  factory _$TencentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TencentImplFromJson(json);

  @override
  final String appid;

  @override
  String toString() {
    return 'Tencent(appid: $appid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TencentImpl &&
            (identical(other.appid, appid) || other.appid == appid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appid);

  /// Create a copy of Tencent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TencentImplCopyWith<_$TencentImpl> get copyWith =>
      __$$TencentImplCopyWithImpl<_$TencentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TencentImplToJson(
      this,
    );
  }
}

abstract class _Tencent implements Tencent {
  const factory _Tencent({required final String appid}) = _$TencentImpl;

  factory _Tencent.fromJson(Map<String, dynamic> json) = _$TencentImpl.fromJson;

  @override
  String get appid;

  /// Create a copy of Tencent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TencentImplCopyWith<_$TencentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
