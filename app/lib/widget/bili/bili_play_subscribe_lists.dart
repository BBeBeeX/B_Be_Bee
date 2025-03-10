
import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/bili/bili_my_page_controller.dart';
import 'package:b_be_bee_app/controller/collects_playlist_page_controller.dart';
import 'package:b_be_bee_app/model/dto/collects/collects_list_all_dto.dart';
import 'package:b_be_bee_app/pages/collects_playlist_page.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/widget/bili/collects_item.dart';
import 'package:b_be_bee_app/widget/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../gen/strings.g.dart';
import '../../model/dao/collect_playlist.dart';
import '../../model/enum/collect_type_enum.dart';

class BiliPlaySubscribeLists extends ConsumerWidget {
  const BiliPlaySubscribeLists({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final globalKey = GlobalKey();
    ref.read(myBiliPageVmProvider.notifier).setSubscribePlaylistKey(globalKey);

    final CollectsListAllDto subscribeData = ref
        .watch(myBiliPageVmProvider)
        .subscribeData ?? CollectsListAllDto();

    return Container(
      key: globalKey,
      padding: const EdgeInsets.all(16),
      child: SectionWidget(
        title: t.widget.mySubscribeNum(count: subscribeData.count ?? 0),
        children: [
          if (subscribeData.list != null)
            ...subscribeData.list!.map((item) =>
                CollectsItem(
                  title: item.title ?? t.general.unnamedPlaylist,
                  count: t.widget.videosNum(count: item.media_count ?? 0),
                  coverUrl: item.cover,
                  onTap: () async {
                    if(item.id != null){
                      await context.push(() => CollectsPlaylistPage(
                        collectPlaylist: CollectPlaylist(
                          id: 'bili_season_${item.id.toString() ?? 0}' ,
                          collectCurrentType: CollectTypeEnum.biliSeason,
                          collectSourceType: CollectTypeEnum.biliSeason,
                          onlineId: item.id.toString() ?? '0',
                            cover: item.cover,
                          title: item.title??'',

                        ),
                      ));
                    }
                    await Future.microtask(() {
                      container.read(commonLoggerProvider.notifier).addLog('Tapped on favorite list: ${item.title}');
                    });
                  },
                ))
          else
            Center(
              child: Text(
                t.widget.noCollects,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}