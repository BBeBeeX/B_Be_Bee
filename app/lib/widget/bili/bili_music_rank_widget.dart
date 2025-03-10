import 'package:b_be_bee_app/controller/bili/bili_music_rank_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_music_list_dto.dart';
import 'package:b_be_bee_app/pages/bili/bili_music_rank_page.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../gen/strings.g.dart';

class BiliMusicRankWidget extends ConsumerWidget {
  const BiliMusicRankWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(biliMusicRankProvider);

    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          InkWell(
            onTap: () async => context.push(() => const BiliMusicRankPage()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    t.widget.biliMusicRank,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    t.general.more,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ),
          if (vm.isLoading)
            const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (vm.error != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(t.general.loadFail(error: vm.error??'')),
            )
          else if (vm.currentList == null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Center(child: Text(t.widget.noDataNow)),
            )
          else
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: vm.currentList!.list.length.clamp(0, 10),
                itemBuilder: (context, index) {
                  final item = vm.currentList!.list[index];
                  return _buildMusicCard(context, item, index, ref);
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildMusicCard(BuildContext context, AudioTopMusicItem item, int index, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        final audioInfo = AudioInfo.fromBili(
          title: item.music_title ?? '',
          coverWebUrl: item.creation_cover,
          duration: item.creation_duration ?? 0,
          bvid: item.creation_bvid ?? '',
          cid: 0,
          upperId: item.creation_up.toString() ?? '',
          upperName: item.creation_nickname ?? '',
        );
        await ref.read(biliMusicRankProvider.notifier).playMusic(audioInfo);
      },
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: NetworkImageByCache(
                    width: 124,
                    height: 124,
                    imageUrl: item.creation_cover ?? '',
                    defaultUrl: '',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    'NO.${index + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              item.music_title ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              item.creation_nickname ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
} 