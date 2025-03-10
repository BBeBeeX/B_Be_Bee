import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controller/bili/bili_music_rank_controller.dart';
import '../../gen/strings.g.dart';
import '../../model/dto/audio/audio_top_list_dto.dart';

class BiliMusicRankPageHistoryPopupMenuButtonWidget extends ConsumerWidget{
  final List<AudioToplistPeriodItem> allPeriods;
  const BiliMusicRankPageHistoryPopupMenuButtonWidget({
    required this.allPeriods,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.history),
      itemBuilder: (context) =>
          allPeriods.map((period) {
            return PopupMenuItem(
              value: period.priod.toString(),
              child: Text(t.biliPage.currentPeriod(currentPeriod: period.priod)),
            );
          }).toList(),
      onSelected: (periodId) async {
        await ref.read(biliMusicRankProvider.notifier).loadMusicList(periodId);
      },
    );
  }
}