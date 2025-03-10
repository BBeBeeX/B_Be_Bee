// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioInfoResponseImpl _$$AudioInfoResponseImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioInfoResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioInfoResponseImpl(
          code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
          message: $checkedConvert('message', (v) => v as String?),
          ttl: $checkedConvert('ttl', (v) => (v as num?)?.toInt()),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : AudioInfoResponseData.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioInfoResponseImplToJson(
        _$AudioInfoResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'ttl': instance.ttl,
      'data': instance.data,
    };

_$AudioInfoResponseDataImpl _$$AudioInfoResponseDataImplFromJson(Map json) =>
    $checkedCreate(
      r'_$AudioInfoResponseDataImpl',
      json,
      ($checkedConvert) {
        final val = _$AudioInfoResponseDataImpl(
          bvid: $checkedConvert('bvid', (v) => v as String?),
          aid: $checkedConvert('aid', (v) => (v as num?)?.toInt()),
          videos: $checkedConvert('videos', (v) => (v as num?)?.toInt()),
          tid: $checkedConvert('tid', (v) => (v as num?)?.toInt()),
          tname: $checkedConvert('tname', (v) => v as String?),
          copyright: $checkedConvert('copyright', (v) => (v as num?)?.toInt()),
          pic: $checkedConvert('pic', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          pubdate: $checkedConvert('pubdate', (v) => (v as num?)?.toInt()),
          ctime: $checkedConvert('ctime', (v) => (v as num?)?.toInt()),
          desc: $checkedConvert('desc', (v) => v as String?),
          descV2: $checkedConvert(
              'descV2',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      DescV2.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          state: $checkedConvert('state', (v) => (v as num?)?.toInt()),
          duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
          missionId: $checkedConvert('missionId', (v) => (v as num?)?.toInt()),
          rights: $checkedConvert(
              'rights',
              (v) => v == null
                  ? null
                  : Rights.fromJson(Map<String, Object?>.from(v as Map))),
          owner: $checkedConvert(
              'owner',
              (v) => v == null
                  ? null
                  : Owner.fromJson(Map<String, Object?>.from(v as Map))),
          stat: $checkedConvert(
              'stat',
              (v) => v == null
                  ? null
                  : Stat.fromJson(Map<String, Object?>.from(v as Map))),
          argueInfo: $checkedConvert(
              'argueInfo',
              (v) => v == null
                  ? null
                  : ArgueInfo.fromJson(Map<String, Object?>.from(v as Map))),
          dynamicProperty:
              $checkedConvert('dynamicProperty', (v) => v as String?),
          cid: $checkedConvert('cid', (v) => (v as num?)?.toInt()),
          dimension: $checkedConvert(
              'dimension',
              (v) => v == null
                  ? null
                  : Dimension.fromJson(Map<String, Object?>.from(v as Map))),
          teenageMode:
              $checkedConvert('teenageMode', (v) => (v as num?)?.toInt()),
          isChargeableSeason:
              $checkedConvert('isChargeableSeason', (v) => v as bool?),
          isStory: $checkedConvert('isStory', (v) => v as bool?),
          isUpowerExclusive:
              $checkedConvert('isUpowerExclusive', (v) => v as bool?),
          isUpowerPlay: $checkedConvert('isUpowerPlay', (v) => v as bool?),
          enableVt: $checkedConvert('enableVt', (v) => (v as num?)?.toInt()),
          vtDisplay: $checkedConvert('vtDisplay', (v) => v as String?),
          noCache: $checkedConvert('noCache', (v) => v as bool?),
          pages: $checkedConvert(
              'pages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Pages.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          subtitle: $checkedConvert(
              'subtitle',
              (v) => v == null
                  ? null
                  : Subtitle.fromJson(Map<String, Object?>.from(v as Map))),
          staff: $checkedConvert(
              'staff',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Staff.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          isSeasonDisplay:
              $checkedConvert('isSeasonDisplay', (v) => v as bool?),
          userGarb: $checkedConvert(
              'userGarb',
              (v) => v == null
                  ? null
                  : UserGarb.fromJson(Map<String, Object?>.from(v as Map))),
          honorReply: $checkedConvert(
              'honorReply',
              (v) => v == null
                  ? null
                  : HonorReply.fromJson(Map<String, Object?>.from(v as Map))),
          likeIcon: $checkedConvert('likeIcon', (v) => v as String?),
          needJumpBv: $checkedConvert('needJumpBv', (v) => v as bool?),
          disableShowUpInfo:
              $checkedConvert('disableShowUpInfo', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AudioInfoResponseDataImplToJson(
        _$AudioInfoResponseDataImpl instance) =>
    <String, dynamic>{
      'bvid': instance.bvid,
      'aid': instance.aid,
      'videos': instance.videos,
      'tid': instance.tid,
      'tname': instance.tname,
      'copyright': instance.copyright,
      'pic': instance.pic,
      'title': instance.title,
      'pubdate': instance.pubdate,
      'ctime': instance.ctime,
      'desc': instance.desc,
      'descV2': instance.descV2,
      'state': instance.state,
      'duration': instance.duration,
      'missionId': instance.missionId,
      'rights': instance.rights,
      'owner': instance.owner,
      'stat': instance.stat,
      'argueInfo': instance.argueInfo,
      'dynamicProperty': instance.dynamicProperty,
      'cid': instance.cid,
      'dimension': instance.dimension,
      'teenageMode': instance.teenageMode,
      'isChargeableSeason': instance.isChargeableSeason,
      'isStory': instance.isStory,
      'isUpowerExclusive': instance.isUpowerExclusive,
      'isUpowerPlay': instance.isUpowerPlay,
      'enableVt': instance.enableVt,
      'vtDisplay': instance.vtDisplay,
      'noCache': instance.noCache,
      'pages': instance.pages,
      'subtitle': instance.subtitle,
      'staff': instance.staff,
      'isSeasonDisplay': instance.isSeasonDisplay,
      'userGarb': instance.userGarb,
      'honorReply': instance.honorReply,
      'likeIcon': instance.likeIcon,
      'needJumpBv': instance.needJumpBv,
      'disableShowUpInfo': instance.disableShowUpInfo,
    };

_$DescV2Impl _$$DescV2ImplFromJson(Map json) => $checkedCreate(
      r'_$DescV2Impl',
      json,
      ($checkedConvert) {
        final val = _$DescV2Impl(
          rawText: $checkedConvert('rawText', (v) => v as String?),
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          bizId: $checkedConvert('bizId', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DescV2ImplToJson(_$DescV2Impl instance) =>
    <String, dynamic>{
      'rawText': instance.rawText,
      'type': instance.type,
      'bizId': instance.bizId,
    };

_$RightsImpl _$$RightsImplFromJson(Map json) => $checkedCreate(
      r'_$RightsImpl',
      json,
      ($checkedConvert) {
        final val = _$RightsImpl(
          bp: $checkedConvert('bp', (v) => (v as num?)?.toInt()),
          elec: $checkedConvert('elec', (v) => (v as num?)?.toInt()),
          download: $checkedConvert('download', (v) => (v as num?)?.toInt()),
          movie: $checkedConvert('movie', (v) => (v as num?)?.toInt()),
          pay: $checkedConvert('pay', (v) => (v as num?)?.toInt()),
          hd5: $checkedConvert('hd5', (v) => (v as num?)?.toInt()),
          noReprint: $checkedConvert('noReprint', (v) => (v as num?)?.toInt()),
          autoplay: $checkedConvert('autoplay', (v) => (v as num?)?.toInt()),
          ugcPay: $checkedConvert('ugcPay', (v) => (v as num?)?.toInt()),
          isCooperation:
              $checkedConvert('isCooperation', (v) => (v as num?)?.toInt()),
          ugcPayPreview:
              $checkedConvert('ugcPayPreview', (v) => (v as num?)?.toInt()),
          noBackground:
              $checkedConvert('noBackground', (v) => (v as num?)?.toInt()),
          cleanMode: $checkedConvert('cleanMode', (v) => (v as num?)?.toInt()),
          isSteinGate:
              $checkedConvert('isSteinGate', (v) => (v as num?)?.toInt()),
          is360: $checkedConvert('is360', (v) => (v as num?)?.toInt()),
          noShare: $checkedConvert('noShare', (v) => (v as num?)?.toInt()),
          arcPay: $checkedConvert('arcPay', (v) => (v as num?)?.toInt()),
          freeWatch: $checkedConvert('freeWatch', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RightsImplToJson(_$RightsImpl instance) =>
    <String, dynamic>{
      'bp': instance.bp,
      'elec': instance.elec,
      'download': instance.download,
      'movie': instance.movie,
      'pay': instance.pay,
      'hd5': instance.hd5,
      'noReprint': instance.noReprint,
      'autoplay': instance.autoplay,
      'ugcPay': instance.ugcPay,
      'isCooperation': instance.isCooperation,
      'ugcPayPreview': instance.ugcPayPreview,
      'noBackground': instance.noBackground,
      'cleanMode': instance.cleanMode,
      'isSteinGate': instance.isSteinGate,
      'is360': instance.is360,
      'noShare': instance.noShare,
      'arcPay': instance.arcPay,
      'freeWatch': instance.freeWatch,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map json) => $checkedCreate(
      r'_$OwnerImpl',
      json,
      ($checkedConvert) {
        final val = _$OwnerImpl(
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          face: $checkedConvert('face', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'name': instance.name,
      'face': instance.face,
    };

_$StatImpl _$$StatImplFromJson(Map json) => $checkedCreate(
      r'_$StatImpl',
      json,
      ($checkedConvert) {
        final val = _$StatImpl(
          aid: $checkedConvert('aid', (v) => (v as num?)?.toInt()),
          view: $checkedConvert('view', (v) => (v as num?)?.toInt()),
          danmaku: $checkedConvert('danmaku', (v) => (v as num?)?.toInt()),
          reply: $checkedConvert('reply', (v) => (v as num?)?.toInt()),
          favorite: $checkedConvert('favorite', (v) => (v as num?)?.toInt()),
          coin: $checkedConvert('coin', (v) => (v as num?)?.toInt()),
          share: $checkedConvert('share', (v) => (v as num?)?.toInt()),
          nowRank: $checkedConvert('nowRank', (v) => (v as num?)?.toInt()),
          hisRank: $checkedConvert('hisRank', (v) => (v as num?)?.toInt()),
          like: $checkedConvert('like', (v) => (v as num?)?.toInt()),
          dislike: $checkedConvert('dislike', (v) => (v as num?)?.toInt()),
          evaluation: $checkedConvert('evaluation', (v) => v as String?),
          vt: $checkedConvert('vt', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StatImplToJson(_$StatImpl instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'view': instance.view,
      'danmaku': instance.danmaku,
      'reply': instance.reply,
      'favorite': instance.favorite,
      'coin': instance.coin,
      'share': instance.share,
      'nowRank': instance.nowRank,
      'hisRank': instance.hisRank,
      'like': instance.like,
      'dislike': instance.dislike,
      'evaluation': instance.evaluation,
      'vt': instance.vt,
    };

_$ArgueInfoImpl _$$ArgueInfoImplFromJson(Map json) => $checkedCreate(
      r'_$ArgueInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$ArgueInfoImpl(
          argueMsg: $checkedConvert('argueMsg', (v) => v as String?),
          argueType: $checkedConvert('argueType', (v) => (v as num?)?.toInt()),
          argueLink: $checkedConvert('argueLink', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ArgueInfoImplToJson(_$ArgueInfoImpl instance) =>
    <String, dynamic>{
      'argueMsg': instance.argueMsg,
      'argueType': instance.argueType,
      'argueLink': instance.argueLink,
    };

_$DimensionImpl _$$DimensionImplFromJson(Map json) => $checkedCreate(
      r'_$DimensionImpl',
      json,
      ($checkedConvert) {
        final val = _$DimensionImpl(
          width: $checkedConvert('width', (v) => (v as num?)?.toInt()),
          height: $checkedConvert('height', (v) => (v as num?)?.toInt()),
          rotate: $checkedConvert('rotate', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DimensionImplToJson(_$DimensionImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'rotate': instance.rotate,
    };

_$PagesImpl _$$PagesImplFromJson(Map json) => $checkedCreate(
      r'_$PagesImpl',
      json,
      ($checkedConvert) {
        final val = _$PagesImpl(
          cid: $checkedConvert('cid', (v) => (v as num?)?.toInt()),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          from: $checkedConvert('from', (v) => v as String?),
          partProperty: $checkedConvert('partProperty', (v) => v as String?),
          duration: $checkedConvert('duration', (v) => (v as num?)?.toInt()),
          vid: $checkedConvert('vid', (v) => v as String?),
          weblink: $checkedConvert('weblink', (v) => v as String?),
          dimension: $checkedConvert(
              'dimension',
              (v) => v == null
                  ? null
                  : Dimension.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PagesImplToJson(_$PagesImpl instance) =>
    <String, dynamic>{
      'cid': instance.cid,
      'page': instance.page,
      'from': instance.from,
      'partProperty': instance.partProperty,
      'duration': instance.duration,
      'vid': instance.vid,
      'weblink': instance.weblink,
      'dimension': instance.dimension,
    };

_$SubtitleImpl _$$SubtitleImplFromJson(Map json) => $checkedCreate(
      r'_$SubtitleImpl',
      json,
      ($checkedConvert) {
        final val = _$SubtitleImpl(
          allowSubmit: $checkedConvert('allowSubmit', (v) => v as bool?),
          list: $checkedConvert(
              'list',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => SubtitleList.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SubtitleImplToJson(_$SubtitleImpl instance) =>
    <String, dynamic>{
      'allowSubmit': instance.allowSubmit,
      'list': instance.list,
    };

_$SubtitleListImpl _$$SubtitleListImplFromJson(Map json) => $checkedCreate(
      r'_$SubtitleListImpl',
      json,
      ($checkedConvert) {
        final val = _$SubtitleListImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          lan: $checkedConvert('lan', (v) => v as String?),
          lanDoc: $checkedConvert('lanDoc', (v) => v as String?),
          isLock: $checkedConvert('isLock', (v) => v as bool?),
          subtitleUrl: $checkedConvert('subtitleUrl', (v) => v as String?),
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          idStr: $checkedConvert('idStr', (v) => v as String?),
          aiType: $checkedConvert('aiType', (v) => (v as num?)?.toInt()),
          aiStatus: $checkedConvert('aiStatus', (v) => (v as num?)?.toInt()),
          author: $checkedConvert(
              'author',
              (v) => v == null
                  ? null
                  : Author.fromJson(Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SubtitleListImplToJson(_$SubtitleListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lan': instance.lan,
      'lanDoc': instance.lanDoc,
      'isLock': instance.isLock,
      'subtitleUrl': instance.subtitleUrl,
      'type': instance.type,
      'idStr': instance.idStr,
      'aiType': instance.aiType,
      'aiStatus': instance.aiStatus,
      'author': instance.author,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map json) => $checkedCreate(
      r'_$AuthorImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthorImpl(
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String?),
          face: $checkedConvert('face', (v) => v as String?),
          sign: $checkedConvert('sign', (v) => v as String?),
          rank: $checkedConvert('rank', (v) => (v as num?)?.toInt()),
          birthday: $checkedConvert('birthday', (v) => (v as num?)?.toInt()),
          isFakeAccount:
              $checkedConvert('isFakeAccount', (v) => (v as num?)?.toInt()),
          isDeleted: $checkedConvert('isDeleted', (v) => (v as num?)?.toInt()),
          inRegAudit:
              $checkedConvert('inRegAudit', (v) => (v as num?)?.toInt()),
          isSeniorMember:
              $checkedConvert('isSeniorMember', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'name': instance.name,
      'sex': instance.sex,
      'face': instance.face,
      'sign': instance.sign,
      'rank': instance.rank,
      'birthday': instance.birthday,
      'isFakeAccount': instance.isFakeAccount,
      'isDeleted': instance.isDeleted,
      'inRegAudit': instance.inRegAudit,
      'isSeniorMember': instance.isSeniorMember,
    };

_$StaffImpl _$$StaffImplFromJson(Map json) => $checkedCreate(
      r'_$StaffImpl',
      json,
      ($checkedConvert) {
        final val = _$StaffImpl(
          mid: $checkedConvert('mid', (v) => (v as num?)?.toInt()),
          title: $checkedConvert('title', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          face: $checkedConvert('face', (v) => v as String?),
          vip: $checkedConvert(
              'vip',
              (v) => v == null
                  ? null
                  : Vip.fromJson(Map<String, Object?>.from(v as Map))),
          official: $checkedConvert(
              'official',
              (v) => v == null
                  ? null
                  : Official.fromJson(Map<String, Object?>.from(v as Map))),
          follower: $checkedConvert('follower', (v) => (v as num?)?.toInt()),
          labelStyle:
              $checkedConvert('labelStyle', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'mid': instance.mid,
      'title': instance.title,
      'name': instance.name,
      'face': instance.face,
      'vip': instance.vip,
      'official': instance.official,
      'follower': instance.follower,
      'labelStyle': instance.labelStyle,
    };

_$VipImpl _$$VipImplFromJson(Map json) => $checkedCreate(
      r'_$VipImpl',
      json,
      ($checkedConvert) {
        final val = _$VipImpl(
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status', (v) => (v as num?)?.toInt()),
          dueDate: $checkedConvert('dueDate', (v) => (v as num?)?.toInt()),
          vipPayType:
              $checkedConvert('vipPayType', (v) => (v as num?)?.toInt()),
          themeType: $checkedConvert('themeType', (v) => (v as num?)?.toInt()),
          label: $checkedConvert(
              'label',
              (v) => v == null
                  ? null
                  : Label.fromJson(Map<String, Object?>.from(v as Map))),
          avatarSubscript:
              $checkedConvert('avatarSubscript', (v) => (v as num?)?.toInt()),
          nicknameColor: $checkedConvert('nicknameColor', (v) => v as String?),
          role: $checkedConvert('role', (v) => (v as num?)?.toInt()),
          avatarSubscriptUrl:
              $checkedConvert('avatarSubscriptUrl', (v) => v as String?),
          tvVipStatus:
              $checkedConvert('tvVipStatus', (v) => (v as num?)?.toInt()),
          tvVipPayType:
              $checkedConvert('tvVipPayType', (v) => (v as num?)?.toInt()),
          tvDueDate: $checkedConvert('tvDueDate', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VipImplToJson(_$VipImpl instance) => <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'dueDate': instance.dueDate,
      'vipPayType': instance.vipPayType,
      'themeType': instance.themeType,
      'label': instance.label,
      'avatarSubscript': instance.avatarSubscript,
      'nicknameColor': instance.nicknameColor,
      'role': instance.role,
      'avatarSubscriptUrl': instance.avatarSubscriptUrl,
      'tvVipStatus': instance.tvVipStatus,
      'tvVipPayType': instance.tvVipPayType,
      'tvDueDate': instance.tvDueDate,
    };

_$LabelImpl _$$LabelImplFromJson(Map json) => $checkedCreate(
      r'_$LabelImpl',
      json,
      ($checkedConvert) {
        final val = _$LabelImpl(
          path: $checkedConvert('path', (v) => v as String?),
          text: $checkedConvert('text', (v) => v as String?),
          labelTheme: $checkedConvert('labelTheme', (v) => v as String?),
          textColor: $checkedConvert('textColor', (v) => v as String?),
          bgStyle: $checkedConvert('bgStyle', (v) => (v as num?)?.toInt()),
          bgColor: $checkedConvert('bgColor', (v) => v as String?),
          borderColor: $checkedConvert('borderColor', (v) => v as String?),
          useImgLabel: $checkedConvert('useImgLabel', (v) => v as bool?),
          imgLabelUriHans:
              $checkedConvert('imgLabelUriHans', (v) => v as String?),
          imgLabelUriHant:
              $checkedConvert('imgLabelUriHant', (v) => v as String?),
          imgLabelUriHansStatic:
              $checkedConvert('imgLabelUriHansStatic', (v) => v as String?),
          imgLabelUriHantStatic:
              $checkedConvert('imgLabelUriHantStatic', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LabelImplToJson(_$LabelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'text': instance.text,
      'labelTheme': instance.labelTheme,
      'textColor': instance.textColor,
      'bgStyle': instance.bgStyle,
      'bgColor': instance.bgColor,
      'borderColor': instance.borderColor,
      'useImgLabel': instance.useImgLabel,
      'imgLabelUriHans': instance.imgLabelUriHans,
      'imgLabelUriHant': instance.imgLabelUriHant,
      'imgLabelUriHansStatic': instance.imgLabelUriHansStatic,
      'imgLabelUriHantStatic': instance.imgLabelUriHantStatic,
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

_$UserGarbImpl _$$UserGarbImplFromJson(Map json) => $checkedCreate(
      r'_$UserGarbImpl',
      json,
      ($checkedConvert) {
        final val = _$UserGarbImpl(
          urlImageAniCut:
              $checkedConvert('urlImageAniCut', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserGarbImplToJson(_$UserGarbImpl instance) =>
    <String, dynamic>{
      'urlImageAniCut': instance.urlImageAniCut,
    };

_$HonorReplyImpl _$$HonorReplyImplFromJson(Map json) => $checkedCreate(
      r'_$HonorReplyImpl',
      json,
      ($checkedConvert) {
        final val = _$HonorReplyImpl(
          honor: $checkedConvert(
              'honor',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Honor.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HonorReplyImplToJson(_$HonorReplyImpl instance) =>
    <String, dynamic>{
      'honor': instance.honor,
    };

_$HonorImpl _$$HonorImplFromJson(Map json) => $checkedCreate(
      r'_$HonorImpl',
      json,
      ($checkedConvert) {
        final val = _$HonorImpl(
          aid: $checkedConvert('aid', (v) => (v as num?)?.toInt()),
          type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
          desc: $checkedConvert('desc', (v) => v as String?),
          weeklyRecommendNum: $checkedConvert(
              'weeklyRecommendNum', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HonorImplToJson(_$HonorImpl instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'type': instance.type,
      'desc': instance.desc,
      'weeklyRecommendNum': instance.weeklyRecommendNum,
    };
