import 'package:b_be_bee_app/controller/bili/bili_music_rank_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dto/audio/audio_top_list_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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