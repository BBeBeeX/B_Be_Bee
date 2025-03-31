import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/observer/route_observer.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_collects_options_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollectsPlaylistTile extends ConsumerWidget {
  final CollectPlaylist playlist;
  final bool isDraggable;
  final int? index;
  final bool isSideBar;

  const CollectsPlaylistTile({
    super.key,
    required this.playlist,
    required this.isSideBar,
    this.isDraggable = true,
    this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOpenSideBar = ref.watch(mainPageProvider).isOpenSideBar;

    return isDraggable && index != null
        ? ReorderableDelayedDragStartListener(
            index: index!,
            child: Material(
              type: MaterialType.transparency,
              child: _buildListTile(context, ref, isOpenSideBar),
            ),
          )
        : Material(
            type: MaterialType.transparency,
            child: _buildListTile(context, ref, isOpenSideBar),
          );
  }

  Widget _buildListTile(
      BuildContext context, WidgetRef ref, bool isOpenSideBar) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
      minTileHeight: 60,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: NetworkImageByCache(
                  width: 48,
                  height: 48,
                  imageUrl: playlist.cover,
                  defaultUrl: '',
                  errorIcon: Container(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    child: const Icon(Icons.music_note),
                  ),
                ),
              ),
              if (playlist.isTop)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.push_pin,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      title: isOpenSideBar && isSideBar || !isSideBar
          ? Text(
              playlist.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      subtitle: isOpenSideBar && isSideBar || !isSideBar
          ? Text(
              t.widget.audiosNum(count: playlist.songIds.length),
            )
          : null,
      trailing: isOpenSideBar && isSideBar || !isSideBar
          ? !playlist.isDefault
              ? GestureDetector(
                  onTap: () async {
                    await SelectCollectsOptionsBottomSheet.open(
                        context, ref, playlist.id);
                  },
                  child: Icon(
                    Icons.more_vert,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                  ),
                )
              : null
          : null,
      onTap: () async {
        await context.pushToPlaylist(
          playlist,
        );
      },
    );
  }
}
