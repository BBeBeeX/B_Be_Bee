import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../config/theme.dart';
import '../../gen/strings.g.dart';
import '../../model/dto/video/audio_play_item.dart';
import '../../util/audio_handler.dart';

class AudioQualityBottomSheet {
  static Future<void> open(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(playlistControllerProvider);
    final controller = ref.read(playlistControllerProvider.notifier);

    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) =>
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              for (AudioPlayItem item in vm.currentAudioPlayInfo?.audios ?? [])
                StreamBuilder<String>(
                  stream: CustomAudioHandler.instance.qualityDataStream,
                  builder: (context, snapshot) {
                    final qualityValue = snapshot.data ?? '';
                    return ListTile(
                      title: Text(item.quality.getLabel()),
                      trailing: item.quality.getLabel() == qualityValue
                          ? Icon(Icons.check, color: green)
                          : null,
                      onTap: () async {
                        await controller.switchQuality(item);
                        context.pop();
                      },
                    );
                  },
                ),

              ListTile(
                leading: const Icon(Icons.close),
                title: Text(t.general.cancel),
                onTap: () => Navigator.pop(context),
              ),
              const SizedBox(height: 8),
            ],
          ),
    );
  }
}