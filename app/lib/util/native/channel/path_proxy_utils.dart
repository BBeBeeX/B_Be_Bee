import 'package:flutter/cupertino.dart';

import '../file_utils.dart';
import '../path_utils.dart';

class PathProxyUtils {

  static Future<String> getDownloadTempFilePath(String id) async {
    final filePath = await PathUtils.getDownloadTempFilePath(id);
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getDownloadTempDirectory() async {
    final dirPath = await PathUtils.getDownloadTempDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getUpdateTempDirectory() async {
    final dirPath = await PathUtils.getUpdateTempDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getUpdateTempBat() async {
    final filePath = await PathUtils.getUpdateTempBat();
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getCacheCoverPath(String md5) async {
    final filePath = await PathUtils.getCacheCoverPath(md5);
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getShareImagePath() async {
    final filePath = await PathUtils.getShareImagePath();
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getShareImagePathByVVID4(String vvid) async {
    final filePath = await PathUtils.getShareImagePathByVVID4(vvid);
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getCacheAudioPath(String id,String url, String quality) async {
    final filePath = await PathUtils.getCacheAudioPath(id,url, quality);
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getAppDocumentDirectory() async {
    final dirPath = await PathUtils.getAppDocumentDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getLogsDirectory() async {
    final dirPath = await PathUtils.getLogsDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getFFmpegZipPathInWindows() async {
    return await PathUtils.getFFmpegZipPathInWindows();
  }

  static Future<String> getFFmpegUnzipDirectoryInWindows() async {
    final dirPath = await PathUtils.getFFmpegUnzipDirectoryInWindows();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getFFmpegPathInWindows() async {
    final filePath = await PathUtils.getFFmpegPathInWindows();
    FileUtils.ifFolderUnExistAndCreate(filePath);
    return filePath;
  }

  static Future<String> getCookiesDirectory() async {
    final dirPath = await PathUtils.getCookiesDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getTempDirectory() async {
    final dirPath = await PathUtils.getTempDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getSaveUpdatePath(String downloadUrl, TargetPlatform platform)async {
    final dirPath = await PathUtils.getSaveUpdatePath(downloadUrl, platform);
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }

  static Future<String> getDefaultDestinationDirectory() async{
    final dirPath = await PathUtils.getDefaultDestinationDirectory();
    FileUtils.ifFolderUnExistAndCreate(dirPath);
    return dirPath;
  }
}