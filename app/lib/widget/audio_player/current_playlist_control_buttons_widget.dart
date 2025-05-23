import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/state/playlist_state.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/open_playlist_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentPlaylistControlButtonsWidget extends ConsumerWidget {
  final PlaylistState playlist;
  final PlaylistController playlistController;
  final bool isColumn;
  final Color? fontColor;

  const CurrentPlaylistControlButtonsWidget(
      {super.key,
      required this.playlistController,
      required this.playlist,
      this.isColumn = true,
      this.fontColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment:
          isColumn ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
      children: [
        // 播放模式
        IconButton(
          tooltip: '播放顺序',
          icon: Icon(
            playlist.repeatMode.icon,
            size: isColumn ? 24 : 20,
          ),
          color: fontColor?.withOpacity(0.9) ??
              Theme.of(context).colorScheme.primary.withOpacity(0.9),
          onPressed: () async {
            await playlistController.cycleRepeatMode();
          },
        ),
        // 播放控制
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.skip_previous, size: isColumn ? 36 : 24),
              color: fontColor?.withOpacity(0.9) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
              onPressed: () async =>
                  playlistController.skipToPrevious(isCutSong: true),
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
                    size: isColumn ? 72 : 36,
                  ),
                  color: fontColor?.withOpacity(0.9) ??
                      Theme.of(context).colorScheme.primary.withOpacity(0.9),
                  onPressed:
                      ref.read(playlistControllerProvider.notifier).togglePlay,
                );
              },
            ),
            const SizedBox(width: 16),
            IconButton(
              tooltip: '下一首',
              icon: Icon(Icons.skip_next, size: isColumn ? 36 : 24),
              color: fontColor?.withOpacity(0.9) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
              onPressed: () async =>
                  playlistController.skipToNext(isCutSong: true),
            ),
          ],
        ),
        // 播放列表

        if (isColumn)
          IconButton(
              icon: Icon(Icons.queue_music, size: 36),
              color: fontColor?.withOpacity(0.9) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
              onPressed: () async =>
                  await OpenPlaylistBottomSheet.open(context)),
      ],
    );
  }
}
