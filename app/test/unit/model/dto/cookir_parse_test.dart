import 'package:test/test.dart';
void main() {


  test('test parse cookie', () {
    String cookie1 = 'buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063';
    String cookie2 = 'fingerprint=5c915c20964b2752be4ecf45cfd76db8; buvid_fp=DA5FB3C3-11BB-1F8A-4633-0FF4A9F30E1131426infoc; buvid_fp_plain=undefined; buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063; buvid4=04E50DDD-153E-1139-2495-3D01C2241B3965065-125011217-SD7RhXzzslWVbe3XXlNZYw%3D%3D; _uuid=0E724AE5-F372-61BE-E857-00631A88030270018infoc';
    String cookie3 ='fingerprint=5c915c20964b2752be4ecf45cfd76db8; buvid_fp=DA5FB3C3-11BB-1F8A-4633-0FF4A9F30E1131426infoc; buvid_fp_plain=undefined; buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063; buvid4=04E50DDD-153E-1139-2495-3D01C2241B3965065-125011217-SD7RhXzzslWVbe3XXlNZYw%3D%3D; _uuid=0E724AE5-F372-61BE-E857-00631A88030270018infoc';
    String cookie4 = 'buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063; buvid4=04E50DDD-153E-1139-2495-3D01C2241B3965065-125011217-SD7RhXzzslWVbe3XXlNZYw%3D%3D; _uuid=0E724AE5-F372-61BE-E857-00631A88030270018infoc; bili_jct=1911374e114655ab4a497480d1d0a0fc; DedeUserID=34180887; DedeUserID__ckMd5=b248007756cfb994; sid=fz6xgwlp';
    String cookie5 = 'buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063; buvid4=04E50DDD-153E-1139-2495-3D01C2241B3965065-125011217-SD7RhXzzslWVbe3XXlNZYw%3D%3D; _uuid=0E724AE5-F372-61BE-E857-00631A88030270018infoc; bili_jct=1911374e114655ab4a497480d1d0a0fc; DedeUserID=34180887; DedeUserID__ckMd5=b248007756cfb994; sid=fz6xgwlp; b_lsid=110393F19_1945BA60040; bmg_af_switch=1; bmg_src_def_domain=i1.hdslb.com; bili_ticket=eyJhbGciOiJIUzI1NiIsImtpZCI6InMwMyIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MzY5NjM1ODksImlhdCI6MTczNjcwNDMyOSwicGx0IjotMX0._I5Dar1YAmZb52nVVZooISESoolRBMWg-wYXk0F7NOM; bili_ticket_expires=1736963529; buvid_fp=5c915c20964b2752be4ecf45cfd76db8';
    String cookie6 = 'buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063; buvid4=04E50DDD-153E-1139-2495-3D01C2241B3965065-125011217-SD7RhXzzslWVbe3XXlNZYw%3D%3D; _uuid=0E724AE5-F372-61BE-E857-00631A88030270018infoc; bili_jct=1911374e114655ab4a497480d1d0a0fc; DedeUserID=34180887; DedeUserID__ckMd5=b248007756cfb994; sid=fz6xgwlp; b_lsid=110393F19_1945BA60040; bmg_af_switch=1; bmg_src_def_domain=i1.hdslb.com; bili_ticket=eyJhbGciOiJIUzI1NiIsImtpZCI6InMwMyIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MzY5NjM1ODksImlhdCI6MTczNjcwNDMyOSwicGx0IjotMX0._I5Dar1YAmZb52nVVZooISESoolRBMWg-wYXk0F7NOM; bili_ticket_expires=1736963529; buvid_fp=5c915c20964b2752be4ecf45cfd76db8';
    String cookie7 = 'buvid3=9B3EAF08-BE3F-CBC7-4ACB-BAEDD492300163963infoc; b_nut=1736704063; buvid4=04E50DDD-153E-1139-2495-3D01C2241B3965065-125011217-SD7RhXzzslWVbe3XXlNZYw%3D%3D; _uuid=0E724AE5-F372-61BE-E857-00631A88030270018infoc; bili_jct=1911374e114655ab4a497480d1d0a0fc; DedeUserID=34180887; DedeUserID__ckMd5=b248007756cfb994; sid=fz6xgwlp; b_lsid=110393F19_1945BA60040; bmg_af_switch=1; bmg_src_def_domain=i1.hdslb.com; bili_ticket=eyJhbGciOiJIUzI1NiIsImtpZCI6InMwMyIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MzY5NjM1ODksImlhdCI6MTczNjcwNDMyOSwicGx0IjotMX0._I5Dar1YAmZb52nVVZooISESoolRBMWg-wYXk0F7NOM; bili_ticket_expires=1736963529; buvid_fp=5c915c20964b2752be4ecf45cfd76db8';
    // 将所有的 Cookie 字符串放入一个 List
    List<String> cookies = [cookie1, cookie2, cookie3, cookie4, cookie5,cookie6,cookie7];

    // 解析所有的 Cookie 字符串
    List<Map<String, String>> parsedCookies = cookies.map((cookie) {
      return parseCookies(cookie);
    }).toList();

    // 打印解析后的结果
    for (var cookieMap in parsedCookies) {
      if(cookieMap.isNotEmpty
          && cookieMap.containsKey('buvid3')
          && cookieMap.containsKey('buvid4')
          && cookieMap.containsKey('bili_jct')
          && cookieMap.containsKey('DedeUserID')
          && cookieMap.containsKey('bili_ticket')
          && cookieMap.containsKey('bili_ticket_expires')){
        print('=========================================================');
        print(true);
      }
      print(cookieMap);
    }
  }
   );
}

Map<String, String> parseCookies(String cookieString) {
  Map<String, String> cookieMap = {};

  List<String> cookieParts = cookieString.split(';');

  for (String part in cookieParts) {
    part = part.trim();  // 去除多余的空格
    if (part.contains('=')) {
      List<String> keyValue = part.split('=');
      String key = keyValue[0].trim();
      String value = keyValue[1].trim();
      cookieMap[key] = value;
    }
  }
  return cookieMap;
}
