

import 'package:test/scaffolding.dart';

void main() {
  group('i18n', () {
    test('string', () {
      String s1 = '';
      String? s2;


      print(s1.isNotEmpty ?? false);
      print(s1 != null);
     print(s2?.isNotEmpty ?? false);
      print(s2 != null);

    });
  });
}