import 'package:ffmpeg_helper/helpers/helper_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/strings.g.dart';
import '../../util/ffmpeg_utils.dart';
import '../loading_widget.dart';

class DownloadFfmpegWindowsDialog {

  static Future<void> open(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) =>
            AlertDialog(
              title: Text(t.utils.downloadingFFmpeg),
              content: ValueListenableBuilder<FFMpegProgress>(
                valueListenable: downloadFFmpegProgress,
                builder: (context, progress, child) {
                  if (progress.phase == FFMpegProgressPhase.inactive || progress.phase == FFMpegProgressPhase.decompressing) {
                    return SizedBox(
                      height: 100,
                      width: 100,
                      child: LoadingWidget()
                    );
                  }

                  final percentage = progress.downloaded / progress.fileSize *
                      100;

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LinearProgressIndicator(
                        value: progress.downloaded / progress.fileSize,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${percentage.toStringAsFixed(1)}%',
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium,
                      ),
                      Text(
                        '${(progress.downloaded / 1024 / 1024).toStringAsFixed(
                            2)}MB / ${(progress.fileSize / 1024 / 1024)
                            .toStringAsFixed(2)}MB',
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall,
                      ),
                    ],
                  );
                },
              ),
            )
    );
  }
}