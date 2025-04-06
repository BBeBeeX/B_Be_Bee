
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/widget/audio_player/current_playlist_control_buttons_widget.dart';
import 'package:b_be_bee_app/widget/audio_player/current_playlist_item_widget.dart';
import 'package:b_be_bee_app/widget/audio_player/current_playlist_progress_bar_widget.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AudioPlayerPageColumn1 extends ConsumerWidget {
  final String coverUrl;
  final Color? fontColor;

  const AudioPlayerPageColumn1(this.coverUrl, this.fontColor, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final playlist = ref.watch(playlistControllerProvider);

    return Column(
      children: [
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height / 10,
        ),

        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: NetworkImageByCache(
            width: 200,
            height: 200,
            imageUrl: coverUrl,
            defaultUrl: '',
            errorIcon: const Icon(
              Icons.music_note,
              size: 120,
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),


        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrentPlaylistItemWidget(
              coverUrl: null,
              title: playlist.currentSong!.title,
              artistName: playlist.currentSong!.upper.name,
              playlist: playlist,
              fontColor: fontColor,
            ),
            const SizedBox(height: 24),
            CurrentPlaylistProgressBarWidget(
              fontColor: fontColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: CurrentPlaylistControlButtonsWidget(
                playlist: playlist,
                playlistController: ref.read(
                    playlistControllerProvider.notifier),
                fontColor: fontColor,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ],
    );
  }


}


