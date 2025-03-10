import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/bili/bili_collect_search_page_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';

class CollectsPlaylistSearchPage extends ConsumerWidget {
  final List<AudioInfo> medias;
  final String initialKeyword;

  const CollectsPlaylistSearchPage({
    super.key,
    required this.medias,
    this.initialKeyword = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(biliCollectSearchPageProvider(medias));
    final controller = ref.read(biliCollectSearchPageProvider(medias).notifier);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: _buildSearchField(context, vm, controller),
      ),
      body: _buildBody(context, vm),
    );
  }

  Widget _buildSearchField(
      BuildContext context,
      BiliCollectSearchPageVm vm,
      BiliCollectSearchPageController controller,
      ) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: t.collectsPage.searchCurrentCollect,
        border: InputBorder.none,
        suffixIcon: vm.keyword.isNotEmpty
            ? IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () => controller.clearSearch(),
        )
            : null,
      ),
      onChanged: (value) => controller.performSearch(value),
    );
  }

  Widget _buildBody(BuildContext context, BiliCollectSearchPageVm vm) {
    if (vm.isSearching) {
      return const Center(child: CircularProgressIndicator());
    }

    if (vm.keyword.isEmpty) {
      return Center(
        child: Text(t.collectsPage.inputKeyWord),
      );
    }

    if (vm.searchResults.isEmpty) {
      return Center(
        child: Text(t.collectsPage.noSearchData),
      );
    }

    return ListView.builder(
      itemCount: vm.searchResults.length,
      itemBuilder: (context, index) => _buildSearchResultItem(
        context,
        vm.searchResults[index],
      ),
    );
  }

  Widget _buildSearchResultItem(BuildContext context, AudioInfo media) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: NetworkImageByCache(
          width: 60,
          height: 40,
          imageUrl: media.coverWebUrl,
          defaultUrl:Constants.bili_video_default_cover,
        ),
      ),
      title: Text(
        media.title ?? t.general.unnamedVideo,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        children: [
          ...[
          Text(
            media.upper.name ?? t.general.unknownUser,
            style: const TextStyle(fontSize: 12),
          ),
        ],
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () {
          // TODO: 实现更多操作
        },
      ),
    );
  }
}