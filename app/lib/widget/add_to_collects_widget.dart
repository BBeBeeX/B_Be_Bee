import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';
import '../model/enum/collect_type_enum.dart';
import 'dialogs/input_new_collects_dialog.dart';

class AddToCollectsWidget extends ConsumerWidget {
  final dynamic song;

  const AddToCollectsWidget({
    super.key,
    required this.song,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(collectsProvider); //添加了会刷新当前页面

    if (song is AudioInfo) {
      return _buildSingleSongWidget(context,ref);
    } else if (song is List<AudioInfo>) {
      return _buildSongListWidget(context,ref);
    } else {
      return const Text('Invalid input');
    }
  }

  Widget _buildSingleSongWidget(BuildContext context, WidgetRef ref) {
    final controller = ref.read(collectsProvider.notifier);
    final (containingPlaylists, notContainingPlaylists) = controller.getPlaylistsBySongId(song.id);

    final sortedContainingPlaylists = [...containingPlaylists]..sort((a, b) {
      if (a.isTop != b.isTop) {
        return a.isTop ? -1 : 1;
      }
      if (a.isDefault != b.isDefault) {
        return a.isDefault ? -1 : 1;
      }
      return b.createTime.compareTo(a.createTime);
    });

    final sortedNotContainingPlaylists = [...notContainingPlaylists]..sort((a, b) {
      if (a.isTop != b.isTop) {
        return a.isTop ? -1 : 1;
      }
      if (a.isDefault != b.isDefault) {
        return a.isDefault ? -1 : 1;
      }
      return b.createTime.compareTo(a.createTime);
    });
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Column(
                  children: [
                    // 标题栏
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Text(
                            t.widget.addToCollects,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                    // 新建歌单按钮
                    ListTile(
                      leading: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.add),
                      ),
                      title: Text(t.widget.createCollect),
                      onTap: () async => InputNewCollectsDialog.open(context, ref),
                    ),
                    const Divider(),
                    // 歌单列表
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          if (sortedContainingPlaylists.isNotEmpty) ...[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                              child: Text(
                                t.widget.saveTo,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            ...sortedContainingPlaylists.map((playlist) =>
                                _buildPlaylistItem(context, playlist, true, controller)),
                          ],
                          if (sortedNotContainingPlaylists.isNotEmpty) ...[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                              child: Text(
                                t.widget.mostRelevant,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                            ...sortedNotContainingPlaylists.map((playlist) =>
                                _buildPlaylistItem(context, playlist, false, controller)),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSongListWidget(BuildContext context, WidgetRef ref) {
    final vm = ref.read(collectsProvider);
    final controller = ref.read(collectsProvider.notifier);
    
    final vmRemoveUnLocal = vm.playlists.where((playlist) => playlist.collectSourceType==CollectTypeEnum.local).toList();

    final sortedNotContainingPlaylists = vmRemoveUnLocal..sort((a, b) {
      if (a.isTop != b.isTop) {
        return a.isTop ? -1 : 1;
      }
      if (a.isDefault != b.isDefault) {
        return a.isDefault ? -1 : 1;
      }
      return b.createTime.compareTo(a.createTime);
    });

    return  Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Text(
                            t.widget.addToCollects,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                    // 新建歌单按钮
                    ListTile(
                      leading: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.add),
                      ),
                      title: Text(t.widget.createCollect),
                      onTap: () async => InputNewCollectsDialog.open(context, ref),
                    ),
                    const Divider(),
                    // 歌单列表
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          if (sortedNotContainingPlaylists.isNotEmpty) ...[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                              child: Text(
                                t.widget.mostRelevant,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                            ...sortedNotContainingPlaylists.map((playlist) =>
                                _buildPlaylistsItem(context, playlist, false, controller)),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPlaylistItem(
    BuildContext context, 
    CollectPlaylist playlist, 
    bool containsSong,
    CollectsController controller,
  ) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: NetworkImageByCache(
          width: 48,
          height: 48,
          imageUrl: playlist.cover ?? '',
          defaultUrl: '',
          errorIcon: Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            child: Icon(
              playlist.isDefault ? Icons.favorite : Icons.music_note,
            ),
          ),
        ),
      ),
      title: Text(playlist.title),
      subtitle: Row(
        children: [
          if (playlist.isTop) ...[
            Icon(
              Icons.push_pin,
              size: 14,
              color: Colors.green,
            ),
            const SizedBox(width: 4),
          ],
          Text(t.widget.audiosNum(count: playlist.songIds.length)),
        ],
      ),
      trailing: containsSong
          ? const Icon(Icons.check, color: Colors.green)
          : null,
      onTap: () async {
        if (containsSong) {
          await controller.removeFromPlaylist(playlist.id, song.id);
          if (context.mounted) {
            await ToastUtil.show( t.widget.removeFrom(title: playlist.title));
          }
        } else {
          await controller.addToPlaylist(playlist.id, song);
          if (context.mounted) {
            await ToastUtil.show( t.widget.addTo(title: playlist.title));
          }
        }
      },
    );
  }

  Widget _buildPlaylistsItem(
      BuildContext context,
      CollectPlaylist playlist,
      bool containsSong,
      CollectsController controller,
      ) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: NetworkImageByCache(
          width: 48,
          height: 48,
          imageUrl: playlist.cover ?? '',
          defaultUrl: '',
          errorIcon: Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            child: Icon(
              playlist.isDefault ? Icons.favorite : Icons.music_note,
            ),
          ),
        ),
      ),
      title: Text(playlist.title),
      subtitle: Row(
        children: [
          if (playlist.isTop) ...[
            Icon(
              Icons.push_pin,
              size: 14,
              color: Colors.green,
            ),
            const SizedBox(width: 4),
          ],
          Text(t.widget.audiosNum(count: playlist.songIds.length)),
        ],
      ),
      trailing: containsSong
          ? const Icon(Icons.check, color: Colors.green)
          : null,
      onTap: () async {
          await controller.addListToPlaylist(playlist.id, song);
          if (context.mounted) {
            await ToastUtil.show( t.widget.addTo(title: playlist.title));
          }
      },
    );
  }
} 