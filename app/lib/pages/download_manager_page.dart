import 'package:b_be_bee_app/controller/download_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/download_status_enum.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:ffmpeg_helper/helpers/helper_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../util/ffmpeg_utils.dart';

class DownloadManagerPage extends ConsumerWidget {
  const DownloadManagerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadState = ref.watch(downloadControllerProvider);
    final controller = ref.read(downloadControllerProvider.notifier);

    return Scaffold(
        appBar: AppBar(
            title: Text(t.downloadPage.title),
            automaticallyImplyLeading: checkPlatformIsDesktop() ? false : true),
        body: Column(
          children: [
            _buildInitializationStatus(ref),
            Expanded(
              child: ListView.builder(
                itemCount: downloadState.tasks.length,
                itemBuilder: (context, index) {
                  final task = downloadState.tasks.values.elementAt(index);
                  final bool fileExists = controller.checkFileExists(task.id);

                  return ListTile(
                    title: Text(
                      task.audioInfo.title,
                      style: TextStyle(
                        color: fileExists ? null : Colors.grey,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (task.status != DownloadStatusEnum.completed &&
                            task.status != DownloadStatusEnum.error)
                          LinearProgressIndicator(
                            value: task.progress,
                          ),
                        Text(
                          _getStatusText(task.status, fileExists),
                          style: TextStyle(
                            color: _getStatusColor(task.status, fileExists),
                          ),
                        ),
                        if (task.error != null)
                          Text(
                            task.error!,
                            style: const TextStyle(color: Colors.red),
                          ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (task.status == DownloadStatusEnum.downloading)
                          IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () async =>
                                controller.cancelTask(task.id),
                          ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () async => controller.deleteTask(task.id),
                        ),
                      ],
                    ),
                    onTap: fileExists
                        ? () async {
                            final audioInfo = task.audioInfo;
                            if (audioInfo.audioCurrentType ==
                                AudioSourceTypeEnum.local) {
                              await ref
                                  .read(playlistControllerProvider.notifier)
                                  .setPlaylist([audioInfo], 'download');
                            }
                          }
                        : () async {
                            await controller.retryDownload(task.id);
                          },
                  );
                },
              ),
            )
          ],
        ));
  }

  String _getStatusText(DownloadStatusEnum status, bool fileExists) {
    if (status == DownloadStatusEnum.completed && !fileExists) {
      return t.downloadPage.fileLoss;
    }
    switch (status) {
      case DownloadStatusEnum.init:
        return '初始化,下载ffmpeg中...';
      case DownloadStatusEnum.error:
        return t.downloadPage.error;
      case DownloadStatusEnum.canceled:
        return t.downloadPage.canceled;
      case DownloadStatusEnum.pending:
        return t.downloadPage.pending;
      case DownloadStatusEnum.downloading:
        return t.downloadPage.downloading;
      case DownloadStatusEnum.downloadSuccess:
        return t.downloadPage.downloadSuccess;
      case DownloadStatusEnum.converting:
        return t.downloadPage.converting;
      case DownloadStatusEnum.convertSuccess:
        return t.downloadPage.convertSuccess;
      case DownloadStatusEnum.image:
        return t.downloadPage.image;
      case DownloadStatusEnum.imageSuccess:
        return t.downloadPage.imageSuccess;
      case DownloadStatusEnum.completed:
        return t.downloadPage.completed;
      default:
        return status.toString();
    }
  }

  Color _getStatusColor(DownloadStatusEnum status, bool fileExists) {
    if (status == DownloadStatusEnum.completed && !fileExists) {
      return Colors.grey;
    }
    switch (status) {
      case DownloadStatusEnum.error:
        return Colors.red;
      case DownloadStatusEnum.completed:
        return Colors.green;
      case DownloadStatusEnum.downloading:
      case DownloadStatusEnum.converting:
      case DownloadStatusEnum.image:
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  Widget _buildInitializationStatus(WidgetRef ref) {
    bool isInitialized = ref.watch(downloadControllerProvider).isInit;
    return ValueListenableBuilder<FFMpegProgress>(
      valueListenable: downloadFFmpegProgress,
      builder: (context, progress, child) {
        if (progress.phase == FFMpegProgressPhase.inactive ||
            progress.phase == FFMpegProgressPhase.decompressing) {
          return Container(
            width: double.infinity,
            color: isInitialized ? Colors.green : Colors.red,
            padding: const EdgeInsets.all(16.0),
            child: Text(
              isInitialized ? '已初始化' : '未初始化',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        }

        final percentage = progress.downloaded / progress.fileSize * 100;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LinearProgressIndicator(
              value: progress.downloaded / progress.fileSize,
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${percentage.toStringAsFixed(1)}%',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  '${(progress.downloaded / 1024 / 1024).toStringAsFixed(2)}MB / ${(progress.fileSize / 1024 / 1024).toStringAsFixed(2)}MB',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
