
import 'package:b_be_bee_app/model/enum/bili_vip_label_enum.dart';

class BiliUser {
  final bool isLogin;
  final String username;
  final int userLevel;
  final String avatarUrl;
  final BiliVipLabelEnum vip;

  const BiliUser({
     this.isLogin = false,
     this.username= '',
     this.userLevel = 0,
     this.avatarUrl = '',
    this.vip = BiliVipLabelEnum.free,
  });

  BiliUser copyWith({
     bool? isLogin,
     String? username ,
     int? userLevel,
     String? avatarUrl,
    BiliVipLabelEnum? vip,
  }) {
    return BiliUser(
      isLogin: isLogin ?? this.isLogin,
      username: username ?? this.username,
      userLevel: userLevel ?? this.userLevel,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      vip: vip ?? this.vip,
    );
  }
}