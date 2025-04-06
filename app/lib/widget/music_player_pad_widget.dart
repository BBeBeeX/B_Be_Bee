import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/player_page/audio_player_page.dart';
import '../util/audio_handler.dart';
import 'audio_player/current_playlist_item_widget.dart';
import 'audio_player/current_playlist_progress_bar_widget.dart';
import 'bottom_sheet/open_playlist_bottom_sheet.dart';
import 'img/network_image.dart';

class MusicPlayerPadWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);

    String coverResult;
    if (playlist.currentSong == null) {
      coverResult = Constants.bili_video_default_cover;
    } else {
      coverResult = playlist.currentSong!.coverWebUrl.isNotEmpty
          ? playlist.currentSong!.coverWebUrl
          : (playlist.currentSong!.coverLocalUrl.isNotEmpty
              ? playlist.currentSong!.coverLocalUrl
              : '');
    }

    return Center(
        child: Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AudioPlayerPage(),
                ),
              );
            },
            child: NetworkImageByCache(
                width: 200,
                height: 200,
                imageUrl: coverResult,
                defaultUrl: '',
                errorIcon: const Icon(Icons.music_note)),
          ),
          const SizedBox(width: 8),
          CurrentPlaylistItemWidget(
            coverUrl: null,
            title: playlist.currentSong?.title ?? '',
            artistName: playlist.currentSong?.upper.name ?? '',
            playlist: playlist,
            fontColor: Theme.of(context).colorScheme.primary.withOpacity(0.9),
            fontSize: 10,
          ),
          const SizedBox(height: 3),
          CurrentPlaylistProgressBarWidget(
            onlyBar: true,
            fontColor: Theme.of(context).colorScheme.primary.withOpacity(0.9),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous, size: 30),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.9),
                    onPressed: () async => ref
                        .read(playlistControllerProvider.notifier)
                        .skipToPrevious(isCutSong: true),
                    tooltip: '上一首',
                  ),
                  const SizedBox(width: 16),
                  StreamBuilder<bool>(
                    stream: CustomAudioHandler.instance.playbackState
                        .map((state) => state.playing)
                        .distinct(),
                    builder: (context, snapshot) {
                      final playing = snapshot.data ?? true;
                      return IconButton(
                        tooltip: '播放/暂停',
                        icon: Icon(
                          playing
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_filled,
                          size: 36,
                        ),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.9),
                        onPressed: ref
                            .read(playlistControllerProvider.notifier)
                            .togglePlay,
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    tooltip: '下一首',
                    icon: Icon(Icons.skip_next, size: 30),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.9),
                    onPressed: () async => ref
                        .read(playlistControllerProvider.notifier)
                        .skipToNext(isCutSong: true),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: InkWell(
                onTap: () async {
                  await OpenPlaylistBottomSheet.open(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.queue_music,
                        size: 24,
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.9),
                      ),
                      const SizedBox(width: 8),
                      Text('播放列表'),
                    ],
                  ),
                )),
          )
        ],
      ),
    ));
  }

  Widget _buildControlButton({
    required IconData icon,
    VoidCallback? onPressed,
    Color? color,
    double size = 24,
    String? badge,
  }) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(icon, size: size),
          onPressed: onPressed,
          color: color,
        ),
        if (badge != null)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                badge,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
