import 'dart:io';
import 'package:path/path.dart' as path;

class FileUtils{

  static Future<bool> isFileValid(String path) async {
    final file = File(path);

    if (await file.exists()) {
      final length = await file.length();
      return length > 0;
    } else {
      return false;
    }
  }

  // Ensure that all parent folders of the given path exist
  static void ifFolderUnExistAndCreate(String path) {
    final entity = FileSystemEntity.typeSync(path);

    if (entity == FileSystemEntityType.notFound) {
      if (entity == FileSystemEntityType.directory) {
        final directory = Directory(path);

        if (!directory.existsSync()) {
          directory.createSync(recursive: true);
        }

      } else if (entity == FileSystemEntityType.file) {
        final directory = Directory(File(path).parent.path);

        if (!directory.existsSync()) {
          directory.createSync(recursive: true);
        }
      }
    }
  }



  static String replaceSuffixWithWav(String fullPath) {
    final dir = path.dirname(fullPath);
    final fileNameWithoutExtension = path.basenameWithoutExtension(fullPath);
    final newFileName = '$fileNameWithoutExtension.wav';
    return path.join(dir, newFileName);
  }
}