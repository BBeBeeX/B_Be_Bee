import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/local_audio_browser_controller.dart';
import '../../gen/strings.g.dart';

class LocalAudioBrowserPageDeleteFolderPopupMenuButtonWidget extends ConsumerWidget {
  final String removeFolderPath;

  const LocalAudioBrowserPageDeleteFolderPopupMenuButtonWidget({
    required this.removeFolderPath,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: 'delete',
          child: Row(
            children: [
              const Icon(Icons.delete_outline, size: 20),
              const SizedBox(width: 8),
              Text(t.general.delete),
            ],
          ),
        ),
      ],
      onSelected: (value) async {
        if (value == 'delete') {
          await ref.read(localAudioBrowserProvider.notifier)
              .removeFolder(removeFolderPath);
        }
      },
    );
  }

}