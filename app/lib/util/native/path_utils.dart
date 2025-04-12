import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:shared_storage/shared_storage.dart' as shared_storage;


class PathUtils{

  static Future<String> getDownloadTempFilePath(String id)async{
    return path.join((await getTemporaryDirectory()).absolute.path, 'b_be_bee', 'download',id);
  }

  static Future<String> getDownloadTempDirectory()async{
    return path.join((await getTemporaryDirectory()).absolute.path, 'b_be_bee', 'download');
  }

  static Future<String> getUpdateTempDirectory()async{
    return path.join((await getTemporaryDirectory()).absolute.path, 'b_be_bee', 'update');
  }

  static Future<String> getUpdateTempBat()async{
    return path.join((await getTemporaryDirectory()).absolute.path, 'b_be_bee', 'update','update.bat');
  }

  static Future<String> getCacheCoverPath(String md5)async{
    return path.join((await getTemporaryDirectory()).path, 'b_be_bee', 'cover','$md5.jpg');
  }

  static Future<String> getShareImagePath()async{
    return path.join((await getTemporaryDirectory()).path, 'b_be_bee', 'share_image.png');
  }

  static Future<String> getShareImagePathByVVID4(String vvid)async{
    return path.join((await getDownloadsDirectory())?.path ??'',  'share_$vvid.png');
  }

  static String getCacheAudioName(String id,String url,String quality) {
    final uri = Uri.parse(url);

    final path = uri.path;

    final extension = path.isNotEmpty ? path.split('/').last.split('.').last : '';

    return '${id}_$quality${extension.isEmpty ? '' : '.$extension'}';
  }

  static Future<String> getAppDocumentDirectory()async{
    return path.join((await getApplicationDocumentsDirectory()).path, 'b_be_bee');
  }

  static Future<String> getLogsDirectory()async{
    return path.join((await getApplicationDocumentsDirectory()).path, 'b_be_bee','logs');
  }

  static Future<String> getCookiesDirectory()async{
    return path.join((await getApplicationSupportDirectory()).path, 'b_be_bee','.cookies');
  }

  static Future<String> getSaveUpdatePath(
      String downloadUrl, TargetPlatform platform) async {
    Directory? dir;
    if (platform == TargetPlatform.android) {
      dir = await getExternalStorageDirectory();
    } else {
      dir = await getDownloadsDirectory();
    }
    if (dir != null) {
      String? suffix;
      int dotIndex = downloadUrl.lastIndexOf('.');
      if (dotIndex != -1) {
        suffix = downloadUrl.substring(dotIndex + 1);
      }
      return '${dir.path}/downloaded_app.$suffix';
    } else {
      return '';
    }
  }

  static Future<String> getTempDirectory()async{
    return path.join((await getTemporaryDirectory()).path, 'b_be_bee');
  }

  static Future<String> getDefaultDestinationDirectory() async {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        final dir = await shared_storage.getExternalStoragePublicDirectory(shared_storage.EnvironmentDirectory.downloads);
        return dir?.path ?? '/storage/emulated/0/Download';
      case TargetPlatform.iOS:
        return (await getApplicationDocumentsDirectory()).path;
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.fuchsia:
        var downloadDir = await getDownloadsDirectory();
        if (downloadDir == null) {
          if (defaultTargetPlatform == TargetPlatform.windows) {
            downloadDir = Directory('${Platform.environment['HOMEPATH']}/Downloads');
            if (!downloadDir.existsSync()) {
              downloadDir = Directory(Platform.environment['HOMEPATH']!);
            }
          } else {
            downloadDir = Directory('${Platform.environment['HOME']}/Downloads');
            if (!downloadDir.existsSync()) {
              downloadDir = Directory(Platform.environment['HOME']!);
            }
          }
        }
        return downloadDir.path.replaceAll('\\', '/');
    }
  }

}