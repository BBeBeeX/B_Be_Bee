import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/upper.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/native/file_utils.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:crypto/crypto.dart';
import 'package:ffmpeg_helper/ffmpeg_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../controller/download_controller.dart';
import '../gen/strings.g.dart';
import '../widget/dialogs/download_ffmpeg_linux_dialog.dart';
import 'native/channel/path_proxy_utils.dart';

class FfmpegUtils {
  static Future<AudioInfo?> getLocalAudioMetaData(FileSystemEntity file) async {
    final coverPath = await _saveCover(file);

    MediaInformation? res = await FFMpegHelper.instance.runProbe(file.path);
    if (res != null) {
      final tags = res.getFormatProperty('tags');
      return AudioInfo(
          title: tags['title'] ?? file.uri.pathSegments.last ?? 'Unknown song',
          id: 'local_audios_${tags['title'] ?? file.hashCode}',
          duration: double.parse(res.getDuration() ?? '0').toInt(),
          audioCurrentType: AudioSourceTypeEnum.local,
          audioSourceType: AudioSourceTypeEnum.local,
          localPath: file.path,
          upper: Upper(name: tags['artist'] ?? ''),
          coverLocalUrl: coverPath ?? '',
          lyrics: tags['lyrics']);
    } else {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('ffprobe null');
      });
    }
    return null;
  }

  static Future<void> downloadFFMpeg(Ref ref) async {
    isDownloadingFFmpeg = true;

    try {
      if (Platform.isWindows) {
        await ToastUtil.show('${t.utils.downloading} ffmpeg...');
        await Future.microtask(() {
          container
              .read(commonLoggerProvider.notifier)
              .addLog(' download ffmpeg...');
        });

        // await DownloadFfmpegWindowsDialog.open(Routerino.context);
        final settings = ref.read(settingsProvider);
        bool isSuccess = await FFMpegHelper.instance.setupFFMpegOnWindows(
            onProgress: (FFMpegProgress progress) {
              downloadFFmpegProgress.value = progress;

              Future.microtask(() {
                container.read(commonLoggerProvider.notifier).addLog(
                    'download ffmpeg: ${progress.downloaded}/${progress.fileSize}  - ${progress.phase} ');
              });
            },
            proxyType: settings.proxyType.name,
            proxyHost: settings.proxyHost,
            proxyPort: settings.proxyPort.toString(),
            proxyUsername: settings.proxyUsername,
            proxyPassword: settings.proxyPassword);

        // Navigator.of(Routerino.context).pop();

        if (isSuccess) {
          await ToastUtil.show(t.utils.downloadFFmpegSuccess);

          await Future.microtask(() {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('Download: download ffmpeg : success');

            ref.read(downloadControllerProvider.notifier).resumeAll();

            ref.read(downloadControllerProvider.notifier).setInit();
          });
        } else {
          await ToastUtil.show(t.utils.downloadFFmpegFailed);

          await Future.microtask(() {
            container
                .read(commonLoggerProvider.notifier)
                .addLog('Download: download ffmpeg : fail');
          });
        }
      } else if (Platform.isLinux) {
        await DownloadFfmpegLinuxDialog.open(Routerino.context);

        await Future.microtask(() {
          container
              .read(commonLoggerProvider.notifier)
              .addLog('Download: linux system not present ffmpeg');
        });
      }
    } catch (e) {
      isDownloadingFFmpeg = false;
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('downloadFFMpeg fail: $e');
      });
    }
    isDownloadingFFmpeg = false;
  }

  static bool isDownloadingFFmpeg = false;
  static Future<bool> checkDesktopFFmpeg(Ref ref,
      {bool needDownload = true}) async {
    final isPresent = await FFMpegHelper.instance.isFFMpegPresent();
    if (needDownload) {
      if (!isPresent && !isDownloadingFFmpeg) {
        Future.microtask(() {
          FfmpegUtils.downloadFFMpeg(ref);
        });
      }
      return await FFMpegHelper.instance.isFFMpegPresent();
    } else {
      return isPresent;
    }
  }

  static Future<String?> _saveCover(FileSystemEntity file) async {
    final fileName = file.uri.pathSegments.last;
    final saveCoverPath = await PathProxyUtils.getCacheCoverPath(getMd5Hash(fileName));

    if (File(saveCoverPath).existsSync()) {
      return saveCoverPath;
    }

    try {
      FFMpegCommand cliCommand = FFMpegCommand(
        inputs: [
          FFMpegInput.asset(file.path),
        ],
        args: [
          CustomArgument(['-y']),
          CustomArgument(['-vframes', '1']),
        ],
        outputFilepath: saveCoverPath,
      );
      FFMpegHelperSession? session = await FFMpegHelper.instance.runAsync(
        cliCommand,
      );
      int? exitCode = await session.windowSession?.exitCode;
      ReturnCode? exitCodem = await session.nonWindowSession?.getReturnCode();
      while (exitCode == null && exitCodem == null) {
        exitCode = await session.windowSession?.exitCode;
        exitCodem = await session.nonWindowSession?.getReturnCode();
        await Future.delayed(Duration(milliseconds: 50));
      }

      if (exitCode == ReturnCode.success ||
          (exitCodem?.isValueSuccess() ?? false)) {
        return saveCoverPath;
      }
    } catch (e) {
      await Future.microtask(() {
        container
            .read(commonLoggerProvider.notifier)
            .addLog('_saveCover error : ${e.toString()}');
      });
    }
    return null;
  }

  static String getMd5Hash(String input) {
    final bytes = utf8.encode(input);
    final hash = md5.convert(bytes);
    return hash.toString();
  }
}

ValueNotifier<FFMpegProgress> downloadFFmpegProgress =
    ValueNotifier<FFMpegProgress>(FFMpegProgress(
  downloaded: 0,
  fileSize: 0,
  phase: FFMpegProgressPhase.inactive,
));
