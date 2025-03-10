class StringUtils{
  static String replaceAllHtmlEntitiesToCharacter(String str) {
    String newStr = str.replaceAllMapped(RegExp(r'&.*?;'), (match) {
      switch (match[0]) {
        case '&lt;':
          return '<';
        case '&gt;':
          return '>';
        case '&amp;':
          return '&';
        case '&quot;':
          return '"';
        case '&apos;':
          return '\'';
        case '&cent;':
          return '¢';
        case '&pound;':
          return '£';
        default:
          if (match[0] == null) return '';
          //如果&#和;之间是数字，则转换成对应unicode编码的字符
          if (match[0]!.startsWith('&#') && match[0]!.endsWith(';')) {
            var numberStr = match[0]!.replaceFirst('&#', '').replaceFirst(
              ';',
              '',
            );
            //转换成int时如果数字前有x，则是16进制，否则按10进制转换
            int? number = numberStr.startsWith('x')
                ? int.tryParse(numberStr.replaceFirst('x', ''), radix: 16)
                : int.tryParse(numberStr);
            if (number != null) {
              return String.fromCharCode(number);
            }
          }
          return match[0]!;
      }
    });
    if (str == newStr) return str;
    return replaceAllHtmlEntitiesToCharacter(newStr);
  }

  static String keyWordTitleToRawTitle(String keyWordTitle) {
    return keyWordTitle.replaceAll(RegExp(r'<.*?>'), '');
  }

  static int parseTimeStringToSeconds(String time) {
    if (time.isEmpty || !time.contains(':')) {
      throw FormatException("Invalid time format. Expected 'mm:ss'.");
    }

    List<String> parts = time.split(':');
    if (parts.length != 2) {
      throw FormatException("Invalid time format. Expected 'mm:ss'.");
    }

    try {
      int minutes = int.parse(parts[0]);
      int seconds = int.parse(parts[1]);

      if (seconds < 0 || seconds >= 60) {
        throw FormatException('Seconds must be between 0 and 59.');
      }

      return (minutes * 60) + seconds;
    } catch (e) {
      throw FormatException('Invalid time format. Could not parse numbers.');
    }
  }

  static String formatTime(num seconds) {
    final String h = (seconds / 3600).floor().toString().padLeft(2, '0');
    final String m = (seconds % 3600 / 60).floor().toString().padLeft(2, '0');
    final String s = (seconds % 60).floor().toString().padLeft(2, '0');
    final String ms =
    (seconds * 1000 % 1000).floor().toString().padLeft(3, '0');
    if (h == '00') {
      return '$m:$s.$ms';
    }
    return '$h:$m:$s.$ms';
  }
}