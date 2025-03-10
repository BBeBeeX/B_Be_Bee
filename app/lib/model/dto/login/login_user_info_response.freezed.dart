// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginUserInfoResponse _$LoginUserInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _LoginUserInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginUserInfoResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get ttl => throw _privateConstructorUsedError;
  UserInfoResponseData? get data => throw _privateConstructorUsedError;

  /// Serializes this LoginUserInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginUserInfoResponseCopyWith<LoginUserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserInfoResponseCopyWith<$Res> {
  factory $LoginUserInfoResponseCopyWith(LoginUserInfoResponse value,
          $Res Function(LoginUserInfoResponse) then) =
      _$LoginUserInfoResponseCopyWithImpl<$Res, LoginUserInfoResponse>;
  @useResult
  $Res call({int? code, String? message, int? ttl, UserInfoResponseData? data});

  $UserInfoResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginUserInfoResponseCopyWithImpl<$Res,
        $Val extends LoginUserInfoResponse>
    implements $LoginUserInfoResponseCopyWith<$Res> {
  _$LoginUserInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginUserInfoResponse
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
              as UserInfoResponseData?,
    ) as $Val);
  }

  /// Create a copy of LoginUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserInfoResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginUserInfoResponseImplCopyWith<$Res>
    implements $LoginUserInfoResponseCopyWith<$Res> {
  factory _$$LoginUserInfoResponseImplCopyWith(
          _$LoginUserInfoResponseImpl value,
          $Res Function(_$LoginUserInfoResponseImpl) then) =
      __$$LoginUserInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, int? ttl, UserInfoResponseData? data});

  @override
  $UserInfoResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoginUserInfoResponseImplCopyWithImpl<$Res>
    extends _$LoginUserInfoResponseCopyWithImpl<$Res,
        _$LoginUserInfoResponseImpl>
    implements _$$LoginUserInfoResponseImplCopyWith<$Res> {
  __$$LoginUserInfoResponseImplCopyWithImpl(_$LoginUserInfoResponseImpl _value,
      $Res Function(_$LoginUserInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? ttl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LoginUserInfoResponseImpl(
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
              as UserInfoResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUserInfoResponseImpl implements _LoginUserInfoResponse {
  const _$LoginUserInfoResponseImpl(
      {this.code, this.message, this.ttl, this.data});

  factory _$LoginUserInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserInfoResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? ttl;
  @override
  final UserInfoResponseData? data;

  @override
  String toString() {
    return 'LoginUserInfoResponse(code: $code, message: $message, ttl: $ttl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserInfoResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ttl, ttl) || other.ttl == ttl) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, ttl, data);

  /// Create a copy of LoginUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserInfoResponseImplCopyWith<_$LoginUserInfoResponseImpl>
      get copyWith => __$$LoginUserInfoResponseImplCopyWithImpl<
          _$LoginUserInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginUserInfoResponse implements LoginUserInfoResponse {
  const factory _LoginUserInfoResponse(
      {final int? code,
      final String? message,
      final int? ttl,
      final UserInfoResponseData? data}) = _$LoginUserInfoResponseImpl;

  factory _LoginUserInfoResponse.fromJson(Map<String, dynamic> json) =
      _$LoginUserInfoResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get ttl;
  @override
  UserInfoResponseData? get data;

  /// Create a copy of LoginUserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserInfoResponseImplCopyWith<_$LoginUserInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserInfoResponseData _$UserInfoResponseDataFromJson(Map<String, dynamic> json) {
  return _UserInfoResponseData.fromJson(json);
}

/// @nodoc
mixin _$UserInfoResponseData {
  bool? get isLogin => throw _privateConstructorUsedError;
  int? get email_verified => throw _privateConstructorUsedError;
  String? get face => throw _privateConstructorUsedError;
  int? get face_nft => throw _privateConstructorUsedError;
  int? get face_nft_type => throw _privateConstructorUsedError;
  LevelInfo? get level_info => throw _privateConstructorUsedError;
  int? get mid => throw _privateConstructorUsedError;
  int? get mobile_verified => throw _privateConstructorUsedError;
  double? get money => throw _privateConstructorUsedError;
  int? get moral => throw _privateConstructorUsedError;
  Official? get official => throw _privateConstructorUsedError;
  OfficialVerify? get officialVerify => throw _privateConstructorUsedError;
  Pendant? get pendant => throw _privateConstructorUsedError;
  int? get scores => throw _privateConstructorUsedError;
  String? get uname => throw _privateConstructorUsedError;
  int? get vipDueDate => throw _privateConstructorUsedError;
  int? get vipStatus => throw _privateConstructorUsedError;
  int? get vipType => throw _privateConstructorUsedError;
  int? get vip_pay_type => throw _privateConstructorUsedError;
  int? get vip_theme_type => throw _privateConstructorUsedError;
  VipLabel? get vip_label => throw _privateConstructorUsedError;
  int? get vip_avatar_subscript => throw _privateConstructorUsedError;
  String? get vip_nickname_color => throw _privateConstructorUsedError;
  Vip? get vip => throw _privateConstructorUsedError;
  Wallet? get wallet => throw _privateConstructorUsedError;
  bool? get has_shop => throw _privateConstructorUsedError;
  String? get shop_url => throw _privateConstructorUsedError;
  int? get allowance_count => throw _privateConstructorUsedError;
  int? get answer_status => throw _privateConstructorUsedError;
  int? get is_senior_member => throw _privateConstructorUsedError;
  WbiImg? get wbi_img => throw _privateConstructorUsedError;
  bool? get is_jury => throw _privateConstructorUsedError;

  /// Serializes this UserInfoResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoResponseDataCopyWith<UserInfoResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoResponseDataCopyWith<$Res> {
  factory $UserInfoResponseDataCopyWith(UserInfoResponseData value,
          $Res Function(UserInfoResponseData) then) =
      _$UserInfoResponseDataCopyWithImpl<$Res, UserInfoResponseData>;
  @useResult
  $Res call(
      {bool? isLogin,
      int? email_verified,
      String? face,
      int? face_nft,
      int? face_nft_type,
      LevelInfo? level_info,
      int? mid,
      int? mobile_verified,
      double? money,
      int? moral,
      Official? official,
      OfficialVerify? officialVerify,
      Pendant? pendant,
      int? scores,
      String? uname,
      int? vipDueDate,
      int? vipStatus,
      int? vipType,
      int? vip_pay_type,
      int? vip_theme_type,
      VipLabel? vip_label,
      int? vip_avatar_subscript,
      String? vip_nickname_color,
      Vip? vip,
      Wallet? wallet,
      bool? has_shop,
      String? shop_url,
      int? allowance_count,
      int? answer_status,
      int? is_senior_member,
      WbiImg? wbi_img,
      bool? is_jury});

  $LevelInfoCopyWith<$Res>? get level_info;
  $OfficialCopyWith<$Res>? get official;
  $OfficialVerifyCopyWith<$Res>? get officialVerify;
  $PendantCopyWith<$Res>? get pendant;
  $VipLabelCopyWith<$Res>? get vip_label;
  $VipCopyWith<$Res>? get vip;
  $WalletCopyWith<$Res>? get wallet;
  $WbiImgCopyWith<$Res>? get wbi_img;
}

/// @nodoc
class _$UserInfoResponseDataCopyWithImpl<$Res,
        $Val extends UserInfoResponseData>
    implements $UserInfoResponseDataCopyWith<$Res> {
  _$UserInfoResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = freezed,
    Object? email_verified = freezed,
    Object? face = freezed,
    Object? face_nft = freezed,
    Object? face_nft_type = freezed,
    Object? level_info = freezed,
    Object? mid = freezed,
    Object? mobile_verified = freezed,
    Object? money = freezed,
    Object? moral = freezed,
    Object? official = freezed,
    Object? officialVerify = freezed,
    Object? pendant = freezed,
    Object? scores = freezed,
    Object? uname = freezed,
    Object? vipDueDate = freezed,
    Object? vipStatus = freezed,
    Object? vipType = freezed,
    Object? vip_pay_type = freezed,
    Object? vip_theme_type = freezed,
    Object? vip_label = freezed,
    Object? vip_avatar_subscript = freezed,
    Object? vip_nickname_color = freezed,
    Object? vip = freezed,
    Object? wallet = freezed,
    Object? has_shop = freezed,
    Object? shop_url = freezed,
    Object? allowance_count = freezed,
    Object? answer_status = freezed,
    Object? is_senior_member = freezed,
    Object? wbi_img = freezed,
    Object? is_jury = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: freezed == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      email_verified: freezed == email_verified
          ? _value.email_verified
          : email_verified // ignore: cast_nullable_to_non_nullable
              as int?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
      face_nft: freezed == face_nft
          ? _value.face_nft
          : face_nft // ignore: cast_nullable_to_non_nullable
              as int?,
      face_nft_type: freezed == face_nft_type
          ? _value.face_nft_type
          : face_nft_type // ignore: cast_nullable_to_non_nullable
              as int?,
      level_info: freezed == level_info
          ? _value.level_info
          : level_info // ignore: cast_nullable_to_non_nullable
              as LevelInfo?,
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      mobile_verified: freezed == mobile_verified
          ? _value.mobile_verified
          : mobile_verified // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double?,
      moral: freezed == moral
          ? _value.moral
          : moral // ignore: cast_nullable_to_non_nullable
              as int?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as Official?,
      officialVerify: freezed == officialVerify
          ? _value.officialVerify
          : officialVerify // ignore: cast_nullable_to_non_nullable
              as OfficialVerify?,
      pendant: freezed == pendant
          ? _value.pendant
          : pendant // ignore: cast_nullable_to_non_nullable
              as Pendant?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
      uname: freezed == uname
          ? _value.uname
          : uname // ignore: cast_nullable_to_non_nullable
              as String?,
      vipDueDate: freezed == vipDueDate
          ? _value.vipDueDate
          : vipDueDate // ignore: cast_nullable_to_non_nullable
              as int?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      vipType: freezed == vipType
          ? _value.vipType
          : vipType // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_pay_type: freezed == vip_pay_type
          ? _value.vip_pay_type
          : vip_pay_type // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_theme_type: freezed == vip_theme_type
          ? _value.vip_theme_type
          : vip_theme_type // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_label: freezed == vip_label
          ? _value.vip_label
          : vip_label // ignore: cast_nullable_to_non_nullable
              as VipLabel?,
      vip_avatar_subscript: freezed == vip_avatar_subscript
          ? _value.vip_avatar_subscript
          : vip_avatar_subscript // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_nickname_color: freezed == vip_nickname_color
          ? _value.vip_nickname_color
          : vip_nickname_color // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as Vip?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
      has_shop: freezed == has_shop
          ? _value.has_shop
          : has_shop // ignore: cast_nullable_to_non_nullable
              as bool?,
      shop_url: freezed == shop_url
          ? _value.shop_url
          : shop_url // ignore: cast_nullable_to_non_nullable
              as String?,
      allowance_count: freezed == allowance_count
          ? _value.allowance_count
          : allowance_count // ignore: cast_nullable_to_non_nullable
              as int?,
      answer_status: freezed == answer_status
          ? _value.answer_status
          : answer_status // ignore: cast_nullable_to_non_nullable
              as int?,
      is_senior_member: freezed == is_senior_member
          ? _value.is_senior_member
          : is_senior_member // ignore: cast_nullable_to_non_nullable
              as int?,
      wbi_img: freezed == wbi_img
          ? _value.wbi_img
          : wbi_img // ignore: cast_nullable_to_non_nullable
              as WbiImg?,
      is_jury: freezed == is_jury
          ? _value.is_jury
          : is_jury // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LevelInfoCopyWith<$Res>? get level_info {
    if (_value.level_info == null) {
      return null;
    }

    return $LevelInfoCopyWith<$Res>(_value.level_info!, (value) {
      return _then(_value.copyWith(level_info: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfficialCopyWith<$Res>? get official {
    if (_value.official == null) {
      return null;
    }

    return $OfficialCopyWith<$Res>(_value.official!, (value) {
      return _then(_value.copyWith(official: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfficialVerifyCopyWith<$Res>? get officialVerify {
    if (_value.officialVerify == null) {
      return null;
    }

    return $OfficialVerifyCopyWith<$Res>(_value.officialVerify!, (value) {
      return _then(_value.copyWith(officialVerify: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PendantCopyWith<$Res>? get pendant {
    if (_value.pendant == null) {
      return null;
    }

    return $PendantCopyWith<$Res>(_value.pendant!, (value) {
      return _then(_value.copyWith(pendant: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VipLabelCopyWith<$Res>? get vip_label {
    if (_value.vip_label == null) {
      return null;
    }

    return $VipLabelCopyWith<$Res>(_value.vip_label!, (value) {
      return _then(_value.copyWith(vip_label: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VipCopyWith<$Res>? get vip {
    if (_value.vip == null) {
      return null;
    }

    return $VipCopyWith<$Res>(_value.vip!, (value) {
      return _then(_value.copyWith(vip: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return $WalletCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WbiImgCopyWith<$Res>? get wbi_img {
    if (_value.wbi_img == null) {
      return null;
    }

    return $WbiImgCopyWith<$Res>(_value.wbi_img!, (value) {
      return _then(_value.copyWith(wbi_img: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoResponseDataImplCopyWith<$Res>
    implements $UserInfoResponseDataCopyWith<$Res> {
  factory _$$UserInfoResponseDataImplCopyWith(_$UserInfoResponseDataImpl value,
          $Res Function(_$UserInfoResponseDataImpl) then) =
      __$$UserInfoResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isLogin,
      int? email_verified,
      String? face,
      int? face_nft,
      int? face_nft_type,
      LevelInfo? level_info,
      int? mid,
      int? mobile_verified,
      double? money,
      int? moral,
      Official? official,
      OfficialVerify? officialVerify,
      Pendant? pendant,
      int? scores,
      String? uname,
      int? vipDueDate,
      int? vipStatus,
      int? vipType,
      int? vip_pay_type,
      int? vip_theme_type,
      VipLabel? vip_label,
      int? vip_avatar_subscript,
      String? vip_nickname_color,
      Vip? vip,
      Wallet? wallet,
      bool? has_shop,
      String? shop_url,
      int? allowance_count,
      int? answer_status,
      int? is_senior_member,
      WbiImg? wbi_img,
      bool? is_jury});

  @override
  $LevelInfoCopyWith<$Res>? get level_info;
  @override
  $OfficialCopyWith<$Res>? get official;
  @override
  $OfficialVerifyCopyWith<$Res>? get officialVerify;
  @override
  $PendantCopyWith<$Res>? get pendant;
  @override
  $VipLabelCopyWith<$Res>? get vip_label;
  @override
  $VipCopyWith<$Res>? get vip;
  @override
  $WalletCopyWith<$Res>? get wallet;
  @override
  $WbiImgCopyWith<$Res>? get wbi_img;
}

/// @nodoc
class __$$UserInfoResponseDataImplCopyWithImpl<$Res>
    extends _$UserInfoResponseDataCopyWithImpl<$Res, _$UserInfoResponseDataImpl>
    implements _$$UserInfoResponseDataImplCopyWith<$Res> {
  __$$UserInfoResponseDataImplCopyWithImpl(_$UserInfoResponseDataImpl _value,
      $Res Function(_$UserInfoResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = freezed,
    Object? email_verified = freezed,
    Object? face = freezed,
    Object? face_nft = freezed,
    Object? face_nft_type = freezed,
    Object? level_info = freezed,
    Object? mid = freezed,
    Object? mobile_verified = freezed,
    Object? money = freezed,
    Object? moral = freezed,
    Object? official = freezed,
    Object? officialVerify = freezed,
    Object? pendant = freezed,
    Object? scores = freezed,
    Object? uname = freezed,
    Object? vipDueDate = freezed,
    Object? vipStatus = freezed,
    Object? vipType = freezed,
    Object? vip_pay_type = freezed,
    Object? vip_theme_type = freezed,
    Object? vip_label = freezed,
    Object? vip_avatar_subscript = freezed,
    Object? vip_nickname_color = freezed,
    Object? vip = freezed,
    Object? wallet = freezed,
    Object? has_shop = freezed,
    Object? shop_url = freezed,
    Object? allowance_count = freezed,
    Object? answer_status = freezed,
    Object? is_senior_member = freezed,
    Object? wbi_img = freezed,
    Object? is_jury = freezed,
  }) {
    return _then(_$UserInfoResponseDataImpl(
      isLogin: freezed == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      email_verified: freezed == email_verified
          ? _value.email_verified
          : email_verified // ignore: cast_nullable_to_non_nullable
              as int?,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as String?,
      face_nft: freezed == face_nft
          ? _value.face_nft
          : face_nft // ignore: cast_nullable_to_non_nullable
              as int?,
      face_nft_type: freezed == face_nft_type
          ? _value.face_nft_type
          : face_nft_type // ignore: cast_nullable_to_non_nullable
              as int?,
      level_info: freezed == level_info
          ? _value.level_info
          : level_info // ignore: cast_nullable_to_non_nullable
              as LevelInfo?,
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      mobile_verified: freezed == mobile_verified
          ? _value.mobile_verified
          : mobile_verified // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double?,
      moral: freezed == moral
          ? _value.moral
          : moral // ignore: cast_nullable_to_non_nullable
              as int?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as Official?,
      officialVerify: freezed == officialVerify
          ? _value.officialVerify
          : officialVerify // ignore: cast_nullable_to_non_nullable
              as OfficialVerify?,
      pendant: freezed == pendant
          ? _value.pendant
          : pendant // ignore: cast_nullable_to_non_nullable
              as Pendant?,
      scores: freezed == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as int?,
      uname: freezed == uname
          ? _value.uname
          : uname // ignore: cast_nullable_to_non_nullable
              as String?,
      vipDueDate: freezed == vipDueDate
          ? _value.vipDueDate
          : vipDueDate // ignore: cast_nullable_to_non_nullable
              as int?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      vipType: freezed == vipType
          ? _value.vipType
          : vipType // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_pay_type: freezed == vip_pay_type
          ? _value.vip_pay_type
          : vip_pay_type // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_theme_type: freezed == vip_theme_type
          ? _value.vip_theme_type
          : vip_theme_type // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_label: freezed == vip_label
          ? _value.vip_label
          : vip_label // ignore: cast_nullable_to_non_nullable
              as VipLabel?,
      vip_avatar_subscript: freezed == vip_avatar_subscript
          ? _value.vip_avatar_subscript
          : vip_avatar_subscript // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_nickname_color: freezed == vip_nickname_color
          ? _value.vip_nickname_color
          : vip_nickname_color // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as Vip?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet?,
      has_shop: freezed == has_shop
          ? _value.has_shop
          : has_shop // ignore: cast_nullable_to_non_nullable
              as bool?,
      shop_url: freezed == shop_url
          ? _value.shop_url
          : shop_url // ignore: cast_nullable_to_non_nullable
              as String?,
      allowance_count: freezed == allowance_count
          ? _value.allowance_count
          : allowance_count // ignore: cast_nullable_to_non_nullable
              as int?,
      answer_status: freezed == answer_status
          ? _value.answer_status
          : answer_status // ignore: cast_nullable_to_non_nullable
              as int?,
      is_senior_member: freezed == is_senior_member
          ? _value.is_senior_member
          : is_senior_member // ignore: cast_nullable_to_non_nullable
              as int?,
      wbi_img: freezed == wbi_img
          ? _value.wbi_img
          : wbi_img // ignore: cast_nullable_to_non_nullable
              as WbiImg?,
      is_jury: freezed == is_jury
          ? _value.is_jury
          : is_jury // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoResponseDataImpl implements _UserInfoResponseData {
  const _$UserInfoResponseDataImpl(
      {this.isLogin,
      this.email_verified,
      this.face,
      this.face_nft,
      this.face_nft_type,
      this.level_info,
      this.mid,
      this.mobile_verified,
      this.money,
      this.moral,
      this.official,
      this.officialVerify,
      this.pendant,
      this.scores,
      this.uname,
      this.vipDueDate,
      this.vipStatus,
      this.vipType,
      this.vip_pay_type,
      this.vip_theme_type,
      this.vip_label,
      this.vip_avatar_subscript,
      this.vip_nickname_color,
      this.vip,
      this.wallet,
      this.has_shop,
      this.shop_url,
      this.allowance_count,
      this.answer_status,
      this.is_senior_member,
      this.wbi_img,
      this.is_jury});

  factory _$UserInfoResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoResponseDataImplFromJson(json);

  @override
  final bool? isLogin;
  @override
  final int? email_verified;
  @override
  final String? face;
  @override
  final int? face_nft;
  @override
  final int? face_nft_type;
  @override
  final LevelInfo? level_info;
  @override
  final int? mid;
  @override
  final int? mobile_verified;
  @override
  final double? money;
  @override
  final int? moral;
  @override
  final Official? official;
  @override
  final OfficialVerify? officialVerify;
  @override
  final Pendant? pendant;
  @override
  final int? scores;
  @override
  final String? uname;
  @override
  final int? vipDueDate;
  @override
  final int? vipStatus;
  @override
  final int? vipType;
  @override
  final int? vip_pay_type;
  @override
  final int? vip_theme_type;
  @override
  final VipLabel? vip_label;
  @override
  final int? vip_avatar_subscript;
  @override
  final String? vip_nickname_color;
  @override
  final Vip? vip;
  @override
  final Wallet? wallet;
  @override
  final bool? has_shop;
  @override
  final String? shop_url;
  @override
  final int? allowance_count;
  @override
  final int? answer_status;
  @override
  final int? is_senior_member;
  @override
  final WbiImg? wbi_img;
  @override
  final bool? is_jury;

  @override
  String toString() {
    return 'UserInfoResponseData(isLogin: $isLogin, email_verified: $email_verified, face: $face, face_nft: $face_nft, face_nft_type: $face_nft_type, level_info: $level_info, mid: $mid, mobile_verified: $mobile_verified, money: $money, moral: $moral, official: $official, officialVerify: $officialVerify, pendant: $pendant, scores: $scores, uname: $uname, vipDueDate: $vipDueDate, vipStatus: $vipStatus, vipType: $vipType, vip_pay_type: $vip_pay_type, vip_theme_type: $vip_theme_type, vip_label: $vip_label, vip_avatar_subscript: $vip_avatar_subscript, vip_nickname_color: $vip_nickname_color, vip: $vip, wallet: $wallet, has_shop: $has_shop, shop_url: $shop_url, allowance_count: $allowance_count, answer_status: $answer_status, is_senior_member: $is_senior_member, wbi_img: $wbi_img, is_jury: $is_jury)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoResponseDataImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.email_verified, email_verified) ||
                other.email_verified == email_verified) &&
            (identical(other.face, face) || other.face == face) &&
            (identical(other.face_nft, face_nft) ||
                other.face_nft == face_nft) &&
            (identical(other.face_nft_type, face_nft_type) ||
                other.face_nft_type == face_nft_type) &&
            (identical(other.level_info, level_info) ||
                other.level_info == level_info) &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.mobile_verified, mobile_verified) ||
                other.mobile_verified == mobile_verified) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.moral, moral) || other.moral == moral) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.officialVerify, officialVerify) ||
                other.officialVerify == officialVerify) &&
            (identical(other.pendant, pendant) || other.pendant == pendant) &&
            (identical(other.scores, scores) || other.scores == scores) &&
            (identical(other.uname, uname) || other.uname == uname) &&
            (identical(other.vipDueDate, vipDueDate) ||
                other.vipDueDate == vipDueDate) &&
            (identical(other.vipStatus, vipStatus) ||
                other.vipStatus == vipStatus) &&
            (identical(other.vipType, vipType) || other.vipType == vipType) &&
            (identical(other.vip_pay_type, vip_pay_type) ||
                other.vip_pay_type == vip_pay_type) &&
            (identical(other.vip_theme_type, vip_theme_type) ||
                other.vip_theme_type == vip_theme_type) &&
            (identical(other.vip_label, vip_label) ||
                other.vip_label == vip_label) &&
            (identical(other.vip_avatar_subscript, vip_avatar_subscript) ||
                other.vip_avatar_subscript == vip_avatar_subscript) &&
            (identical(other.vip_nickname_color, vip_nickname_color) ||
                other.vip_nickname_color == vip_nickname_color) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.has_shop, has_shop) ||
                other.has_shop == has_shop) &&
            (identical(other.shop_url, shop_url) ||
                other.shop_url == shop_url) &&
            (identical(other.allowance_count, allowance_count) ||
                other.allowance_count == allowance_count) &&
            (identical(other.answer_status, answer_status) ||
                other.answer_status == answer_status) &&
            (identical(other.is_senior_member, is_senior_member) ||
                other.is_senior_member == is_senior_member) &&
            (identical(other.wbi_img, wbi_img) || other.wbi_img == wbi_img) &&
            (identical(other.is_jury, is_jury) || other.is_jury == is_jury));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLogin,
        email_verified,
        face,
        face_nft,
        face_nft_type,
        level_info,
        mid,
        mobile_verified,
        money,
        moral,
        official,
        officialVerify,
        pendant,
        scores,
        uname,
        vipDueDate,
        vipStatus,
        vipType,
        vip_pay_type,
        vip_theme_type,
        vip_label,
        vip_avatar_subscript,
        vip_nickname_color,
        vip,
        wallet,
        has_shop,
        shop_url,
        allowance_count,
        answer_status,
        is_senior_member,
        wbi_img,
        is_jury
      ]);

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoResponseDataImplCopyWith<_$UserInfoResponseDataImpl>
      get copyWith =>
          __$$UserInfoResponseDataImplCopyWithImpl<_$UserInfoResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UserInfoResponseData implements UserInfoResponseData {
  const factory _UserInfoResponseData(
      {final bool? isLogin,
      final int? email_verified,
      final String? face,
      final int? face_nft,
      final int? face_nft_type,
      final LevelInfo? level_info,
      final int? mid,
      final int? mobile_verified,
      final double? money,
      final int? moral,
      final Official? official,
      final OfficialVerify? officialVerify,
      final Pendant? pendant,
      final int? scores,
      final String? uname,
      final int? vipDueDate,
      final int? vipStatus,
      final int? vipType,
      final int? vip_pay_type,
      final int? vip_theme_type,
      final VipLabel? vip_label,
      final int? vip_avatar_subscript,
      final String? vip_nickname_color,
      final Vip? vip,
      final Wallet? wallet,
      final bool? has_shop,
      final String? shop_url,
      final int? allowance_count,
      final int? answer_status,
      final int? is_senior_member,
      final WbiImg? wbi_img,
      final bool? is_jury}) = _$UserInfoResponseDataImpl;

  factory _UserInfoResponseData.fromJson(Map<String, dynamic> json) =
      _$UserInfoResponseDataImpl.fromJson;

  @override
  bool? get isLogin;
  @override
  int? get email_verified;
  @override
  String? get face;
  @override
  int? get face_nft;
  @override
  int? get face_nft_type;
  @override
  LevelInfo? get level_info;
  @override
  int? get mid;
  @override
  int? get mobile_verified;
  @override
  double? get money;
  @override
  int? get moral;
  @override
  Official? get official;
  @override
  OfficialVerify? get officialVerify;
  @override
  Pendant? get pendant;
  @override
  int? get scores;
  @override
  String? get uname;
  @override
  int? get vipDueDate;
  @override
  int? get vipStatus;
  @override
  int? get vipType;
  @override
  int? get vip_pay_type;
  @override
  int? get vip_theme_type;
  @override
  VipLabel? get vip_label;
  @override
  int? get vip_avatar_subscript;
  @override
  String? get vip_nickname_color;
  @override
  Vip? get vip;
  @override
  Wallet? get wallet;
  @override
  bool? get has_shop;
  @override
  String? get shop_url;
  @override
  int? get allowance_count;
  @override
  int? get answer_status;
  @override
  int? get is_senior_member;
  @override
  WbiImg? get wbi_img;
  @override
  bool? get is_jury;

  /// Create a copy of UserInfoResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoResponseDataImplCopyWith<_$UserInfoResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LevelInfo _$LevelInfoFromJson(Map<String, dynamic> json) {
  return _LevelInfo.fromJson(json);
}

/// @nodoc
mixin _$LevelInfo {
  int? get current_level => throw _privateConstructorUsedError;
  int? get current_min => throw _privateConstructorUsedError;
  int? get current_exp => throw _privateConstructorUsedError;
  String? get next_exp => throw _privateConstructorUsedError;

  /// Serializes this LevelInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LevelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LevelInfoCopyWith<LevelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelInfoCopyWith<$Res> {
  factory $LevelInfoCopyWith(LevelInfo value, $Res Function(LevelInfo) then) =
      _$LevelInfoCopyWithImpl<$Res, LevelInfo>;
  @useResult
  $Res call(
      {int? current_level,
      int? current_min,
      int? current_exp,
      String? next_exp});
}

/// @nodoc
class _$LevelInfoCopyWithImpl<$Res, $Val extends LevelInfo>
    implements $LevelInfoCopyWith<$Res> {
  _$LevelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LevelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_level = freezed,
    Object? current_min = freezed,
    Object? current_exp = freezed,
    Object? next_exp = freezed,
  }) {
    return _then(_value.copyWith(
      current_level: freezed == current_level
          ? _value.current_level
          : current_level // ignore: cast_nullable_to_non_nullable
              as int?,
      current_min: freezed == current_min
          ? _value.current_min
          : current_min // ignore: cast_nullable_to_non_nullable
              as int?,
      current_exp: freezed == current_exp
          ? _value.current_exp
          : current_exp // ignore: cast_nullable_to_non_nullable
              as int?,
      next_exp: freezed == next_exp
          ? _value.next_exp
          : next_exp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LevelInfoImplCopyWith<$Res>
    implements $LevelInfoCopyWith<$Res> {
  factory _$$LevelInfoImplCopyWith(
          _$LevelInfoImpl value, $Res Function(_$LevelInfoImpl) then) =
      __$$LevelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_level,
      int? current_min,
      int? current_exp,
      String? next_exp});
}

/// @nodoc
class __$$LevelInfoImplCopyWithImpl<$Res>
    extends _$LevelInfoCopyWithImpl<$Res, _$LevelInfoImpl>
    implements _$$LevelInfoImplCopyWith<$Res> {
  __$$LevelInfoImplCopyWithImpl(
      _$LevelInfoImpl _value, $Res Function(_$LevelInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LevelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_level = freezed,
    Object? current_min = freezed,
    Object? current_exp = freezed,
    Object? next_exp = freezed,
  }) {
    return _then(_$LevelInfoImpl(
      current_level: freezed == current_level
          ? _value.current_level
          : current_level // ignore: cast_nullable_to_non_nullable
              as int?,
      current_min: freezed == current_min
          ? _value.current_min
          : current_min // ignore: cast_nullable_to_non_nullable
              as int?,
      current_exp: freezed == current_exp
          ? _value.current_exp
          : current_exp // ignore: cast_nullable_to_non_nullable
              as int?,
      next_exp: freezed == next_exp
          ? _value.next_exp
          : next_exp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LevelInfoImpl implements _LevelInfo {
  const _$LevelInfoImpl(
      {this.current_level, this.current_min, this.current_exp, this.next_exp});

  factory _$LevelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LevelInfoImplFromJson(json);

  @override
  final int? current_level;
  @override
  final int? current_min;
  @override
  final int? current_exp;
  @override
  final String? next_exp;

  @override
  String toString() {
    return 'LevelInfo(current_level: $current_level, current_min: $current_min, current_exp: $current_exp, next_exp: $next_exp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LevelInfoImpl &&
            (identical(other.current_level, current_level) ||
                other.current_level == current_level) &&
            (identical(other.current_min, current_min) ||
                other.current_min == current_min) &&
            (identical(other.current_exp, current_exp) ||
                other.current_exp == current_exp) &&
            (identical(other.next_exp, next_exp) ||
                other.next_exp == next_exp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_level, current_min, current_exp, next_exp);

  /// Create a copy of LevelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LevelInfoImplCopyWith<_$LevelInfoImpl> get copyWith =>
      __$$LevelInfoImplCopyWithImpl<_$LevelInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LevelInfoImplToJson(
      this,
    );
  }
}

abstract class _LevelInfo implements LevelInfo {
  const factory _LevelInfo(
      {final int? current_level,
      final int? current_min,
      final int? current_exp,
      final String? next_exp}) = _$LevelInfoImpl;

  factory _LevelInfo.fromJson(Map<String, dynamic> json) =
      _$LevelInfoImpl.fromJson;

  @override
  int? get current_level;
  @override
  int? get current_min;
  @override
  int? get current_exp;
  @override
  String? get next_exp;

  /// Create a copy of LevelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LevelInfoImplCopyWith<_$LevelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Official _$OfficialFromJson(Map<String, dynamic> json) {
  return _Official.fromJson(json);
}

/// @nodoc
mixin _$Official {
  int? get role => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  /// Serializes this Official to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfficialCopyWith<Official> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialCopyWith<$Res> {
  factory $OfficialCopyWith(Official value, $Res Function(Official) then) =
      _$OfficialCopyWithImpl<$Res, Official>;
  @useResult
  $Res call({int? role, String? title, String? desc, int? type});
}

/// @nodoc
class _$OfficialCopyWithImpl<$Res, $Val extends Official>
    implements $OfficialCopyWith<$Res> {
  _$OfficialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialImplCopyWith<$Res>
    implements $OfficialCopyWith<$Res> {
  factory _$$OfficialImplCopyWith(
          _$OfficialImpl value, $Res Function(_$OfficialImpl) then) =
      __$$OfficialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? role, String? title, String? desc, int? type});
}

/// @nodoc
class __$$OfficialImplCopyWithImpl<$Res>
    extends _$OfficialCopyWithImpl<$Res, _$OfficialImpl>
    implements _$$OfficialImplCopyWith<$Res> {
  __$$OfficialImplCopyWithImpl(
      _$OfficialImpl _value, $Res Function(_$OfficialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? title = freezed,
    Object? desc = freezed,
    Object? type = freezed,
  }) {
    return _then(_$OfficialImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficialImpl implements _Official {
  const _$OfficialImpl({this.role, this.title, this.desc, this.type});

  factory _$OfficialImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficialImplFromJson(json);

  @override
  final int? role;
  @override
  final String? title;
  @override
  final String? desc;
  @override
  final int? type;

  @override
  String toString() {
    return 'Official(role: $role, title: $title, desc: $desc, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, title, desc, type);

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialImplCopyWith<_$OfficialImpl> get copyWith =>
      __$$OfficialImplCopyWithImpl<_$OfficialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficialImplToJson(
      this,
    );
  }
}

abstract class _Official implements Official {
  const factory _Official(
      {final int? role,
      final String? title,
      final String? desc,
      final int? type}) = _$OfficialImpl;

  factory _Official.fromJson(Map<String, dynamic> json) =
      _$OfficialImpl.fromJson;

  @override
  int? get role;
  @override
  String? get title;
  @override
  String? get desc;
  @override
  int? get type;

  /// Create a copy of Official
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfficialImplCopyWith<_$OfficialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialVerify _$OfficialVerifyFromJson(Map<String, dynamic> json) {
  return _OfficialVerify.fromJson(json);
}

/// @nodoc
mixin _$OfficialVerify {
  int? get type => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  /// Serializes this OfficialVerify to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfficialVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfficialVerifyCopyWith<OfficialVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialVerifyCopyWith<$Res> {
  factory $OfficialVerifyCopyWith(
          OfficialVerify value, $Res Function(OfficialVerify) then) =
      _$OfficialVerifyCopyWithImpl<$Res, OfficialVerify>;
  @useResult
  $Res call({int? type, String? desc});
}

/// @nodoc
class _$OfficialVerifyCopyWithImpl<$Res, $Val extends OfficialVerify>
    implements $OfficialVerifyCopyWith<$Res> {
  _$OfficialVerifyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfficialVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficialVerifyImplCopyWith<$Res>
    implements $OfficialVerifyCopyWith<$Res> {
  factory _$$OfficialVerifyImplCopyWith(_$OfficialVerifyImpl value,
          $Res Function(_$OfficialVerifyImpl) then) =
      __$$OfficialVerifyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? type, String? desc});
}

/// @nodoc
class __$$OfficialVerifyImplCopyWithImpl<$Res>
    extends _$OfficialVerifyCopyWithImpl<$Res, _$OfficialVerifyImpl>
    implements _$$OfficialVerifyImplCopyWith<$Res> {
  __$$OfficialVerifyImplCopyWithImpl(
      _$OfficialVerifyImpl _value, $Res Function(_$OfficialVerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfficialVerify
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$OfficialVerifyImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfficialVerifyImpl implements _OfficialVerify {
  const _$OfficialVerifyImpl({this.type, this.desc});

  factory _$OfficialVerifyImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfficialVerifyImplFromJson(json);

  @override
  final int? type;
  @override
  final String? desc;

  @override
  String toString() {
    return 'OfficialVerify(type: $type, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficialVerifyImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, desc);

  /// Create a copy of OfficialVerify
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficialVerifyImplCopyWith<_$OfficialVerifyImpl> get copyWith =>
      __$$OfficialVerifyImplCopyWithImpl<_$OfficialVerifyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfficialVerifyImplToJson(
      this,
    );
  }
}

abstract class _OfficialVerify implements OfficialVerify {
  const factory _OfficialVerify({final int? type, final String? desc}) =
      _$OfficialVerifyImpl;

  factory _OfficialVerify.fromJson(Map<String, dynamic> json) =
      _$OfficialVerifyImpl.fromJson;

  @override
  int? get type;
  @override
  String? get desc;

  /// Create a copy of OfficialVerify
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfficialVerifyImplCopyWith<_$OfficialVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pendant _$PendantFromJson(Map<String, dynamic> json) {
  return _Pendant.fromJson(json);
}

/// @nodoc
mixin _$Pendant {
  int? get pid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get expire => throw _privateConstructorUsedError;
  String? get image_enhance => throw _privateConstructorUsedError;
  String? get image_enhance_frame => throw _privateConstructorUsedError;

  /// Serializes this Pendant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pendant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PendantCopyWith<Pendant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendantCopyWith<$Res> {
  factory $PendantCopyWith(Pendant value, $Res Function(Pendant) then) =
      _$PendantCopyWithImpl<$Res, Pendant>;
  @useResult
  $Res call(
      {int? pid,
      String? name,
      String? image,
      int? expire,
      String? image_enhance,
      String? image_enhance_frame});
}

/// @nodoc
class _$PendantCopyWithImpl<$Res, $Val extends Pendant>
    implements $PendantCopyWith<$Res> {
  _$PendantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pendant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pid = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? expire = freezed,
    Object? image_enhance = freezed,
    Object? image_enhance_frame = freezed,
  }) {
    return _then(_value.copyWith(
      pid: freezed == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as int?,
      image_enhance: freezed == image_enhance
          ? _value.image_enhance
          : image_enhance // ignore: cast_nullable_to_non_nullable
              as String?,
      image_enhance_frame: freezed == image_enhance_frame
          ? _value.image_enhance_frame
          : image_enhance_frame // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendantImplCopyWith<$Res> implements $PendantCopyWith<$Res> {
  factory _$$PendantImplCopyWith(
          _$PendantImpl value, $Res Function(_$PendantImpl) then) =
      __$$PendantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? pid,
      String? name,
      String? image,
      int? expire,
      String? image_enhance,
      String? image_enhance_frame});
}

/// @nodoc
class __$$PendantImplCopyWithImpl<$Res>
    extends _$PendantCopyWithImpl<$Res, _$PendantImpl>
    implements _$$PendantImplCopyWith<$Res> {
  __$$PendantImplCopyWithImpl(
      _$PendantImpl _value, $Res Function(_$PendantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pendant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pid = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? expire = freezed,
    Object? image_enhance = freezed,
    Object? image_enhance_frame = freezed,
  }) {
    return _then(_$PendantImpl(
      pid: freezed == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as int?,
      image_enhance: freezed == image_enhance
          ? _value.image_enhance
          : image_enhance // ignore: cast_nullable_to_non_nullable
              as String?,
      image_enhance_frame: freezed == image_enhance_frame
          ? _value.image_enhance_frame
          : image_enhance_frame // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PendantImpl implements _Pendant {
  const _$PendantImpl(
      {this.pid,
      this.name,
      this.image,
      this.expire,
      this.image_enhance,
      this.image_enhance_frame});

  factory _$PendantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendantImplFromJson(json);

  @override
  final int? pid;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? expire;
  @override
  final String? image_enhance;
  @override
  final String? image_enhance_frame;

  @override
  String toString() {
    return 'Pendant(pid: $pid, name: $name, image: $image, expire: $expire, image_enhance: $image_enhance, image_enhance_frame: $image_enhance_frame)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendantImpl &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.expire, expire) || other.expire == expire) &&
            (identical(other.image_enhance, image_enhance) ||
                other.image_enhance == image_enhance) &&
            (identical(other.image_enhance_frame, image_enhance_frame) ||
                other.image_enhance_frame == image_enhance_frame));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pid, name, image, expire,
      image_enhance, image_enhance_frame);

  /// Create a copy of Pendant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PendantImplCopyWith<_$PendantImpl> get copyWith =>
      __$$PendantImplCopyWithImpl<_$PendantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PendantImplToJson(
      this,
    );
  }
}

abstract class _Pendant implements Pendant {
  const factory _Pendant(
      {final int? pid,
      final String? name,
      final String? image,
      final int? expire,
      final String? image_enhance,
      final String? image_enhance_frame}) = _$PendantImpl;

  factory _Pendant.fromJson(Map<String, dynamic> json) = _$PendantImpl.fromJson;

  @override
  int? get pid;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get expire;
  @override
  String? get image_enhance;
  @override
  String? get image_enhance_frame;

  /// Create a copy of Pendant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PendantImplCopyWith<_$PendantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VipLabel _$VipLabelFromJson(Map<String, dynamic> json) {
  return _VipLabel.fromJson(json);
}

/// @nodoc
mixin _$VipLabel {
  String? get path => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get label_theme => throw _privateConstructorUsedError;
  String? get text_color => throw _privateConstructorUsedError;
  int? get bg_style => throw _privateConstructorUsedError;
  String? get bg_color => throw _privateConstructorUsedError;
  String? get border_color => throw _privateConstructorUsedError;
  bool? get use_img_label => throw _privateConstructorUsedError;
  String? get img_label_uri_hans => throw _privateConstructorUsedError;
  String? get img_label_uri_hant => throw _privateConstructorUsedError;
  String? get img_label_uri_han_static => throw _privateConstructorUsedError;
  String? get img_label_uri_hant_static => throw _privateConstructorUsedError;

  /// Serializes this VipLabel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VipLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VipLabelCopyWith<VipLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipLabelCopyWith<$Res> {
  factory $VipLabelCopyWith(VipLabel value, $Res Function(VipLabel) then) =
      _$VipLabelCopyWithImpl<$Res, VipLabel>;
  @useResult
  $Res call(
      {String? path,
      String? text,
      String? label_theme,
      String? text_color,
      int? bg_style,
      String? bg_color,
      String? border_color,
      bool? use_img_label,
      String? img_label_uri_hans,
      String? img_label_uri_hant,
      String? img_label_uri_han_static,
      String? img_label_uri_hant_static});
}

/// @nodoc
class _$VipLabelCopyWithImpl<$Res, $Val extends VipLabel>
    implements $VipLabelCopyWith<$Res> {
  _$VipLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VipLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? text = freezed,
    Object? label_theme = freezed,
    Object? text_color = freezed,
    Object? bg_style = freezed,
    Object? bg_color = freezed,
    Object? border_color = freezed,
    Object? use_img_label = freezed,
    Object? img_label_uri_hans = freezed,
    Object? img_label_uri_hant = freezed,
    Object? img_label_uri_han_static = freezed,
    Object? img_label_uri_hant_static = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      label_theme: freezed == label_theme
          ? _value.label_theme
          : label_theme // ignore: cast_nullable_to_non_nullable
              as String?,
      text_color: freezed == text_color
          ? _value.text_color
          : text_color // ignore: cast_nullable_to_non_nullable
              as String?,
      bg_style: freezed == bg_style
          ? _value.bg_style
          : bg_style // ignore: cast_nullable_to_non_nullable
              as int?,
      bg_color: freezed == bg_color
          ? _value.bg_color
          : bg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      border_color: freezed == border_color
          ? _value.border_color
          : border_color // ignore: cast_nullable_to_non_nullable
              as String?,
      use_img_label: freezed == use_img_label
          ? _value.use_img_label
          : use_img_label // ignore: cast_nullable_to_non_nullable
              as bool?,
      img_label_uri_hans: freezed == img_label_uri_hans
          ? _value.img_label_uri_hans
          : img_label_uri_hans // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant: freezed == img_label_uri_hant
          ? _value.img_label_uri_hant
          : img_label_uri_hant // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_han_static: freezed == img_label_uri_han_static
          ? _value.img_label_uri_han_static
          : img_label_uri_han_static // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant_static: freezed == img_label_uri_hant_static
          ? _value.img_label_uri_hant_static
          : img_label_uri_hant_static // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VipLabelImplCopyWith<$Res>
    implements $VipLabelCopyWith<$Res> {
  factory _$$VipLabelImplCopyWith(
          _$VipLabelImpl value, $Res Function(_$VipLabelImpl) then) =
      __$$VipLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? path,
      String? text,
      String? label_theme,
      String? text_color,
      int? bg_style,
      String? bg_color,
      String? border_color,
      bool? use_img_label,
      String? img_label_uri_hans,
      String? img_label_uri_hant,
      String? img_label_uri_han_static,
      String? img_label_uri_hant_static});
}

/// @nodoc
class __$$VipLabelImplCopyWithImpl<$Res>
    extends _$VipLabelCopyWithImpl<$Res, _$VipLabelImpl>
    implements _$$VipLabelImplCopyWith<$Res> {
  __$$VipLabelImplCopyWithImpl(
      _$VipLabelImpl _value, $Res Function(_$VipLabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VipLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? text = freezed,
    Object? label_theme = freezed,
    Object? text_color = freezed,
    Object? bg_style = freezed,
    Object? bg_color = freezed,
    Object? border_color = freezed,
    Object? use_img_label = freezed,
    Object? img_label_uri_hans = freezed,
    Object? img_label_uri_hant = freezed,
    Object? img_label_uri_han_static = freezed,
    Object? img_label_uri_hant_static = freezed,
  }) {
    return _then(_$VipLabelImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      label_theme: freezed == label_theme
          ? _value.label_theme
          : label_theme // ignore: cast_nullable_to_non_nullable
              as String?,
      text_color: freezed == text_color
          ? _value.text_color
          : text_color // ignore: cast_nullable_to_non_nullable
              as String?,
      bg_style: freezed == bg_style
          ? _value.bg_style
          : bg_style // ignore: cast_nullable_to_non_nullable
              as int?,
      bg_color: freezed == bg_color
          ? _value.bg_color
          : bg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      border_color: freezed == border_color
          ? _value.border_color
          : border_color // ignore: cast_nullable_to_non_nullable
              as String?,
      use_img_label: freezed == use_img_label
          ? _value.use_img_label
          : use_img_label // ignore: cast_nullable_to_non_nullable
              as bool?,
      img_label_uri_hans: freezed == img_label_uri_hans
          ? _value.img_label_uri_hans
          : img_label_uri_hans // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant: freezed == img_label_uri_hant
          ? _value.img_label_uri_hant
          : img_label_uri_hant // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_han_static: freezed == img_label_uri_han_static
          ? _value.img_label_uri_han_static
          : img_label_uri_han_static // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant_static: freezed == img_label_uri_hant_static
          ? _value.img_label_uri_hant_static
          : img_label_uri_hant_static // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VipLabelImpl implements _VipLabel {
  const _$VipLabelImpl(
      {this.path,
      this.text,
      this.label_theme,
      this.text_color,
      this.bg_style,
      this.bg_color,
      this.border_color,
      this.use_img_label,
      this.img_label_uri_hans,
      this.img_label_uri_hant,
      this.img_label_uri_han_static,
      this.img_label_uri_hant_static});

  factory _$VipLabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VipLabelImplFromJson(json);

  @override
  final String? path;
  @override
  final String? text;
  @override
  final String? label_theme;
  @override
  final String? text_color;
  @override
  final int? bg_style;
  @override
  final String? bg_color;
  @override
  final String? border_color;
  @override
  final bool? use_img_label;
  @override
  final String? img_label_uri_hans;
  @override
  final String? img_label_uri_hant;
  @override
  final String? img_label_uri_han_static;
  @override
  final String? img_label_uri_hant_static;

  @override
  String toString() {
    return 'VipLabel(path: $path, text: $text, label_theme: $label_theme, text_color: $text_color, bg_style: $bg_style, bg_color: $bg_color, border_color: $border_color, use_img_label: $use_img_label, img_label_uri_hans: $img_label_uri_hans, img_label_uri_hant: $img_label_uri_hant, img_label_uri_han_static: $img_label_uri_han_static, img_label_uri_hant_static: $img_label_uri_hant_static)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VipLabelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.label_theme, label_theme) ||
                other.label_theme == label_theme) &&
            (identical(other.text_color, text_color) ||
                other.text_color == text_color) &&
            (identical(other.bg_style, bg_style) ||
                other.bg_style == bg_style) &&
            (identical(other.bg_color, bg_color) ||
                other.bg_color == bg_color) &&
            (identical(other.border_color, border_color) ||
                other.border_color == border_color) &&
            (identical(other.use_img_label, use_img_label) ||
                other.use_img_label == use_img_label) &&
            (identical(other.img_label_uri_hans, img_label_uri_hans) ||
                other.img_label_uri_hans == img_label_uri_hans) &&
            (identical(other.img_label_uri_hant, img_label_uri_hant) ||
                other.img_label_uri_hant == img_label_uri_hant) &&
            (identical(
                    other.img_label_uri_han_static, img_label_uri_han_static) ||
                other.img_label_uri_han_static == img_label_uri_han_static) &&
            (identical(other.img_label_uri_hant_static,
                    img_label_uri_hant_static) ||
                other.img_label_uri_hant_static == img_label_uri_hant_static));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      text,
      label_theme,
      text_color,
      bg_style,
      bg_color,
      border_color,
      use_img_label,
      img_label_uri_hans,
      img_label_uri_hant,
      img_label_uri_han_static,
      img_label_uri_hant_static);

  /// Create a copy of VipLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VipLabelImplCopyWith<_$VipLabelImpl> get copyWith =>
      __$$VipLabelImplCopyWithImpl<_$VipLabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VipLabelImplToJson(
      this,
    );
  }
}

abstract class _VipLabel implements VipLabel {
  const factory _VipLabel(
      {final String? path,
      final String? text,
      final String? label_theme,
      final String? text_color,
      final int? bg_style,
      final String? bg_color,
      final String? border_color,
      final bool? use_img_label,
      final String? img_label_uri_hans,
      final String? img_label_uri_hant,
      final String? img_label_uri_han_static,
      final String? img_label_uri_hant_static}) = _$VipLabelImpl;

  factory _VipLabel.fromJson(Map<String, dynamic> json) =
      _$VipLabelImpl.fromJson;

  @override
  String? get path;
  @override
  String? get text;
  @override
  String? get label_theme;
  @override
  String? get text_color;
  @override
  int? get bg_style;
  @override
  String? get bg_color;
  @override
  String? get border_color;
  @override
  bool? get use_img_label;
  @override
  String? get img_label_uri_hans;
  @override
  String? get img_label_uri_hant;
  @override
  String? get img_label_uri_han_static;
  @override
  String? get img_label_uri_hant_static;

  /// Create a copy of VipLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VipLabelImplCopyWith<_$VipLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vip _$VipFromJson(Map<String, dynamic> json) {
  return _Vip.fromJson(json);
}

/// @nodoc
mixin _$Vip {
  int? get type => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get due_date => throw _privateConstructorUsedError;
  int? get vip_pay_type => throw _privateConstructorUsedError;
  int? get theme_type => throw _privateConstructorUsedError;
  Label? get label => throw _privateConstructorUsedError;
  int? get avatar_subscript => throw _privateConstructorUsedError;
  String? get nickname_color => throw _privateConstructorUsedError;
  int? get role => throw _privateConstructorUsedError;
  String? get avatar_subscript_url => throw _privateConstructorUsedError;
  int? get tv_vip_status => throw _privateConstructorUsedError;
  int? get tv_vip_pay_type => throw _privateConstructorUsedError;
  int? get tv_due_date => throw _privateConstructorUsedError;

  /// Serializes this Vip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VipCopyWith<Vip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipCopyWith<$Res> {
  factory $VipCopyWith(Vip value, $Res Function(Vip) then) =
      _$VipCopyWithImpl<$Res, Vip>;
  @useResult
  $Res call(
      {int? type,
      int? status,
      int? due_date,
      int? vip_pay_type,
      int? theme_type,
      Label? label,
      int? avatar_subscript,
      String? nickname_color,
      int? role,
      String? avatar_subscript_url,
      int? tv_vip_status,
      int? tv_vip_pay_type,
      int? tv_due_date});

  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class _$VipCopyWithImpl<$Res, $Val extends Vip> implements $VipCopyWith<$Res> {
  _$VipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? due_date = freezed,
    Object? vip_pay_type = freezed,
    Object? theme_type = freezed,
    Object? label = freezed,
    Object? avatar_subscript = freezed,
    Object? nickname_color = freezed,
    Object? role = freezed,
    Object? avatar_subscript_url = freezed,
    Object? tv_vip_status = freezed,
    Object? tv_vip_pay_type = freezed,
    Object? tv_due_date = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      due_date: freezed == due_date
          ? _value.due_date
          : due_date // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_pay_type: freezed == vip_pay_type
          ? _value.vip_pay_type
          : vip_pay_type // ignore: cast_nullable_to_non_nullable
              as int?,
      theme_type: freezed == theme_type
          ? _value.theme_type
          : theme_type // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
      avatar_subscript: freezed == avatar_subscript
          ? _value.avatar_subscript
          : avatar_subscript // ignore: cast_nullable_to_non_nullable
              as int?,
      nickname_color: freezed == nickname_color
          ? _value.nickname_color
          : nickname_color // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar_subscript_url: freezed == avatar_subscript_url
          ? _value.avatar_subscript_url
          : avatar_subscript_url // ignore: cast_nullable_to_non_nullable
              as String?,
      tv_vip_status: freezed == tv_vip_status
          ? _value.tv_vip_status
          : tv_vip_status // ignore: cast_nullable_to_non_nullable
              as int?,
      tv_vip_pay_type: freezed == tv_vip_pay_type
          ? _value.tv_vip_pay_type
          : tv_vip_pay_type // ignore: cast_nullable_to_non_nullable
              as int?,
      tv_due_date: freezed == tv_due_date
          ? _value.tv_due_date
          : tv_due_date // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LabelCopyWith<$Res>? get label {
    if (_value.label == null) {
      return null;
    }

    return $LabelCopyWith<$Res>(_value.label!, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VipImplCopyWith<$Res> implements $VipCopyWith<$Res> {
  factory _$$VipImplCopyWith(_$VipImpl value, $Res Function(_$VipImpl) then) =
      __$$VipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? type,
      int? status,
      int? due_date,
      int? vip_pay_type,
      int? theme_type,
      Label? label,
      int? avatar_subscript,
      String? nickname_color,
      int? role,
      String? avatar_subscript_url,
      int? tv_vip_status,
      int? tv_vip_pay_type,
      int? tv_due_date});

  @override
  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class __$$VipImplCopyWithImpl<$Res> extends _$VipCopyWithImpl<$Res, _$VipImpl>
    implements _$$VipImplCopyWith<$Res> {
  __$$VipImplCopyWithImpl(_$VipImpl _value, $Res Function(_$VipImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? status = freezed,
    Object? due_date = freezed,
    Object? vip_pay_type = freezed,
    Object? theme_type = freezed,
    Object? label = freezed,
    Object? avatar_subscript = freezed,
    Object? nickname_color = freezed,
    Object? role = freezed,
    Object? avatar_subscript_url = freezed,
    Object? tv_vip_status = freezed,
    Object? tv_vip_pay_type = freezed,
    Object? tv_due_date = freezed,
  }) {
    return _then(_$VipImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      due_date: freezed == due_date
          ? _value.due_date
          : due_date // ignore: cast_nullable_to_non_nullable
              as int?,
      vip_pay_type: freezed == vip_pay_type
          ? _value.vip_pay_type
          : vip_pay_type // ignore: cast_nullable_to_non_nullable
              as int?,
      theme_type: freezed == theme_type
          ? _value.theme_type
          : theme_type // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
      avatar_subscript: freezed == avatar_subscript
          ? _value.avatar_subscript
          : avatar_subscript // ignore: cast_nullable_to_non_nullable
              as int?,
      nickname_color: freezed == nickname_color
          ? _value.nickname_color
          : nickname_color // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int?,
      avatar_subscript_url: freezed == avatar_subscript_url
          ? _value.avatar_subscript_url
          : avatar_subscript_url // ignore: cast_nullable_to_non_nullable
              as String?,
      tv_vip_status: freezed == tv_vip_status
          ? _value.tv_vip_status
          : tv_vip_status // ignore: cast_nullable_to_non_nullable
              as int?,
      tv_vip_pay_type: freezed == tv_vip_pay_type
          ? _value.tv_vip_pay_type
          : tv_vip_pay_type // ignore: cast_nullable_to_non_nullable
              as int?,
      tv_due_date: freezed == tv_due_date
          ? _value.tv_due_date
          : tv_due_date // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VipImpl implements _Vip {
  const _$VipImpl(
      {this.type,
      this.status,
      this.due_date,
      this.vip_pay_type,
      this.theme_type,
      this.label,
      this.avatar_subscript,
      this.nickname_color,
      this.role,
      this.avatar_subscript_url,
      this.tv_vip_status,
      this.tv_vip_pay_type,
      this.tv_due_date});

  factory _$VipImpl.fromJson(Map<String, dynamic> json) =>
      _$$VipImplFromJson(json);

  @override
  final int? type;
  @override
  final int? status;
  @override
  final int? due_date;
  @override
  final int? vip_pay_type;
  @override
  final int? theme_type;
  @override
  final Label? label;
  @override
  final int? avatar_subscript;
  @override
  final String? nickname_color;
  @override
  final int? role;
  @override
  final String? avatar_subscript_url;
  @override
  final int? tv_vip_status;
  @override
  final int? tv_vip_pay_type;
  @override
  final int? tv_due_date;

  @override
  String toString() {
    return 'Vip(type: $type, status: $status, due_date: $due_date, vip_pay_type: $vip_pay_type, theme_type: $theme_type, label: $label, avatar_subscript: $avatar_subscript, nickname_color: $nickname_color, role: $role, avatar_subscript_url: $avatar_subscript_url, tv_vip_status: $tv_vip_status, tv_vip_pay_type: $tv_vip_pay_type, tv_due_date: $tv_due_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VipImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.due_date, due_date) ||
                other.due_date == due_date) &&
            (identical(other.vip_pay_type, vip_pay_type) ||
                other.vip_pay_type == vip_pay_type) &&
            (identical(other.theme_type, theme_type) ||
                other.theme_type == theme_type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.avatar_subscript, avatar_subscript) ||
                other.avatar_subscript == avatar_subscript) &&
            (identical(other.nickname_color, nickname_color) ||
                other.nickname_color == nickname_color) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatar_subscript_url, avatar_subscript_url) ||
                other.avatar_subscript_url == avatar_subscript_url) &&
            (identical(other.tv_vip_status, tv_vip_status) ||
                other.tv_vip_status == tv_vip_status) &&
            (identical(other.tv_vip_pay_type, tv_vip_pay_type) ||
                other.tv_vip_pay_type == tv_vip_pay_type) &&
            (identical(other.tv_due_date, tv_due_date) ||
                other.tv_due_date == tv_due_date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      status,
      due_date,
      vip_pay_type,
      theme_type,
      label,
      avatar_subscript,
      nickname_color,
      role,
      avatar_subscript_url,
      tv_vip_status,
      tv_vip_pay_type,
      tv_due_date);

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VipImplCopyWith<_$VipImpl> get copyWith =>
      __$$VipImplCopyWithImpl<_$VipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VipImplToJson(
      this,
    );
  }
}

abstract class _Vip implements Vip {
  const factory _Vip(
      {final int? type,
      final int? status,
      final int? due_date,
      final int? vip_pay_type,
      final int? theme_type,
      final Label? label,
      final int? avatar_subscript,
      final String? nickname_color,
      final int? role,
      final String? avatar_subscript_url,
      final int? tv_vip_status,
      final int? tv_vip_pay_type,
      final int? tv_due_date}) = _$VipImpl;

  factory _Vip.fromJson(Map<String, dynamic> json) = _$VipImpl.fromJson;

  @override
  int? get type;
  @override
  int? get status;
  @override
  int? get due_date;
  @override
  int? get vip_pay_type;
  @override
  int? get theme_type;
  @override
  Label? get label;
  @override
  int? get avatar_subscript;
  @override
  String? get nickname_color;
  @override
  int? get role;
  @override
  String? get avatar_subscript_url;
  @override
  int? get tv_vip_status;
  @override
  int? get tv_vip_pay_type;
  @override
  int? get tv_due_date;

  /// Create a copy of Vip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VipImplCopyWith<_$VipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Label _$LabelFromJson(Map<String, dynamic> json) {
  return _Label.fromJson(json);
}

/// @nodoc
mixin _$Label {
  String? get path => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get label_theme => throw _privateConstructorUsedError;
  String? get text_color => throw _privateConstructorUsedError;
  int? get bg_style => throw _privateConstructorUsedError;
  String? get bg_color => throw _privateConstructorUsedError;
  String? get border_color => throw _privateConstructorUsedError;
  bool? get use_img_label => throw _privateConstructorUsedError;
  String? get img_label_uri_hans => throw _privateConstructorUsedError;
  String? get img_label_uri_hant => throw _privateConstructorUsedError;
  String? get img_label_uri_hans_static => throw _privateConstructorUsedError;
  String? get img_label_uri_hant_static => throw _privateConstructorUsedError;

  /// Serializes this Label to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabelCopyWith<Label> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelCopyWith<$Res> {
  factory $LabelCopyWith(Label value, $Res Function(Label) then) =
      _$LabelCopyWithImpl<$Res, Label>;
  @useResult
  $Res call(
      {String? path,
      String? text,
      String? label_theme,
      String? text_color,
      int? bg_style,
      String? bg_color,
      String? border_color,
      bool? use_img_label,
      String? img_label_uri_hans,
      String? img_label_uri_hant,
      String? img_label_uri_hans_static,
      String? img_label_uri_hant_static});
}

/// @nodoc
class _$LabelCopyWithImpl<$Res, $Val extends Label>
    implements $LabelCopyWith<$Res> {
  _$LabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? text = freezed,
    Object? label_theme = freezed,
    Object? text_color = freezed,
    Object? bg_style = freezed,
    Object? bg_color = freezed,
    Object? border_color = freezed,
    Object? use_img_label = freezed,
    Object? img_label_uri_hans = freezed,
    Object? img_label_uri_hant = freezed,
    Object? img_label_uri_hans_static = freezed,
    Object? img_label_uri_hant_static = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      label_theme: freezed == label_theme
          ? _value.label_theme
          : label_theme // ignore: cast_nullable_to_non_nullable
              as String?,
      text_color: freezed == text_color
          ? _value.text_color
          : text_color // ignore: cast_nullable_to_non_nullable
              as String?,
      bg_style: freezed == bg_style
          ? _value.bg_style
          : bg_style // ignore: cast_nullable_to_non_nullable
              as int?,
      bg_color: freezed == bg_color
          ? _value.bg_color
          : bg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      border_color: freezed == border_color
          ? _value.border_color
          : border_color // ignore: cast_nullable_to_non_nullable
              as String?,
      use_img_label: freezed == use_img_label
          ? _value.use_img_label
          : use_img_label // ignore: cast_nullable_to_non_nullable
              as bool?,
      img_label_uri_hans: freezed == img_label_uri_hans
          ? _value.img_label_uri_hans
          : img_label_uri_hans // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant: freezed == img_label_uri_hant
          ? _value.img_label_uri_hant
          : img_label_uri_hant // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hans_static: freezed == img_label_uri_hans_static
          ? _value.img_label_uri_hans_static
          : img_label_uri_hans_static // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant_static: freezed == img_label_uri_hant_static
          ? _value.img_label_uri_hant_static
          : img_label_uri_hant_static // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelImplCopyWith<$Res> implements $LabelCopyWith<$Res> {
  factory _$$LabelImplCopyWith(
          _$LabelImpl value, $Res Function(_$LabelImpl) then) =
      __$$LabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? path,
      String? text,
      String? label_theme,
      String? text_color,
      int? bg_style,
      String? bg_color,
      String? border_color,
      bool? use_img_label,
      String? img_label_uri_hans,
      String? img_label_uri_hant,
      String? img_label_uri_hans_static,
      String? img_label_uri_hant_static});
}

/// @nodoc
class __$$LabelImplCopyWithImpl<$Res>
    extends _$LabelCopyWithImpl<$Res, _$LabelImpl>
    implements _$$LabelImplCopyWith<$Res> {
  __$$LabelImplCopyWithImpl(
      _$LabelImpl _value, $Res Function(_$LabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? text = freezed,
    Object? label_theme = freezed,
    Object? text_color = freezed,
    Object? bg_style = freezed,
    Object? bg_color = freezed,
    Object? border_color = freezed,
    Object? use_img_label = freezed,
    Object? img_label_uri_hans = freezed,
    Object? img_label_uri_hant = freezed,
    Object? img_label_uri_hans_static = freezed,
    Object? img_label_uri_hant_static = freezed,
  }) {
    return _then(_$LabelImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      label_theme: freezed == label_theme
          ? _value.label_theme
          : label_theme // ignore: cast_nullable_to_non_nullable
              as String?,
      text_color: freezed == text_color
          ? _value.text_color
          : text_color // ignore: cast_nullable_to_non_nullable
              as String?,
      bg_style: freezed == bg_style
          ? _value.bg_style
          : bg_style // ignore: cast_nullable_to_non_nullable
              as int?,
      bg_color: freezed == bg_color
          ? _value.bg_color
          : bg_color // ignore: cast_nullable_to_non_nullable
              as String?,
      border_color: freezed == border_color
          ? _value.border_color
          : border_color // ignore: cast_nullable_to_non_nullable
              as String?,
      use_img_label: freezed == use_img_label
          ? _value.use_img_label
          : use_img_label // ignore: cast_nullable_to_non_nullable
              as bool?,
      img_label_uri_hans: freezed == img_label_uri_hans
          ? _value.img_label_uri_hans
          : img_label_uri_hans // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant: freezed == img_label_uri_hant
          ? _value.img_label_uri_hant
          : img_label_uri_hant // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hans_static: freezed == img_label_uri_hans_static
          ? _value.img_label_uri_hans_static
          : img_label_uri_hans_static // ignore: cast_nullable_to_non_nullable
              as String?,
      img_label_uri_hant_static: freezed == img_label_uri_hant_static
          ? _value.img_label_uri_hant_static
          : img_label_uri_hant_static // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelImpl implements _Label {
  const _$LabelImpl(
      {this.path,
      this.text,
      this.label_theme,
      this.text_color,
      this.bg_style,
      this.bg_color,
      this.border_color,
      this.use_img_label,
      this.img_label_uri_hans,
      this.img_label_uri_hant,
      this.img_label_uri_hans_static,
      this.img_label_uri_hant_static});

  factory _$LabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelImplFromJson(json);

  @override
  final String? path;
  @override
  final String? text;
  @override
  final String? label_theme;
  @override
  final String? text_color;
  @override
  final int? bg_style;
  @override
  final String? bg_color;
  @override
  final String? border_color;
  @override
  final bool? use_img_label;
  @override
  final String? img_label_uri_hans;
  @override
  final String? img_label_uri_hant;
  @override
  final String? img_label_uri_hans_static;
  @override
  final String? img_label_uri_hant_static;

  @override
  String toString() {
    return 'Label(path: $path, text: $text, label_theme: $label_theme, text_color: $text_color, bg_style: $bg_style, bg_color: $bg_color, border_color: $border_color, use_img_label: $use_img_label, img_label_uri_hans: $img_label_uri_hans, img_label_uri_hant: $img_label_uri_hant, img_label_uri_hans_static: $img_label_uri_hans_static, img_label_uri_hant_static: $img_label_uri_hant_static)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.label_theme, label_theme) ||
                other.label_theme == label_theme) &&
            (identical(other.text_color, text_color) ||
                other.text_color == text_color) &&
            (identical(other.bg_style, bg_style) ||
                other.bg_style == bg_style) &&
            (identical(other.bg_color, bg_color) ||
                other.bg_color == bg_color) &&
            (identical(other.border_color, border_color) ||
                other.border_color == border_color) &&
            (identical(other.use_img_label, use_img_label) ||
                other.use_img_label == use_img_label) &&
            (identical(other.img_label_uri_hans, img_label_uri_hans) ||
                other.img_label_uri_hans == img_label_uri_hans) &&
            (identical(other.img_label_uri_hant, img_label_uri_hant) ||
                other.img_label_uri_hant == img_label_uri_hant) &&
            (identical(other.img_label_uri_hans_static,
                    img_label_uri_hans_static) ||
                other.img_label_uri_hans_static == img_label_uri_hans_static) &&
            (identical(other.img_label_uri_hant_static,
                    img_label_uri_hant_static) ||
                other.img_label_uri_hant_static == img_label_uri_hant_static));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      text,
      label_theme,
      text_color,
      bg_style,
      bg_color,
      border_color,
      use_img_label,
      img_label_uri_hans,
      img_label_uri_hant,
      img_label_uri_hans_static,
      img_label_uri_hant_static);

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      __$$LabelImplCopyWithImpl<_$LabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelImplToJson(
      this,
    );
  }
}

abstract class _Label implements Label {
  const factory _Label(
      {final String? path,
      final String? text,
      final String? label_theme,
      final String? text_color,
      final int? bg_style,
      final String? bg_color,
      final String? border_color,
      final bool? use_img_label,
      final String? img_label_uri_hans,
      final String? img_label_uri_hant,
      final String? img_label_uri_hans_static,
      final String? img_label_uri_hant_static}) = _$LabelImpl;

  factory _Label.fromJson(Map<String, dynamic> json) = _$LabelImpl.fromJson;

  @override
  String? get path;
  @override
  String? get text;
  @override
  String? get label_theme;
  @override
  String? get text_color;
  @override
  int? get bg_style;
  @override
  String? get bg_color;
  @override
  String? get border_color;
  @override
  bool? get use_img_label;
  @override
  String? get img_label_uri_hans;
  @override
  String? get img_label_uri_hant;
  @override
  String? get img_label_uri_hans_static;
  @override
  String? get img_label_uri_hant_static;

  /// Create a copy of Label
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
  int? get mid => throw _privateConstructorUsedError;
  int? get bcoin_balance => throw _privateConstructorUsedError;
  int? get coupon_balance => throw _privateConstructorUsedError;
  int? get coupon_due_time => throw _privateConstructorUsedError;

  /// Serializes this Wallet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call(
      {int? mid,
      int? bcoin_balance,
      int? coupon_balance,
      int? coupon_due_time});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? bcoin_balance = freezed,
    Object? coupon_balance = freezed,
    Object? coupon_due_time = freezed,
  }) {
    return _then(_value.copyWith(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      bcoin_balance: freezed == bcoin_balance
          ? _value.bcoin_balance
          : bcoin_balance // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_balance: freezed == coupon_balance
          ? _value.coupon_balance
          : coupon_balance // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_due_time: freezed == coupon_due_time
          ? _value.coupon_due_time
          : coupon_due_time // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletImplCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$WalletImplCopyWith(
          _$WalletImpl value, $Res Function(_$WalletImpl) then) =
      __$$WalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mid,
      int? bcoin_balance,
      int? coupon_balance,
      int? coupon_due_time});
}

/// @nodoc
class __$$WalletImplCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$WalletImpl>
    implements _$$WalletImplCopyWith<$Res> {
  __$$WalletImplCopyWithImpl(
      _$WalletImpl _value, $Res Function(_$WalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mid = freezed,
    Object? bcoin_balance = freezed,
    Object? coupon_balance = freezed,
    Object? coupon_due_time = freezed,
  }) {
    return _then(_$WalletImpl(
      mid: freezed == mid
          ? _value.mid
          : mid // ignore: cast_nullable_to_non_nullable
              as int?,
      bcoin_balance: freezed == bcoin_balance
          ? _value.bcoin_balance
          : bcoin_balance // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_balance: freezed == coupon_balance
          ? _value.coupon_balance
          : coupon_balance // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_due_time: freezed == coupon_due_time
          ? _value.coupon_due_time
          : coupon_due_time // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletImpl implements _Wallet {
  const _$WalletImpl(
      {this.mid,
      this.bcoin_balance,
      this.coupon_balance,
      this.coupon_due_time});

  factory _$WalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletImplFromJson(json);

  @override
  final int? mid;
  @override
  final int? bcoin_balance;
  @override
  final int? coupon_balance;
  @override
  final int? coupon_due_time;

  @override
  String toString() {
    return 'Wallet(mid: $mid, bcoin_balance: $bcoin_balance, coupon_balance: $coupon_balance, coupon_due_time: $coupon_due_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletImpl &&
            (identical(other.mid, mid) || other.mid == mid) &&
            (identical(other.bcoin_balance, bcoin_balance) ||
                other.bcoin_balance == bcoin_balance) &&
            (identical(other.coupon_balance, coupon_balance) ||
                other.coupon_balance == coupon_balance) &&
            (identical(other.coupon_due_time, coupon_due_time) ||
                other.coupon_due_time == coupon_due_time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, mid, bcoin_balance, coupon_balance, coupon_due_time);

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      __$$WalletImplCopyWithImpl<_$WalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletImplToJson(
      this,
    );
  }
}

abstract class _Wallet implements Wallet {
  const factory _Wallet(
      {final int? mid,
      final int? bcoin_balance,
      final int? coupon_balance,
      final int? coupon_due_time}) = _$WalletImpl;

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$WalletImpl.fromJson;

  @override
  int? get mid;
  @override
  int? get bcoin_balance;
  @override
  int? get coupon_balance;
  @override
  int? get coupon_due_time;

  /// Create a copy of Wallet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WbiImg _$WbiImgFromJson(Map<String, dynamic> json) {
  return _WbiImg.fromJson(json);
}

/// @nodoc
mixin _$WbiImg {
  String? get img_url => throw _privateConstructorUsedError;
  String? get sub_url => throw _privateConstructorUsedError;

  /// Serializes this WbiImg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WbiImg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WbiImgCopyWith<WbiImg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WbiImgCopyWith<$Res> {
  factory $WbiImgCopyWith(WbiImg value, $Res Function(WbiImg) then) =
      _$WbiImgCopyWithImpl<$Res, WbiImg>;
  @useResult
  $Res call({String? img_url, String? sub_url});
}

/// @nodoc
class _$WbiImgCopyWithImpl<$Res, $Val extends WbiImg>
    implements $WbiImgCopyWith<$Res> {
  _$WbiImgCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WbiImg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img_url = freezed,
    Object? sub_url = freezed,
  }) {
    return _then(_value.copyWith(
      img_url: freezed == img_url
          ? _value.img_url
          : img_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_url: freezed == sub_url
          ? _value.sub_url
          : sub_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WbiImgImplCopyWith<$Res> implements $WbiImgCopyWith<$Res> {
  factory _$$WbiImgImplCopyWith(
          _$WbiImgImpl value, $Res Function(_$WbiImgImpl) then) =
      __$$WbiImgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? img_url, String? sub_url});
}

/// @nodoc
class __$$WbiImgImplCopyWithImpl<$Res>
    extends _$WbiImgCopyWithImpl<$Res, _$WbiImgImpl>
    implements _$$WbiImgImplCopyWith<$Res> {
  __$$WbiImgImplCopyWithImpl(
      _$WbiImgImpl _value, $Res Function(_$WbiImgImpl) _then)
      : super(_value, _then);

  /// Create a copy of WbiImg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img_url = freezed,
    Object? sub_url = freezed,
  }) {
    return _then(_$WbiImgImpl(
      img_url: freezed == img_url
          ? _value.img_url
          : img_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sub_url: freezed == sub_url
          ? _value.sub_url
          : sub_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WbiImgImpl implements _WbiImg {
  const _$WbiImgImpl({this.img_url, this.sub_url});

  factory _$WbiImgImpl.fromJson(Map<String, dynamic> json) =>
      _$$WbiImgImplFromJson(json);

  @override
  final String? img_url;
  @override
  final String? sub_url;

  @override
  String toString() {
    return 'WbiImg(img_url: $img_url, sub_url: $sub_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WbiImgImpl &&
            (identical(other.img_url, img_url) || other.img_url == img_url) &&
            (identical(other.sub_url, sub_url) || other.sub_url == sub_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, img_url, sub_url);

  /// Create a copy of WbiImg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WbiImgImplCopyWith<_$WbiImgImpl> get copyWith =>
      __$$WbiImgImplCopyWithImpl<_$WbiImgImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WbiImgImplToJson(
      this,
    );
  }
}

abstract class _WbiImg implements WbiImg {
  const factory _WbiImg({final String? img_url, final String? sub_url}) =
      _$WbiImgImpl;

  factory _WbiImg.fromJson(Map<String, dynamic> json) = _$WbiImgImpl.fromJson;

  @override
  String? get img_url;
  @override
  String? get sub_url;

  /// Create a copy of WbiImg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WbiImgImplCopyWith<_$WbiImgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
