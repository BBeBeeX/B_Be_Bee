import 'package:b_be_bee_app/config/theme.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/batch_operation_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/playlist_page_controller.dart';
import '../gen/strings.g.dart';


class PlaylistPage extends ConsumerWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(playlistPageControllerProvider);
    final pageController = ref.read(playlistPageControllerProvider.notifier);
    final playlist = ref.watch(playlistControllerProvider);
    final controller = ref.read(playlistControllerProvider.notifier);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(color: Colors.transparent),
          ),
        ),
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height*0.7,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () async => pageController.animateToPage((pageState.currentPage+1)%2),
                            child: Text(
                              pageState.currentPage == 0 ? t.playlistPage.playlist : t.playlistPage.playlistHistory,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          if (pageState.currentPage == 0) ...[
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () async {
                                await controller.cycleRepeatMode();
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    playlist.repeatMode.icon,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    playlist.repeatMode.label,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.checklist),
                          iconSize: 20,
                          onPressed: () async {
                            await BatchOperationBottomSheet.open(
                                context,
                                playlist.currentPlaylist,
                                playlist.playlistId,
                                controller.removeSongs
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete_outline),
                          iconSize: 20,
                          onPressed: () async {
                            if (pageState.currentPage == 0) {
                              await controller.clearCurrentPlaylist();
                            } else {
                              await controller.clearHistory();
                            }
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(
                child: PageView(
                  controller: pageController.pageController,
                  onPageChanged: (index) {
                    pageController.setCurrentPage(index);
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  pageSnapping: true,
                  padEnds: true,
                  allowImplicitScrolling: true,
                  children: [
                    _PlaylistContent(),
                    _HistoryContent(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => pageController.animateToPage(0),
                      child: _DotIndicator(isActive: pageState.currentPage == 0),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => pageController.animateToPage(1),
                      child: _DotIndicator(isActive: pageState.currentPage == 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlaylistContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);
    final controller = ref.read(playlistControllerProvider.notifier);
    final pageController = ref.read(playlistPageControllerProvider.notifier);

    if (playlist.currentPlaylist.isEmpty) {
      return Center(child: Text(t.playlistPage.playlistNull));
    }

    int playingIndex = playlist.currentPlaylist.indexWhere((track) {
      return playlist.currentSong?.title == track.title;
    });

    if (playingIndex != -1) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await pageController.scrollToIndex(playingIndex);
      });
    }

    return ReorderableListView.builder(
      scrollController: pageController.scrollController,
      itemCount: playlist.currentPlaylist.length,
      onReorder: (oldIndex, newIndex) async {
        await controller.reorderSongs(oldIndex, newIndex);
      },
      itemBuilder: (context, index) {
        final track = playlist.currentPlaylist[index];
        return ReorderableDelayedDragStartListener(
          key: ValueKey(track.id),
          index: index,
          child: _TrackListTile(
            track: track,
            isPlaying: playlist.currentIndex == index,
            onTap: () async => controller.playSong(index, true),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if(index == playlist.currentIndex)
                  Icon(Icons.equalizer,
                      color: green,
                      size: 20),
                IconButton(
                  icon: const Icon(Icons.close, size: 20),
                  onPressed: () async => controller.removeSong(index),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _HistoryContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);
    final controller = ref.read(playlistControllerProvider.notifier);

    if (playlist.playHistory.isEmpty) {
      return Center(child: Text(t.playlistPage.playlistHistoryNull));
    }

    return ListView.builder(
      itemCount: playlist.playHistory.length,
      itemBuilder: (context, index) {
        final track = playlist.playHistory[index];
        return _TrackListTile(
          track: track,
          isPlaying: false,
          onTap: () async => controller.selectSongFromHistory(index),
          trailing: IconButton(
            icon: const Icon(Icons.close, size: 20),
            onPressed: () async => controller.removeFromHistoryByIndex(index),
          ),
        );
      },
    );
  }
}

class _TrackListTile extends ConsumerWidget {
  final AudioInfo track;
  final bool isPlaying;
  final VoidCallback onTap;
  final Widget? trailing;

  const _TrackListTile({
    required this.track,
    required this.isPlaying,
    required this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: NetworkImageByCache(
          width: 40,
          height: 40,
          imageUrl: track.coverWebUrl.isNotEmpty
              ? track.coverWebUrl
              : track.coverLocalUrl,
          defaultUrl: '',
          errorIcon: const Icon(Icons.music_note),
        ),
      ),
      title: Text(
        track.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: isPlaying ? green : null,
        ),
      ),
      subtitle: Text(
        track.upper.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

class _DotIndicator extends ConsumerWidget {
  final bool isActive;

  const _DotIndicator({
    required this.isActive,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 48,
      height: 30,
      alignment: Alignment.center,
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive 
            ? Theme.of(context).colorScheme.primary 
            : Theme.of(context).colorScheme.outline.withOpacity(0.5),
        ),
      ),
    );
  }
}