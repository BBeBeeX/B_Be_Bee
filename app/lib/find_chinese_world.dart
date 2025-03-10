import 'dart:io';

void findChineseWorldExcludingComments({
  required String directoryPath,
  required List<String> blacklistPaths,
}) async {
  final directory = Directory(directoryPath);
  if (!directory.existsSync()) {
    print('目录不存在: $directoryPath');
    return;
  }

  final chineseRegex = RegExp(r'[\u4e00-\u9fa5]+');
  final commentRegex = RegExp(r'//.*|/\*[\s\S]*?\*/|#.*|<!--[\s\S]*?-->');

  await for (var entity in directory.list(recursive: true)) {
    if (entity is File) {
      final relativePath = entity.path.replaceFirst(directory.path, '');

      if (blacklistPaths.any((path) => relativePath.contains(path))) continue;

      try {
        String content = await entity.readAsString();
        content = content.replaceAllMapped(commentRegex, (match) => '');

        final matches = chineseRegex.allMatches(content);
        if (matches.isNotEmpty) {
          print('文件: ${entity.path}');
          for (var match in matches) {
            print('  发现中文: ${match.group(0)}');
          }
        }
      } catch (e) {
        print('无法读取文件 ${entity.path}: $e');
      }
    }
  }
}

void main() {
  findChineseWorldExcludingComments(
    directoryPath: './lib',
    blacklistPaths:
    [
      'common\\home_page_recommend',
      'gen\\strings'
    ],
  );
}