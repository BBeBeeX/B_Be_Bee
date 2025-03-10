import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/collects_controller.dart';
import '../../model/state/playlist_state.dart';
import '../img/network_image.dart';

class CurrentPlaylistItemWidget extends ConsumerWidget {
  final String? coverUrl;
  final String title;
  final String artistName;
  final PlaylistState playlist;
  final bool isBottom;

  const CurrentPlaylistItemWidget({
    super.key,
    this.coverUrl,
    this.isBottom = false,
    required this.title,
    required this.artistName,
    required this.playlist
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectPlaylistController = ref.read(
        collectsProvider.notifier);

    final isFav = collectPlaylistController.isSongInDefaultPlaylist(
        playlist.currentSong?.id ?? '');
    ref.watch(collectsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          if(coverUrl != null)
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
            ), if(coverUrl != null)
            const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlist.currentSong?.title??'',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isBottom ? 16.0 : 24.0,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  playlist.currentSong?.upper.name??'',
                  style: const TextStyle(
                    color: Colors.white70,
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
                ?
            const Icon(
              Icons.favorite,
              color: Colors.red,
            )
                :
            const Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),

            onPressed: () async {
              if(playlist.currentSong != null){
                await collectPlaylistController
                    .toggleDefaultPlaylist(
                    playlist.currentSong!);
              }
            },
          )
        ],
      ),
    );
  }
}