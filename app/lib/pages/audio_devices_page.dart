import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio_media_kit/just_audio_media_kit.dart';
import 'package:media_kit/media_kit.dart';

class AudioDevicesPage extends ConsumerWidget {
  const AudioDevicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<(AudioDevice, List<AudioDevice>)>(
      stream: JustAudioMediaKit.currentAudioDeviceStream,
      builder: (context, snapshot) {
        Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog(
              'update player2 ${snapshot.data?.$1},${snapshot.data?.$2}');
        });

        if (!snapshot.hasData) {
          return LoadingWidget();
        }

        var (currentDevice2, devices2) = snapshot.data!;
        Future.microtask(() {
          container.read(commonLoggerProvider.notifier).addLog(
              'update player2 ${currentDevice2.name},${devices2.length}');
        });

        var (currentDevice, devices) =
            snapshot.data ?? (AudioDevice.auto(), []);
        if (devices.isEmpty) {
          return const Text('当前无音频输出设备');
        }

        return ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, index) {
            final device = devices[index];
            final isSelected = currentDevice == device;

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: isSelected ? 4 : 1,
              child: ListTile(
                leading: Icon(
                  isSelected ? Icons.volume_up : Icons.speaker,
                  color: isSelected ? Theme.of(context).primaryColor : null,
                ),
                title: Text(
                  device.description,
                  style: TextStyle(
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(' ${device.name}')],
                ),
                isThreeLine: true,
                selected: isSelected,
                selectedTileColor: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.2),
                onTap: () => _setAudioDevice(device),
                trailing: isSelected
                    ? const Chip(
                        label: Text('当前使用'),
                        backgroundColor: Colors.green,
                        labelStyle: TextStyle(color: Colors.white),
                      )
                    : null,
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _setAudioDevice(AudioDevice device) async {
    await JustAudioMediaKit.changeAudioDevice(device);
  }
}
