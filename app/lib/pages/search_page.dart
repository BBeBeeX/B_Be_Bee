import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/controller/search_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/search_result_dto.dart';
import 'package:b_be_bee_app/pages/bili/bili_upper_page.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_music_options_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../controller/search_page_controller.dart';
import '../gen/strings.g.dart';



class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchControllerProvider);
    final tabController = ref.watch(searchTabControllerProvider);
    final textController = ref.watch(searchTextControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.surfaceContainer,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
                    child: TextField(
                      controller: textController,
                      autofocus: true,
                      style: const TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: t.searchPage.wantHear,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                      ),
                      onSubmitted: (value) async {
                        await ref.read(searchControllerProvider.notifier).setQuery(value);
                      },
                    ),
                  ),
                  if (textController.text.isNotEmpty)
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        textController.clear();
                        ref.read(searchControllerProvider.notifier).clearQuery();
                      },
                    ),
                ],
              ),
            ),

            if (searchState.query.isNotEmpty) ...[
              TabBar(
                controller: tabController,
                isScrollable: true,
                tabs:  [
                  ...SearchItemTypeEnum.values.map((item) {
                  return Tab(text: item.getLabel());
                  }),
                ],
              ),

              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ...SearchItemTypeEnum.values.map((item) {
                      return  SearchResultList(type: item);
                    }),
                  ],
                ),
              ),
            ] else ...[
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                       Text(
                        t.searchPage.searchPageTipsText1,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        t.searchPage.searchPageTipsText2,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class SearchResultList extends ConsumerWidget {
  final SearchItemTypeEnum type;

  const SearchResultList({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(searchControllerProvider).results;
    final typeResults = type == SearchItemTypeEnum.all ? results : results.where((result) => result.type == type).toList();

    if (ref.watch(searchControllerProvider).isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: typeResults.length,
      itemBuilder: (context, index) {
        final result = typeResults[index];
        return ListTile(
          leading: result.type.isUser()
              ?ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: NetworkImageByCache(width: 50, height: 50, imageUrl: result.imageUrl
              , defaultUrl: Constants.bili_up_default_cover,),
          )
              :NetworkImageByCache(width: 50, height: 50, imageUrl: result.imageUrl
            , errorIcon: const Icon(Icons.music_note), defaultUrl: '',),


          title: Text(result.title,maxLines: 1,  overflow: TextOverflow.ellipsis),
          subtitle: Text(result.type.getLabel(),maxLines: 1,),
          trailing: result.type.isVideo()
              ? IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () async {
              if(result.type == SearchItemTypeEnum.biliVideo){
                await SelectMusicOptionsBottomSheet.open(context, ref,
                    result.audioInfo,null,null,fromPlay: false,);
              }
            },
          )
              :null,

          onTap: () async {
              switch(result.type) {
                case SearchItemTypeEnum.all:
                    break;
                case SearchItemTypeEnum.biliUser:
                  await context.push(() => BiliUpperPage(uid: result.id));
                  break;
                case SearchItemTypeEnum.biliVideo:
                  if (result.audioInfo == null) return;
                  final List<AudioInfo> allAudioInfo = typeResults
                      .where((result) => result.audioInfo != null)
                      .map((result) => result.audioInfo!)
                      .toList();
                  if (allAudioInfo.isEmpty) return;
                  await ref.read(playlistControllerProvider.notifier).setPlaylist(allAudioInfo,'bili_search_${result.id}',song: result.audioInfo);
                  break;
              }
          },
        );
      },
    );
  }
}
