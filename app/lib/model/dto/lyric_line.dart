


class LyricLine {
  final Duration startTime;
  final Duration endTime;
  final Map<String, String> translations;
  LyricLine({
    required this.startTime,
    required this.endTime,
    required this.translations,
  });

  String getLyric(String language) {
    return translations[language] ?? translations['en'] ?? '';
  }
}