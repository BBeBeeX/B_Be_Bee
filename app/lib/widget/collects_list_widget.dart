import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/init.dart';
import '../config/theme.dart';
import '../controller/collects_controller.dart';
import '../controller/collects_page_controller.dart';
import '../controller/main_page_controller.dart';
import '../gen/strings.g.dart';
import '../model/state/collects_page_state.dart';
import '../provider/logging/common_logs_provider.dart';
import 'button/collects_list_widget_sort_popup_menu_button_widget.dart';
import 'dialogs/input_new_collects_dialog.dart';
import 'list_tile/collects_playlist_tile.dart';

class CollectsListWidget extends ConsumerWidget {
  final bool isSideBar;

  const CollectsListWidget({
    super.key,
    this.isSideBar = false
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectsState = ref.watch(collectsPageProvider);
    final playlists = collectsState.playlists;
    final defaultPlaylists = playlists.where((p) => p.isDefault).toList();
    final normalPlaylists = playlists.where((p) => !p.isDefault).toList();

    final isSearching = ref.watch(collectsPageProvider).isSearching;
    final isOpenSideBar = ref.watch(mainPageProvider).isOpenSideBar;


    return CustomScrollView(
      slivers: [
        // 列表头
        SliverToBoxAdapter(
          child:
    isOpenSideBar?
          Container(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 搜索区域
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: collectsState.isSearching ? 200 : 40,
                  height: 40,
                  child: collectsState.isSearching
                      ? TextField(
                          autofocus: true,
                          onChanged: (value) {
                            ref.read(collectsPageProvider.notifier).setSearchText(value);
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                            hintText: t.widget.searchCollect,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                ref.read(collectsPageProvider.notifier).toggleSearch();
                              },
                            ),
                          ),
                        )
                      : IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            ref.read(collectsPageProvider.notifier).toggleSearch();
                          },
                        ),
                ),

                const SizedBox(width: 16),

                // 排序下拉菜单
                CollectsListWidgetSortPopupMenuButtonWidget(isSearching: isSearching, collectsStateSortMode: collectsState.sortMode,),

                // IconButton(
                //   icon: const Icon(Icons.grid_view),
                //   onPressed: () {
                //     // 切换视图
                //   },
                // ),
              ],
            ),
          ):null,
        ),

        // 原有的列表内容
        if (defaultPlaylists.isNotEmpty)
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CollectsPlaylistTile(
                key: ValueKey(defaultPlaylists[index].id),
                playlist: defaultPlaylists[index],
                isDraggable: false,
                isSideBar: isSideBar,
              ),
              childCount: defaultPlaylists.length,
            ),
          ),

        // 普通歌单列表
        if (normalPlaylists.isNotEmpty)
          SliverReorderableList(
            itemCount: normalPlaylists.length,
            onReorder: (oldIndex, newIndex) async {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final playlist = normalPlaylists.removeAt(oldIndex);
              normalPlaylists.insert(newIndex, playlist);

              // 更新歌单顺序
              await ref.read(collectsProvider.notifier).reorderPlaylists(
                normalPlaylists.map((p) => p.id).toList(),
              );
            },
            itemBuilder: (context, index) =>
                CollectsPlaylistTile(
                  key: ValueKey(normalPlaylists[index].id),
                  playlist: normalPlaylists[index],
                  isDraggable: true,
                  index: index,
                  isSideBar: isSideBar,
                ),
          ),

        if(isOpenSideBar)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: OutlinedButton.icon(
                onPressed: () async => InputNewCollectsDialog.open(context, ref),
                icon: const Icon(Icons.add),
                label: Text(t.collectsPage.createCollects),
              ),
            ),
          ),


      ],
    );
  }




}
