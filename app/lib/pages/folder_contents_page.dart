import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;

import '../gen/strings.g.dart';

class FolderContentsPage extends ConsumerWidget {
  final Directory folder;

  const FolderContentsPage({
    super.key,
    required this.folder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(path.basename(folder.path)),
      ),
      body: FutureBuilder<List<FileSystemEntity>>(
        future: folder.list().toList(),
        builder: (context, snapshot) {

          if (!snapshot.hasData) {
            return Center(
              child: Text(t.localPage.noAudioFiles),
            );
          }

          final files = snapshot.data!
              .where((entity) => entity is File && _isAudioFile(entity.path))
              .toList();

          if (files.isEmpty) {
            return Center(
              child: Text(t.localPage.noAudioFiles),
            );
          }

          return ListView.builder(
            itemCount: files.length,
            itemBuilder: (context, index) {
              final file = files[index];
              final fileName = path.basename(file.path);

              return ListTile(
                leading: const Icon(Icons.audio_file),
                title: Text(fileName),
                subtitle: Text(_getFileSize(file)),
                onTap: () {
                  // TODO: 播放音频文件
                },
              );
            },
          );
        },
      ),
    );
  }

  bool _isAudioFile(String path) {
    final extension = path.toLowerCase();
    return extension.endsWith('.mp3') ||
           extension.endsWith('.m4a') ||
           extension.endsWith('.wav') ||
           extension.endsWith('.aac') ||
           extension.endsWith('.m4s') ||
           extension.endsWith('.flac') ||
           extension.endsWith('.mp4') ||
           extension.endsWith('.ogg');
  }

  String _getFileSize(FileSystemEntity entity) {
    try {
      final file = File(entity.path);
      final bytes = file.lengthSync();
      if (bytes < 1024) return '$bytes B';
      if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
      if (bytes < 1024 * 1024 * 1024) {
        return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
      }
      return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
    } catch (e) {
      return '';
    }
  }
} 