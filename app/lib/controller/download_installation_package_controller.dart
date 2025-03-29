import 'dart:io';

import 'package:archive/archive.dart';
import 'package:b_be_bee_app/util/native/permission_helper.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rhttp/rhttp.dart';


final downloadInstallationPackageProvider = StateNotifierProvider<DownloadInstallationPackageController, DownloadState>(
      (ref) => DownloadInstallationPackageController(),
);

class DownloadInstallationPackageController extends StateNotifier<DownloadState> {
  DownloadInstallationPackageController() : super(DownloadState());

  CancelToken? _cancelToken;

  Future<void> startDownload(String url, String savePath, TargetPlatform platform) async {
    await getFilePermission();

    _cancelToken = CancelToken();
    state = state.copyWith(isDownloading: true, progress: 0.0,text: null,error: null);

    try {
      final downloadFile = await RhttpUtils.downloadFile(
        url: url,
        savePath: savePath,
        cancelToken: _cancelToken,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            state = state.copyWith(progress: received / total);
          }
        },
      );
      if(downloadFile == null){
        state = state.copyWith(isDownloading: false, isCompleted: false,text: '下载失败');
        return;
      }

      state = state.copyWith(isDownloading: false, isCompleted: true,text:null);

      if(platform == TargetPlatform.android){
        await OpenFilex.open(savePath);
      }else if(platform == TargetPlatform.windows){
        // For Windows, we'll handle the update process
        final appDir = Directory.current.path;
        await replaceAndRestart(savePath, appDir);
      }

    } catch (e) {
      state = state.copyWith(isDownloading: false, error: e.toString());
    }
  }

  void cancelDownload() {
    _cancelToken?.cancel();
    ToastUtil.show('下载取消');
    state = state.copyWith(isDownloading: false);
  }

  Future<bool> unzipFile(String zipPath, String extractTo) async {
    try {
      final bytes = File(zipPath).readAsBytesSync();

      final archive = ZipDecoder().decodeBytes(bytes);

      final dir = Directory(extractTo);
      if (!dir.existsSync()) {
        dir.createSync();
      }

      for (final file in archive) {
        final filePath = '$extractTo/${file.name}';
        if (file.isFile) {
          File(filePath)..createSync(recursive: true)..writeAsBytesSync(file.content);
        }
      }
      state = state.copyWith(isDownloading: false, text: 'Unzip Complete!');
return true;
    } catch (e) {
      state = state.copyWith(isDownloading: false, error: 'Error Unzipping: $e');
      return false;
    }
  }

  Future<void> replaceAndRestart(String zipPath, String appPath) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final extractDir = '${tempDir.path}/extracted';

      // 解压文件
      final isZip = await unzipFile(zipPath, extractDir);
      if(!isZip){
        return;
      }

      // 创建批处理文件来替换文件并启动新应用
      final executableName = Platform.resolvedExecutable.split('\\').last;
      final batchFilePath = await _createBatchFile(extractDir, appPath, executableName);
      
      // 更新状态
      state = state.copyWith(text: 'Starting update process...');
      
      // 运行批处理文件
      await Process.start(batchFilePath, [], mode: ProcessStartMode.detached);
      
      // 退出当前进程
    } catch (e) {
      state = state.copyWith(error: 'Error during update: $e');
    }
  }
  
  Future<String> _createBatchFile(String extractDir, String appPath, String executableName) async {
    final tempDir = await getTemporaryDirectory();
    final batchFilePath = '${tempDir.path}/update.bat';
    
    // 创建批处理文件内容
    final batchContent = '''
@echo off \r\n
chcp 65001 \r\n

set "processName=b_be_bee_app.exe" \r\n

echo Terminating process %processName%... \r\n
taskkill /F /IM %processName% \r\n
echo Process terminated. \r\n

echo Copying new files...\r\n
xcopy /s /y /e "$extractDir\\*" "$appPath\\" \r\n

echo Starting new application... \r\n
start "" "$appPath\\$executableName" \r\n

echo Update completed! \r\n
pause
''';
//  del "%~f0"
// ''';
    
    // 写入批处理文件
    await File(batchFilePath).writeAsString(batchContent);
    
    return batchFilePath;
  }
}

class DownloadState {
  final bool isDownloading;
  final double progress;
  final bool isCompleted;
  final String? error;
  final String? text;

  DownloadState({
    this.isDownloading = false,
    this.progress = 0.0,
    this.isCompleted = false,
    this.error,
    this.text,
  });

  DownloadState copyWith({
    bool? isDownloading,
    double? progress,
    bool? isCompleted,
    String? error,
    String? text
  }) {
    return DownloadState(
      isDownloading: isDownloading ?? this.isDownloading,
      progress: progress ?? this.progress,
      isCompleted: isCompleted ?? this.isCompleted,
      error: error ?? this.error,
      text: text??this.text,
    );
  }
}
