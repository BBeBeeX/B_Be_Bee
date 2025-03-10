import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/collects_playlist_page_controller.dart';
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/download_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:b_be_bee_app/model/enum/sort_method_enum.dart';
import 'package:b_be_bee_app/pages/collects_playlist_search_page.dart';
import 'package:b_be_bee_app/pages/bili/bili_upper_page.dart';
import 'package:b_be_bee_app/util/time_utils.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/batch_operation_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_list_audioInfo_to_addition_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/dialogs/collects_delete_confirm_dialog.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:b_be_bee_app/widget/list_tile/audio_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../config/theme.dart';
import '../controller/play_statistics_controller.dart';
import '../gen/strings.g.dart';
import '../model/dao/collect_playlist.dart';
import '../provider/image_color_provider.dart';
import '../util/audio_handler.dart';
import '../widget/desktop_main_area_widget.dart';
import '../widget/loading_widget.dart';

class CollectsPlaylistPage extends ConsumerWidget {
  final CollectPlaylist collectPlaylist;

  const CollectsPlaylistPage({
    super.key,
    required this.collectPlaylist,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(collectsPlaylistPageProvider(collectPlaylist.id));
    if(!vm.isLoaded){
      ref.read(collectsPlaylistPageProvider(collectPlaylist.id).notifier).loadData(collectPlaylist);
    }

    return Scaffold(
      body: SafeArea(
        child: vm.isLoading
            ? LoadingWidget()
            : _buildBody(context, vm, ref),
      ),
    );
  }

  Widget _buildBody(BuildContext context, CollectsPageVm vm, WidgetRef ref)  {
    if (vm.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(t.general.loadFail(error: vm.error??'')),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async =>
                  ref.read(collectsPlaylistPageProvider(collectPlaylist.id).notifier)
                      .loadData(collectPlaylist),
              child: Text(t.general.retry),
            ),
          ],
        ),
      );
    }

    final data = vm.collectPlaylist;
    if (data == null) {
      return Center(child: Text(t.general.noAvailableNow));
    }

    final mainColor = ref.watch(imageColorProvider(data.cover ?? ''));
    bool isFav = ref
        .watch(collectsProvider)
        .playlistIds
        .contains(vm.collectPlaylist?.id);

    return DesktopMainAreaWidget(
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                mainColor.when(
                  data: (color) => color ?? Theme.of(context).cardColor,
                  loading: () => Theme.of(context).cardColor,
                  error: (error, stack) => Colors.red,
                ),
                Colors.transparent,
              ],
              stops: const [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(collectPlaylist.title),
              actions: [
                if(collectPlaylist.collectCurrentType != CollectTypeEnum.local)
                  IconButton(
                    icon: const Icon(Icons.sync),
                    onPressed: () async {
                      await ref.read(collectsPlaylistPageProvider(collectPlaylist.id).notifier).loadData(collectPlaylist);
                    },
                  ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () async {
                    await context.push(() =>
                        CollectsPlaylistSearchPage(
                          medias: vm.collectPlaylist?.songs ?? [],
                        ));
                  },
                ),
              ],
            ),
            if(true)
              SliverToBoxAdapter(
                child: _buildHeader(context,vm,ref, data,isFav),
              ),
            SliverToBoxAdapter(
              child: _buildActionButtons(context, vm, ref,isFav),
            ),
            SliverToBoxAdapter(
              child: _buildPlayAllSection(context, ref, vm),
            ),
            AudioTile(
                medias: vm.sortedMedias??[],
              collectPlaylist:collectPlaylist,
              isDraggable: vm.currentSortMethod == SortMethodEnum.default_ &&
                  collectPlaylist.collectCurrentType == CollectTypeEnum.local,
                onReorder: (oldIndex, newIndex) async {
                  await ref.read(collectsPlaylistPageProvider(collectPlaylist.id).notifier)
                      .reorderSongs(oldIndex, newIndex);
                },
                removeAudio: collectPlaylist.collectCurrentType ==CollectTypeEnum.local? ref.read(collectsProvider.notifier).removeFromPlaylist:null
              ,
            ),
          ],
        )
      ],)
    )


      ;
  }

  Widget _buildHeader(BuildContext context, CollectsPageVm vm,
      WidgetRef ref, CollectPlaylist? info,bool isFav) {

    final listenTime = TimeUtils.durationToTimeString(
        ref.read(playStatisticsProvider.notifier)
            .getTotalDurationByIdList(info?.songIds??[])
    );

    final defaultCover = info?.songs
        ?.map((song) => song.coverWebUrl)
        .firstWhere((cover) => cover.isNotEmpty,orElse:()=> '') ;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: NetworkImageByCache(
              width: 120,
              height: 120,
              imageUrl: info?.cover ?? defaultCover,
              errorIcon: const Icon(
                  Icons.collections_bookmark_sharp, color: Colors.grey),
              defaultUrl: '',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info?.title ?? t.general.unnamedPlaylist,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),
                if (info?.upper != null)
                  InkWell(
                    onTap: () async {
                      await context.push(() =>
                          BiliUpperPage(uid: info?.upper?.id ?? '0'));
                    },
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: NetworkImageByCache(
                            width: 30, height: 30, imageUrl: info?.upper?.face
                            , defaultUrl: Constants.bili_up_default_cover,),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          info?.upper?.name ?? t.general.unknownUser,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const Icon(Icons.chevron_right, color: Colors.grey),
                      ],
                    ),
                  ),
                const SizedBox(height: 8),
                // if(param.type == CollectTypeEnum.local)
                  Row(
                    children: [
                      Icon(Icons.headphones, color: Colors.grey,),
                      const SizedBox(width: 8),
                      Text(
                        info?.songs?.isNotEmpty == true
                            ? listenTime
                            : t.utils.toMinute(minute: 0)
                        , style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, CollectsPageVm vm,
      WidgetRef ref,bool isFav) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          if( collectPlaylist.collectCurrentType != CollectTypeEnum.local)
            _buildActionButton(Icons.playlist_add, t.general.addTo, () async {
              await SelectListAudioInfoToAdditionBottomSheet.open(
                  context, ref, vm.collectPlaylist?.songs??[],vm.collectPlaylist?.id??'');
            }),


          isFav
              ? _buildActionButton(Icons.favorite, t.general.cancelCollection, () async {
            await CollectsDeleteConfirmDialog.open(
                context, ref, vm.collectPlaylist?.title ??'', vm.collectPlaylist?.id??'');
            if(collectPlaylist.collectCurrentType == CollectTypeEnum.local){
              context.pop();
            }
          }, iconColor: Colors.red
          )
              : _buildActionButton(Icons.favorite_border, t.general.favorite, () async {
            if (vm.collectPlaylist?.songs?.isNotEmpty ?? false) {
              final collectPlaylistId = await ref.read(
                  collectsProvider.notifier)
                  .createPlaylist(
                  title: collectPlaylist.title ?? t.general.unnamedPlaylist,
                  playlistId: collectPlaylist.id,
                cover: collectPlaylist.cover,
                collectCurrentType: CollectTypeEnum.local,
                collectSourceType: collectPlaylist.collectSourceType,
                onlineId:collectPlaylist.onlineId
              );

              await ref.read(collectsProvider.notifier)
                  .addListToPlaylist(
                  collectPlaylistId,
                  vm.collectPlaylist?.songs??[]
              );

              await ToastUtil.show(t.collectsPage.addToCollectsSuccess);
            }
          }
          ),

          _buildActionButton(Icons.download, t.general.download, () async {
            final collectPlaylistId = await ref.read(
                collectsProvider.notifier)
                .createPlaylist(
                title: collectPlaylist.title ?? t.general.unnamedPlaylist,
                playlistId: collectPlaylist.id,
                cover: collectPlaylist.cover,
                collectCurrentType: CollectTypeEnum.local,
                collectSourceType: collectPlaylist.collectSourceType,
                onlineId:collectPlaylist.onlineId
            );

            await ref.read(collectsProvider.notifier)
                .addListToPlaylist(
                collectPlaylistId,
                vm.collectPlaylist?.songs??[]
            );

            await ref.read(downloadControllerProvider.notifier).addDownloads(
                vm.collectPlaylist?.songs??[]);
          }),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label,
      VoidCallback onPressed,{Color? iconColor,double? iconSize = 24}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.grey.withOpacity(0.2),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(icon, size: iconSize,color: iconColor,),
            const SizedBox(width: 4),
            Text(label),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayAllSection(BuildContext context, WidgetRef ref, CollectsPageVm vm) {

    final playlistId = ref.watch(playlistControllerProvider).playlistId;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
    playlistId == vm.collectPlaylist?.id
              ?

    StreamBuilder<bool>(
      stream: CustomAudioHandler.instance
          .playbackState
          .map((state) => state.playing)
          .distinct(),
      builder: (context, snapshot) {
        final playing = snapshot.data ?? false;
        return Row(
          mainAxisAlignment: MainAxisAlignment
              .center,
          children: [
            IconButton(
              icon:  Icon(playing ?Icons.pause_circle_filled:Icons.play_circle_filled, size: 36,color: green,),
              onPressed: () async {
                  playing
                    ? ref.read(playlistControllerProvider.notifier).pause()
                    : ref.read(playlistControllerProvider.notifier).play();
              },
            )
          ],
        );
      },
    )
              :
          IconButton(
            icon:  Icon(Icons.play_circle_filled, size: 36,color: green,),
            onPressed: () async {
              if (vm.collectPlaylist != null &&(vm.collectPlaylist?.songs?.isNotEmpty ?? false)) {
                await ref.read(playlistControllerProvider.notifier).setPlaylist(
                    vm.collectPlaylist?.songs??[],vm.collectPlaylist?.id??''
                );
              }
            },
          ),
          const SizedBox(width: 8),
          Text(t.collectsPage.playAllMedias(length:vm.collectPlaylist?.songs?.length ?? 0)),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.checklist),
            iconSize: 20,
            onPressed: () async {
              if (vm.collectPlaylist?.songs != null) {
                await BatchOperationBottomSheet.open(
                    context,
                    vm.collectPlaylist?.songs??[],
                    vm.collectPlaylist?.id??'',
                    collectPlaylist.collectCurrentType == CollectTypeEnum.local ? ref
                        .read(collectsProvider.notifier)
                        .removeSongs : null
                );
                await ref.read(collectsPlaylistPageProvider(collectPlaylist.id).notifier).loadData(collectPlaylist);
              }
            },
          ),
          const SizedBox(width: 16),
          PopupMenuButton<SortMethodEnum>(
            icon: const Icon(Icons.sort),
            onSelected: (SortMethodEnum method) {
              ref.read(collectsPlaylistPageProvider(collectPlaylist.id).notifier).setSortMethod(method);
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: SortMethodEnum.default_,
                child: Row(
                  children: [
                    Icon(Icons.restore, color: vm.currentSortMethod == SortMethodEnum.default_ ? Colors.green : null),
                    SizedBox(width: 8),
                    Text(t.collectsPage.defaultSort,style: TextStyle( color: vm.currentSortMethod == SortMethodEnum.default_ ? Colors.green : null)),
                    if (vm.currentSortMethod == SortMethodEnum.default_) const Icon(Icons.check, color: Colors.green),
                  ],
                ),
              ),
              PopupMenuItem(
                value: SortMethodEnum.titleAZ,
                child: Row(
                  children: [
                    Icon(Icons.sort_by_alpha, color: vm.currentSortMethod == SortMethodEnum.titleAZ ? Colors.green : null),
                    SizedBox(width: 8),
                    Text(t.collectsPage.songTitleSort,style: TextStyle( color: vm.currentSortMethod == SortMethodEnum.titleAZ ? Colors.green : null)),
                    if (vm.currentSortMethod == SortMethodEnum.titleAZ) const Icon(Icons.check, color: Colors.green),
                  ],
                ),
              ),
              PopupMenuItem(
                value: SortMethodEnum.artistAZ,
                child: Row(
                  children: [
                    Icon(Icons.person, color: vm.currentSortMethod == SortMethodEnum.artistAZ ? Colors.green : null),
                    SizedBox(width: 8),
                    Text(t.collectsPage.singerNameSort,style: TextStyle( color: vm.currentSortMethod == SortMethodEnum.artistAZ ? Colors.green : null)),
                    if (vm.currentSortMethod == SortMethodEnum.artistAZ) const Icon(Icons.check, color: Colors.green),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

