
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/download_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/native/permission_helper.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:b_be_bee_app/widget/dialogs/collects_delete_confirm_dialog.dart';
import 'package:b_be_bee_app/widget/dialogs/collects_rename_dialog.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:b_be_bee_app/widget/option_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class CollectsWebOptionsWidget extends ConsumerWidget {
  final String collectPlaylistId;

  const CollectsWebOptionsWidget({
    required this.collectPlaylistId,
  }) : super();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CollectPlaylist? playlist;
    final allPlaylist = ref.watch(collectsProvider).playlists;
    for (var temp in allPlaylist) {
      if (temp.id == collectPlaylistId) {
        playlist = temp;
      }
    }

    playlist ??= HiveHelper.getCollectsPlaylist(collectPlaylistId);
    if(playlist == null){
      context.pop();
    }

    final controller = ref.read(collectsProvider.notifier);

    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.3,
        maxChildSize: 0.5,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceDim,
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: NetworkImageByCache(
                            width: 40,
                            height: 40,
                            imageUrl: playlist?.cover ?? '',
                            defaultUrl: '',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                playlist?.title ??'',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                    color: Theme.of(context).colorScheme.surfaceTint
                                ),
                              ),
                              const SizedBox(height: 2),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1),

                  OptionItemWidget(
                    icon: playlist?.isTop ?? false ? Icons.push_pin : Icons.push_pin_outlined,
                    text: playlist?.isTop ?? false ? t.widget.cancelPin :t.widget.pin,
                    color: Theme.of(context).colorScheme.primaryFixed,
                    onTap: () async {
                      await controller.togglePinPlaylist(playlist!.id);
                    },
                  ),
                  OptionItemWidget(
                    icon: Icons.favorite,
                    color:Colors.red,
                    text:  t.general.cancelCollection,
                    onTap: () async {
                      await CollectsDeleteConfirmDialog.open(context, ref, playlist!.title, playlist.id);
                    },
                  ),
                  OptionItemWidget(
                    icon: Icons.edit,
                    color: Theme.of(context).colorScheme.primaryFixed,
                    text:  t.widget.rename,
                    onTap: () async {
                      await CollectsRenameDialog.open(context, ref, playlist!.title, playlist.id);
                    },
                  ),
                  OptionItemWidget(
                    icon: Icons.download,
                    color: Theme.of(context).colorScheme.primaryFixed,
                    text: t.general.download,
                    onTap: () async {
                      await getFilePermission();
                      await ToastUtil.show(t.widget.downloadingTitle(title: playlist!.title));
                      final list = await controller.getPlaylistSongs(playlist.id);
                      await ref.read(downloadControllerProvider.notifier).addDownloads(list);
                    },
                  ),
                  const SizedBox(height: 8),
                ],

              ),
            ),
          );
        }
    );
  }
}