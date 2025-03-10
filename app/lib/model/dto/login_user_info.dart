import 'package:b_be_bee_app/model/dto/login/login_user_info_response.dart';
import 'package:b_be_bee_app/model/enum/bili_vip_label_enum.dart';

class LoginUserInfo {
  LoginUserInfo(
      {required this.mid,
      required this.name,
      required this.avatarUrl,
      required this.levelInfo,
      required this.isLogin,
      required this.vip
      });
  static LoginUserInfo get zero => LoginUserInfo(
      mid: 0,
      name: '',
      avatarUrl: '',
      levelInfo: LevelInfo(),
      isLogin: false,
      vip: BiliVipLabelEnum.free,
  );
  int mid;
  String name;
  String avatarUrl;
  LevelInfo levelInfo;
  bool isLogin;
  BiliVipLabelEnum vip;
}
