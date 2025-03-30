import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/model/state/playlist_state.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentPlaylistItemWidget extends ConsumerWidget {
  final String? coverUrl;
  final String title;
  final String artistName;
  final PlaylistState playlist;
  final bool isBottom;
  final Color? fontColor;

  const CurrentPlaylistItemWidget(
      {super.key,
      this.coverUrl,
      this.isBottom = false,
      required this.title,
      required this.artistName,
      required this.playlist,
      this.fontColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectPlaylistController = ref.read(collectsProvider.notifier);

    final isFav = collectPlaylistController
        .isSongInDefaultPlaylist(playlist.currentSong?.id ?? '');
    ref.watch(collectsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          if (coverUrl != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NetworkImageByCache(
                  width: 55,
                  height: 55,
                  imageUrl: coverUrl,
                  defaultUrl: '',
                  errorIcon: const Icon(Icons.music_note),
                )
              ],
            ),
          if (coverUrl != null) const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.currentSong?.title ?? '',
                  style: TextStyle(
                    color: fontColor ?? Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: isBottom ? 16.0 : 24.0,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  playlist.currentSong?.upper.name ?? '',
                  style: TextStyle(
                    color: fontColor?.withOpacity(0.7) ??
                        Theme.of(context).colorScheme.primary.withOpacity(0.7),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          IconButton(
            icon: isFav
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(
                    Icons.favorite_outline,
                    color: fontColor?.withOpacity(0.9) ??
                        Theme.of(context).colorScheme.primary.withOpacity(0.9),
                  ),
            onPressed: () async {
              if (playlist.currentSong != null) {
                await collectPlaylistController
                    .toggleDefaultPlaylist(playlist.currentSong!);
              }
            },
          )
        ],
      ),
    );
  }
}
