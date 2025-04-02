import 'package:hive_ce/hive.dart';

part 'proxy_type_enum.g.dart';

@HiveType(typeId: 13)
enum ProxyTypeEnum {
  @HiveField(0)
  none,

  @HiveField(1)
  HTTP,

  @HiveField(2)
  SOCKS4,

  @HiveField(3)
  SOCKS5;

  String get label {
    switch (this) {
      case ProxyTypeEnum.none:
        return '不使用代理';
      case ProxyTypeEnum.HTTP:
        return 'HTTP';
      case ProxyTypeEnum.SOCKS4:
        return 'SOCKS4';
      case ProxyTypeEnum.SOCKS5:
        return 'SOCKS5';
    }
  }
}
