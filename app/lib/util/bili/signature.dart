import 'dart:async';
import 'dart:convert';

import 'package:crypto/crypto.dart';
// import 'package:rhttp/rhttp.dart';
import 'package:http/http.dart' as http;

const List<int> mixinKeyEncTab = [
  46, 47, 18, 2, 53, 8, 23, 32, 15, 50, 10, 31, 58, 3, 45, 35, 27, 43, 5, 49,
  33, 9, 42, 19, 29, 28, 14, 39, 12, 38, 41, 13, 37, 48, 7, 16, 24, 55, 40,
  61, 26, 17, 0, 1, 60, 51, 30, 4, 22, 25, 54, 21, 56, 59, 6, 63, 57, 62, 11,
  36, 20, 34, 44, 52
];

String getMixinKey(String orig) {
  return List.generate(mixinKeyEncTab.length, (i) => orig[mixinKeyEncTab[i]])
      .join('')
      .substring(0, 32);
}

String md5Hash(String input) {
  final bytes = utf8.encode(input);
  final digest = md5.convert(bytes);
  return digest.toString();
}

Future<Map<String, String>> encWbi(Map<String, dynamic> params, String imgKey, String subKey) async {
  String mixinKey = getMixinKey(imgKey + subKey);
  int currTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  params['wts'] = currTime;

  var sortedParams = Map.fromEntries(params.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));

  sortedParams = sortedParams.map((key, value) {
    String newValue = value.toString().replaceAll(RegExp(r"[!'()*]"), '');
    return MapEntry(key, newValue);
  });

  String query = Uri(queryParameters: sortedParams).query;

  String wbiSign = md5Hash(query + mixinKey);
  sortedParams['w_rid'] = wbiSign;

  return sortedParams.map((key, value) => MapEntry(key, value.toString()));
}

Future<Map<String, String>> getWbiKeys() async {

  // final response = await Rhttp.get('https://api.bilibili.com/x/web-interface/nav', headers: const HttpHeaders.map({
  //     // HttpHeaderName.contentType: 'application/json',
  //     HttpHeaderName.userAgent:'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',
  //     HttpHeaderName.referer:'https://www.bilibili.com/'
  // }),);

  final headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',
    'Referer': 'https://www.bilibili.com/',
  };

  final response = await http.get(Uri.parse('https://api.bilibili.com/x/web-interface/nav'), headers: headers);


  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonContent = json.decode(response.body);
    String imgUrl = jsonContent['data']['wbi_img']['img_url'];
    String subUrl = jsonContent['data']['wbi_img']['sub_url'];

    String imgKey = imgUrl.split('/').last.split('.').first;
    String subKey = subUrl.split('/').last.split('.').first;

    return {'img_key': imgKey, 'sub_key': subKey};
  } else {
    throw Exception('Failed to load WBI keys');
  }
}

Future<void> main() async {
  // Step 1: Get img_key and sub_key
  final wbiKeys = await getWbiKeys();
  final imgKey = wbiKeys['img_key']!;
  final subKey = wbiKeys['sub_key']!;

  // Step 2: Prepare request parameters
  final params = {
    'foo': '114',
    'bar': '514',
    'baz': 1919810,
  };

  // Step 3: Sign parameters
  final signedParams = await encWbi(params, imgKey, subKey);

  // Step 4: Convert to query string
  final query = Uri(queryParameters: signedParams).query;

  // Print signed parameters and query string
  print(signedParams);
  print(query);
}
