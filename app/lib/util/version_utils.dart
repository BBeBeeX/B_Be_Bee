import 'package:package_info_plus/package_info_plus.dart';

class VersionUtils{
  static Future<String> getVersionToString() async {
    final info = await getVersion();
    if(info.buildNumber.isNotEmpty){
      return '${info.version} (${info.buildNumber})';
    }else{
      return info.version;
    }
  }

  static Future<PackageInfo> getVersion() async {
    return await PackageInfo.fromPlatform();
  }

  //需要更新返回2或-2
  static int toCompare(String v1,String v2){
    List<int> v1Parts = v1.split('.').map(int.parse).toList();
    List<int> v2Parts = v2.split('.').map(int.parse).toList();

    if (v1Parts[0] != v2Parts[0]) {
      return v1Parts[0] > v2Parts[0] ? 2 : -2;
    }
    if (v1Parts[1] != v2Parts[1]) {
      return v1Parts[1] > v2Parts[1] ? 2 : -2;
    }
    if (v1Parts[2] != v2Parts[2]) {
      return v1Parts[2] > v2Parts[2] ? 1 : -1;
    }
    return 0;
  }
}