import 'package:b_be_bee_app/controller/bili/bili_music_rank_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_music_list_dto.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/add_to_collects_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/button/bili_music_rank_page_history_popup_menu_button_widget.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BiliMusicRankPage extends ConsumerWidget {
  const BiliMusicRankPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(biliMusicRankProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
             Text(t.biliPage.musicRank),
            if (vm.currentPeriod != null) ...[
              const SizedBox(width: 8),
    Text(t.biliPage.currentPeriod(currentPeriod: vm.currentPeriod??''),
                style: Theme
                    .of(context)
                    .textTheme
                    .bodySmall,
              ),
            ],
          ],
        ),
        actions: [
          BiliMusicRankPageHistoryPopupMenuButtonWidget(allPeriods: vm.allPeriods,),

          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.refresh(biliMusicRankProvider),
          ),
        ],
      ),
      body: vm.isLoading
          ? const Center(child: CircularProgressIndicator())
          : vm.error != null
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t.general.loadFail(error: vm.error??'')),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.refresh(biliMusicRankProvider),
              child: Text(t.general.retry),
            ),
          ],
        ),
      )
          : ListView.builder(
        itemCount: vm.currentList?.list.length ?? 0,
        itemBuilder: (context, index) {
          final item = vm.currentList!.list[index];
          return _buildMusicItem(context, item, index, ref);
        },
      ),
    );
  }

  Widget _buildMusicItem(BuildContext context, AudioTopMusicItem item,
      int index, WidgetRef ref) {
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 32,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: index < 3 ? Theme
                    .of(context)
                    .colorScheme
                    .primary : null,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: NetworkImageByCache(
              width: 48,
              height: 48,
              imageUrl: item.creation_cover ?? '',
              defaultUrl: '',
            ),
          ),
        ],
      ),
      title: Text(
        item.music_title ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        item.creation_nickname ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () async => _showOptions(context, item, ref),
      ),
      onTap: () async {
        final audioInfo = AudioInfo.fromBili(
          title: item.music_title ?? '',
          coverWebUrl: item.creation_cover,
          duration: item.creation_duration ?? 0,
          bvid: item.creation_bvid ?? '',
          cid: 0,
          upperName: item.creation_nickname ?? '',
          upperId: item.creation_up.toString(),
        );
        await ref.read(biliMusicRankProvider.notifier).playMusic(audioInfo);
      },
    );
  }

  Future<void> _showOptions(BuildContext context, AudioTopMusicItem item,
      WidgetRef ref) async {
    final audioInfo = AudioInfo.fromBili(
      title: item.music_title ?? '',
      coverWebUrl: item.creation_cover,
      duration: item.creation_duration ?? 0,
      bvid: item.creation_bvid ?? '',
      cid: 0,
      upperName: item.creation_nickname ?? '',
      upperId: item.creation_up.toString()
    );

    await AddToCollectsBottomSheet.open(context, audioInfo);
  }
}