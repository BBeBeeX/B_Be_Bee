import 'package:flutter/material.dart';


class DownloadFfmpegLinuxDialog {

  static Future<void> open(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Install FFMpeg'),
          content: const Text(
            'FFmpeg installation required by user.\n'
                'sudo apt-get install ffmpeg\n'
                'sudo snap install ffmpeg',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}