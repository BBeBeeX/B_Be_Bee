import 'package:b_be_bee_app/config/theme.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/player/player_audio_data.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AudioCardWidget extends ConsumerStatefulWidget {
  final AudioInfo audioInfo;
  final VoidCallback onTap;

  const AudioCardWidget({
    required this.audioInfo,
    required this.onTap,
  });

  @override
  AudioCardStatefulWidgetState createState() => AudioCardStatefulWidgetState();
}

class AudioCardStatefulWidgetState extends ConsumerState<AudioCardWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: InkWell(
          onTap: widget.onTap,
          child: SizedBox(
            width: 160,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                      child: NetworkImageByCache(
                        width: 160,
                        height: 90,
                        imageUrl: widget.audioInfo.coverWebUrl ?? '',
                        defaultUrl: widget.audioInfo.coverLocalUrl,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        widget.audioInfo.title ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                if (isHovered)
                  Positioned(
                    bottom: 60,
                    right: 0,
                    child: StreamBuilder<PlayerAudioData>(
                      stream: CustomAudioHandler.instance.audioDataStream,
                      builder: (context, snapshot) {
                        final data = snapshot.data;
                        final isPlaying = data?.isPlaying ?? false;
                        final isThisAudio = data?.audioId == widget.audioInfo.id;

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                (isPlaying && isThisAudio)
                                    ? Icons.pause_circle_filled
                                    : Icons.play_circle_filled,
                                size: 40,
                                color: green,
                              ),
                              onPressed: () async {
                                if (isThisAudio) {
                                  isPlaying
                                      ? await ref.read(playlistControllerProvider.notifier).pause()
                                      : await ref.read(playlistControllerProvider.notifier).play();
                                } else {
                                  widget.onTap();
                                }
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

