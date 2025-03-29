import 'package:b_be_bee_app/gen/strings.g.dart';

enum LoginModeEnum {
  password,
  sms,
  qrcode,
  web;


  String getLabel() {
    switch (this) {
      case LoginModeEnum.password:
        return t.model.passwordLogin;
      case LoginModeEnum.sms:
        return t.model.smsLogin;
      case LoginModeEnum.qrcode:
        return t.model.qrcodeLogin;
      case LoginModeEnum.web:
        return t.model.webLogin;
    }
  }
}