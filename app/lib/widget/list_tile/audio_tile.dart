import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_music_options_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/collects_controller.dart';
import '../../gen/strings.g.dart';
import '../../model/dao/collect_playlist.dart';

class AudioTile extends ConsumerWidget {
  final List<AudioInfo> medias;
  final CollectPlaylist collectPlaylist;
  final bool isDraggable;
  final Function(int oldIndex, int newIndex)? onReorder;
  final Function(String playlistId,String songId)? removeAudio;

  const AudioTile({
    required this.medias,
    required this.collectPlaylist,
    this.isDraggable = false,
    this.onReorder,
    this.removeAudio
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverReorderableList(
      itemCount: medias.length,
      onReorder: (oldIndex, newIndex) {
        if (onReorder != null) {
          onReorder!(oldIndex, newIndex);
        }
      },
      itemBuilder: (context, index) => _buildMediaItem(
        context,
        ref,
        medias[index],
        index,
      ),
    );
  }

  Widget _buildMediaItem(BuildContext context, WidgetRef ref, AudioInfo media, int index) {
    return ReorderableDelayedDragStartListener(
      key: ValueKey(media.id),
      index: index,
      enabled: isDraggable,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () async {
            await ref.read(playlistControllerProvider.notifier).setPlaylist(
              medias,collectPlaylist.id,
              index: medias.indexOf(media),
            );
          },
          splashColor: Colors.grey.withOpacity(0.3),
          highlightColor: Colors.grey.withOpacity(0.2),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: NetworkImageByCache(
                    width: 80,
                    height: 60,
                    imageUrl: media.coverWebUrl,
                    defaultUrl: media.coverLocalUrl,
                    errorIcon: const Icon(Icons.music_note, color: Colors. grey),
                  ),
                ),
              ],
            ),
            title: Text(
              media.title ?? t.general.unnamedVideo,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              media.upper.name ?? t.general.unknownUser,
              style: const TextStyle(fontSize: 14),
            ),
            trailing: GestureDetector(
              onTap: () async {
                await SelectMusicOptionsBottomSheet.open(
                  context,
                  ref,
                  media,
                    collectPlaylist,
                    removeAudio,
                  fromPlay: false,
                );
              },
              child: const Icon(Icons.more_vert),
            ),
          ),
        ),
      ),
    );
  }
}