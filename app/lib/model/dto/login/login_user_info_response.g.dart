// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginUserInfoResponseImpl _$$LoginUserInfoResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$LoginUserInfoResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$LoginUserInfoResponseImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserInfoResponseData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LoginUserInfoResponseImplToJson(
        _$LoginUserInfoResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$UserInfoResponseDataImpl _$$UserInfoResponseDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$UserInfoResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$UserInfoResponseDataImpl(
          isLogin: $checkedConvert('isLogin', (v) => v as bool?),
          email_verified:
              $checkedConvert('email_verified', (v) => (v as num?)?.toInt()),
          face: $checkedConvert('face', (v) => v as String?),
          face_nft: $checkedConvert('face_nft', (v) => (v as num?)?.toInt()),
          face_nft_type:
              $checkedConvert('face_nft_type', (v) => (v as num?)?.toInt()),
          level_info: $checkedConvert(
              'level_info',
              (v) => v == null
                  ? null
                  : LevelInfo.fromJson(Map<String, Object?>.from(v as Map))),
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          mobile_verified:
              $checkedConvert('mobile_verified', (v) => (v as num?)?.toInt()),
          money: $checkedConvert('money', (v) => (v as num?)?.toDouble()),
          moral: $checkedConvert('moral', (v) => (v as num?)?.toInt()),
          official: $checkedConvert(
              'official',
              (v) => v == null
                  ? null
                  : Official.fromJson(Map<String, Object?>.from(v as Map))),
          officialVerify: $checkedConvert(
              'officialVerify',
              (v) => v == null
                  ? null
                  : OfficialVerify.fromJson(
                      Map<String, Object?>.from(v as Map))),
          pendant: $checkedConvert(
              'pendant',
              (v) => v == null
                  ? null
                  : Pendant.fromJson(Map<String, Object?>.from(v as Map))),
          scores: $checkedConvert('scores', (v) => (v as num?)?.toInt()),
          uname: $checkedConvert('uname', (v) => v as String?),
          vipDueDate:
              $checkedConvert('vipDueDate', (v) => (v as num?)?.toInt()),
          vipStatus: $checkedConvert('vipStatus', (v) => (v as num?)?.toInt()),
          vipType: $checkedConvert('vipType', (v) => (v as num?)?.toInt()),
          vip_pay_type:
              $checkedConvert('vip_pay_type', (v) => (v as num?)?.toInt()),
          vip_theme_type:
              $checkedConvert('vip_theme_type', (v) => (v as num?)?.toInt()),
          vip_label: $checkedConvert(
              'vip_label',
              (v) => v == null
                  ? null
                  : VipLabel.fromJson(Map<String, Object?>.from(v as Map))),
          vip_avatar_subscript: $checkedConvert(
              'vip_avatar_subscript', (v) => (v as num?)?.toInt()),
          vip_nickname_color:
              $checkedConvert('vip_nickname_color', (v) => v as String?),
          vip: $checkedConvert(
              'vip',
              (v) => v == null
                  ? null
                  : Vip.fromJson(Map<String, Object?>.from(v as Map))),
          wallet: $checkedConvert(
              'wallet',
              (v) => v == null
                  ? null
                  : Wallet.fromJson(Map<String, Object?>.from(v as Map))),
          has_shop: $checkedConvert('has_shop', (v) => v as bool?),
          shop_url: $checkedConvert('shop_url', (v) => v as String?),
          allowance_count:
              $checkedConvert('allowance_count', (v) => (v as num?)?.toInt()),
          answer_status:
              $checkedConvert('answer_status', (v) => (v as num?)?.toInt()),
          is_senior_member:
              $checkedConvert('is_senior_member', (v) => (v as num?)?.toInt()),
          wbi_img: $checkedConvert(
              'wbi_img',
              (v) => v == null
                  ? null
                  : WbiImg.fromJson(Map<String, Object?>.from(v as Map))),
          is_jury: $checkedConvert('is_jury', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserInfoResponseDataImplToJson(
        _$UserInfoResponseDataImpl instance) =>
    <String, dynamic>{
      'isLogin': instance.isLogin,
      'email_verified': instance.email_verified,
      'face': instance.face,
      'face_nft': instance.face_nft,
      'face_nft_type': instance.face_nft_type,
      'level_info': instance.level_info,
      'mid': instance.mid,
      'mobile_verified': instance.mobile_verified,
      'money': instance.money,
      'moral': instance.moral,
      'official': instance.official,
      'officialVerify': instance.officialVerify,
      'pendant': instance.pendant,
      'scores': instance.scores,
      'uname': instance.uname,
      'vipDueDate': instance.vipDueDate,
      'vipStatus': instance.vipStatus,
      'vipType': instance.vipType,
      'vip_pay_type': instance.vip_pay_type,
      'vip_theme_type': instance.vip_theme_type,
      'vip_label': instance.vip_label,
      'vip_avatar_subscript': instance.vip_avatar_subscript,
      'vip_nickname_color': instance.vip_nickname_color,
      'vip': instance.vip,
      'wallet': instance.wallet,
      'has_shop': instance.has_shop,
      'shop_url': instance.shop_url,
      'allowance_count': instance.allowance_count,
      'answer_status': instance.answer_status,
      'is_senior_member': instance.is_senior_member,
      'wbi_img': instance.wbi_img,
      'is_jury': instance.is_jury,
    };

_$LevelInfoImpl _$$LevelInfoImplFromJson(Map json) => $checkedCreate(
      r'_$LevelInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$LevelInfoImpl(
          current_level:
              $checkedConvert('current_level', (v) => (v as num?)?.toInt()),
          current_min:
              $checkedConvert('current_min', (v) => (v as num?)?.toInt()),
          current_exp:
              $checkedConvert('current_exp', (v) => (v as num?)?.toInt()),
          next_exp: $checkedConvert('next_exp', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LevelInfoImplToJson(_$LevelInfoImpl instance) =>
    <String, dynamic>{
      'current_level': instance.current_level,
      'current_min': instance.current_min,
      'current_exp': instance.current_exp,
      'next_exp': instance.next_exp,
    };

_$OfficialImpl _$$OfficialImplFromJson(Map json) => $checkedCreate(
      r'_$OfficialImpl',
      json,
      ($checkedConvert) {
        final val = _$OfficialImpl(
          role: $checkedConvert('role', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          desc: $checkedConvert('desc', (v) => v as String?),
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$OfficialImplToJson(_$OfficialImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'title': instance.title,
      'desc': instance.desc,
      'type': instance.type,
    };

_$OfficialVerifyImpl _$$OfficialVerifyImplFromJson(Map json) => $checkedCreate(
      r'_$OfficialVerifyImpl',
      json,
      ($checkedConvert) {
        final val = _$OfficialVerifyImpl(
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          desc: $checkedConvert('desc', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$OfficialVerifyImplToJson(
        _$OfficialVerifyImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'desc': instance.desc,
    };

_$PendantImpl _$$PendantImplFromJson(Map json) => $checkedCreate(
      r'_$PendantImpl',
      json,
      ($checkedConvert) {
        final val = _$PendantImpl(
          pid: $checkedConvert('pid', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String?),
          expire: $checkedConvert('expire', (v) => (v as num?)?.toInt()),
          image_enhance: $checkedConvert('image_enhance', (v) => v as String?),
          image_enhance_frame:
              $checkedConvert('image_enhance_frame', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PendantImplToJson(_$PendantImpl instance) =>
    <String, dynamic>{
      'pid': instance.pid,
      'name': instance.name,
      'image': instance.image,
      'expire': instance.expire,
      'image_enhance': instance.image_enhance,
      'image_enhance_frame': instance.image_enhance_frame,
    };

_$VipLabelImpl _$$VipLabelImplFromJson(Map json) => $checkedCreate(
      r'_$VipLabelImpl',
      json,
      ($checkedConvert) {
        final val = _$VipLabelImpl(
          path: $checkedConvert('path', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          label_theme: $checkedConvert('label_theme', (v) => v as String?),
          text_color: $checkedConvert('text_color', (v) => v as String?),
          bg_style: $checkedConvert('bg_style', (v) => (v as num?)?.toInt()),
          bg_color: $checkedConvert('bg_color', (v) => v as String?),
          border_color: $checkedConvert('border_color', (v) => v as String?),
          use_img_label: $checkedConvert('use_img_label', (v) => v as bool?),
          img_label_uri_hans:
              $checkedConvert('img_label_uri_hans', (v) => v as String?),
          img_label_uri_hant:
              $checkedConvert('img_label_uri_hant', (v) => v as String?),
          img_label_uri_han_static:
              $checkedConvert('img_label_uri_han_static', (v) => v as String?),
          img_label_uri_hant_static:
              $checkedConvert('img_label_uri_hant_static', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VipLabelImplToJson(_$VipLabelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'text': instance.text,
      'label_theme': instance.label_theme,
      'text_color': instance.text_color,
      'bg_style': instance.bg_style,
      'bg_color': instance.bg_color,
      'border_color': instance.border_color,
      'use_img_label': instance.use_img_label,
      'img_label_uri_hans': instance.img_label_uri_hans,
      'img_label_uri_hant': instance.img_label_uri_hant,
      'img_label_uri_han_static': instance.img_label_uri_han_static,
      'img_label_uri_hant_static': instance.img_label_uri_hant_static,
    };

_$VipImpl _$$VipImplFromJson(Map json) => $checkedCreate(
      r'_$VipImpl',
      json,
      ($checkedConvert) {
        final val = _$VipImpl(
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status', (v) => (v as num?)?.toInt()),
          due_date: $checkedConvert('due_date', (v) => (v as num?)?.toInt()),
          vip_pay_type:
              $checkedConvert('vip_pay_type', (v) => (v as num?)?.toInt()),
          theme_type:
              $checkedConvert('theme_type', (v) => (v as num?)?.toInt()),
          label: $checkedConvert(
              'label',
              (v) => v == null
                  ? null
                  : Label.fromJson(Map<String, Object?>.from(v as Map))),
          avatar_subscript:
              $checkedConvert('avatar_subscript', (v) => (v as num?)?.toInt()),
          nickname_color:
              $checkedConvert('nickname_color', (v) => v as String?),
          role: $checkedConvert('role', (v) => (v as num?)?.toInt()),
          avatar_subscript_url:
              $checkedConvert('avatar_subscript_url', (v) => v as String?),
          tv_vip_status:
              $checkedConvert('tv_vip_status', (v) => (v as num?)?.toInt()),
          tv_vip_pay_type:
              $checkedConvert('tv_vip_pay_type', (v) => (v as num?)?.toInt()),
          tv_due_date:
              $checkedConvert('tv_due_date', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VipImplToJson(_$VipImpl instance) => <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'due_date': instance.due_date,
      'vip_pay_type': instance.vip_pay_type,
      'theme_type': instance.theme_type,
      'label': instance.label,
      'avatar_subscript': instance.avatar_subscript,
      'nickname_color': instance.nickname_color,
      'role': instance.role,
      'avatar_subscript_url': instance.avatar_subscript_url,
      'tv_vip_status': instance.tv_vip_status,
      'tv_vip_pay_type': instance.tv_vip_pay_type,
      'tv_due_date': instance.tv_due_date,
    };

_$LabelImpl _$$LabelImplFromJson(Map json) => $checkedCreate(
      r'_$LabelImpl',
      json,
      ($checkedConvert) {
        final val = _$LabelImpl(
          path: $checkedConvert('path', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          label_theme: $checkedConvert('label_theme', (v) => v as String?),
          text_color: $checkedConvert('text_color', (v) => v as String?),
          bg_style: $checkedConvert('bg_style', (v) => (v as num?)?.toInt()),
          bg_color: $checkedConvert('bg_color', (v) => v as String?),
          border_color: $checkedConvert('border_color', (v) => v as String?),
          use_img_label: $checkedConvert('use_img_label', (v) => v as bool?),
          img_label_uri_hans:
              $checkedConvert('img_label_uri_hans', (v) => v as String?),
          img_label_uri_hant:
              $checkedConvert('img_label_uri_hant', (v) => v as String?),
          img_label_uri_hans_static:
              $checkedConvert('img_label_uri_hans_static', (v) => v as String?),
          img_label_uri_hant_static:
              $checkedConvert('img_label_uri_hant_static', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LabelImplToJson(_$LabelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'text': instance.text,
      'label_theme': instance.label_theme,
      'text_color': instance.text_color,
      'bg_style': instance.bg_style,
      'bg_color': instance.bg_color,
      'border_color': instance.border_color,
      'use_img_label': instance.use_img_label,
      'img_label_uri_hans': instance.img_label_uri_hans,
      'img_label_uri_hant': instance.img_label_uri_hant,
      'img_label_uri_hans_static': instance.img_label_uri_hans_static,
      'img_label_uri_hant_static': instance.img_label_uri_hant_static,
    };

_$WalletImpl _$$WalletImplFromJson(Map json) => $checkedCreate(
      r'_$WalletImpl',
      json,
      ($checkedConvert) {
        final val = _$WalletImpl(
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          bcoin_balance:
              $checkedConvert('bcoin_balance', (v) => (v as num?)?.toInt()),
          coupon_balance:
              $checkedConvert('coupon_balance', (v) => (v as num?)?.toInt()),
          coupon_due_time:
              $checkedConvert('coupon_due_time', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'bcoin_balance': instance.bcoin_balance,
      'coupon_balance': instance.coupon_balance,
      'coupon_due_time': instance.coupon_due_time,
    };

_$WbiImgImpl _$$WbiImgImplFromJson(Map json) => $checkedCreate(
      r'_$WbiImgImpl',
      json,
      ($checkedConvert) {
        final val = _$WbiImgImpl(
          img_url: $checkedConvert('img_url', (v) => v as String?),
          sub_url: $checkedConvert('sub_url', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WbiImgImplToJson(_$WbiImgImpl instance) =>
    <String, dynamic>{
      'img_url': instance.img_url,
      'sub_url': instance.sub_url,
    };
