import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';
import '../common/constants.dart';
import '../config/theme.dart';
import '../controller/playlist_controller.dart';
import '../pages/audio_player_page.dart';
import 'audio_player/current_playlist_control_buttons_widget.dart';
import 'audio_player/current_playlist_progress_bar_widget.dart';
import 'audio_player/current_playlist_item_widget.dart';
import 'bottom_sheet/open_playlist_bottom_sheet.dart';

class DesktopBottomBarWidget extends ConsumerWidget {
  const DesktopBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);

    String coverResult;
    if (playlist.currentSong == null) {
      coverResult = '';
    } else {
      coverResult = playlist.currentSong!.coverWebUrl.isNotEmpty
          ? playlist.currentSong!.coverWebUrl
          : (playlist.currentSong!.coverLocalUrl.isNotEmpty
          ? playlist.currentSong!.coverLocalUrl
          : '');
    }

    final playlistController = ref.read(playlistControllerProvider.notifier);
    final isMuted = ref
        .watch(playlistControllerProvider)
        .isMuted;
    final volume = ref
        .watch(playlistControllerProvider)
        .volume;
    final audioPlayerController = ref.read(playlistControllerProvider.notifier);

    return SafeArea(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Theme
              .of(context)
              .colorScheme
              .onPrimary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 32,
              child: GestureDetector(
                  onTap: () async {
                    await context.push(()=>AudioPlayerPage());
                  },
                  child: CurrentPlaylistItemWidget(
                    coverUrl: coverResult,
                    title: playlist.currentSong?.title ?? '',
                    artistName: playlist.currentSong?.upper.name ?? '',
                    playlist: playlist,
                    isBottom: true,
                  ),
                )
            ),


            Expanded(
              flex: 39,
              child: Column(
                  children: [
                    CurrentPlaylistControlButtonsWidget(
                      playlist: playlist,
                      playlistController: playlistController,
                      isColumn: false,
                    ),
                    CurrentPlaylistProgressBarWidget(isColumn: false),
                  ],
                ),
            ),




            Expanded(
              flex: 29,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.queue_music, size: 24),
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                        onPressed: () async =>
                        await OpenPlaylistBottomSheet.open(context)
                    ),
                    IconButton(
                      icon: Icon(
                        isMuted ? Icons.volume_off : Icons.volume_up,
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                      ),
                      onPressed: () async => audioPlayerController.toggleMute(),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 100,
                      ),
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 2.0,
                          thumbShape: SliderComponentShape.noOverlay,
                          activeTrackColor: Theme.of(context).colorScheme.primary.withOpacity(0.9),
                          inactiveTrackColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                          overlayShape: SliderComponentShape.noThumb,
                          thumbColor: Colors.transparent,
                        ),
                        child: Slider(
                          value: volume,
                          min: 0.0,
                          max: 1.0,
                          onChanged: (value) async =>
                              audioPlayerController.setVolume(value),
                        ),
                      ),
                    ),
                    const SizedBox(width: 32),

                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}