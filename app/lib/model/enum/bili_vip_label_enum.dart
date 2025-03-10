import '../../gen/strings.g.dart';

enum BiliVipLabelEnum{
  free,
  vip,
  annual,
  tenannual,
  hundredannual;

  String getLabel() {
    switch (this) {
      case BiliVipLabelEnum.free:
        return t.model.free;
      case BiliVipLabelEnum.vip:
        return t.model.vip;
      case BiliVipLabelEnum.annual:
        return t.model.annualVip;
      case BiliVipLabelEnum.tenannual:
        return t.model.tenannualVip;
      case BiliVipLabelEnum.hundredannual:
        return t.model.hundredannual;
    }
  }


  static BiliVipLabelEnum fromLabel(String? label) {
    switch (label) {
      case '大会员':
        return BiliVipLabelEnum.vip;
      case '年度大会员':
        return BiliVipLabelEnum.annual;
      case '十年大会员':
        return BiliVipLabelEnum.tenannual;
      case '百年大会员':
        return BiliVipLabelEnum.hundredannual;
      default:
        return BiliVipLabelEnum.free;
    }
  }
}

