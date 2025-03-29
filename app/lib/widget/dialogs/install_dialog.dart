import 'package:b_be_bee_app/controller/download_installation_package_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InstallDialog extends ConsumerWidget {
  final String url;
  final String savePath;
  final TargetPlatform platform;

  const InstallDialog({
    super.key,
    required this.url,
    required this.savePath,
    required this.platform});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final downloadState = ref.watch(downloadInstallationPackageProvider);

    return AlertDialog(
      title: const Text('下载文件'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: downloadState.progress),
          const SizedBox(height: 10),
          Text('${(downloadState.progress * 100).toStringAsFixed(0)}%'),
          if (downloadState.text != null)
            Text('${downloadState.text}'),
          if (downloadState.error != null)
            Text('错误: ${downloadState.error}', style: TextStyle(color: Colors.red)),
        ],
      ),
      actions: [
        if (downloadState.isDownloading)
          TextButton(
            onPressed: () => ref.read(downloadInstallationPackageProvider.notifier).cancelDownload(),
            child: const Text('取消下载'),
          ),
        if (downloadState.isDownloading)
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('关闭'),
          ),
      ],
    );
  }
}