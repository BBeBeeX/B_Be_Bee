import 'package:b_be_bee_app/controller/play_statistics_controller.dart';
import 'package:b_be_bee_app/controller/play_statistics_page_controller.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/dao/play_statistics.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../util/time_utils.dart';
import '../widget/dialogs/play_statistics_page_show_clean_dialog.dart';

class PlayStatisticsPage extends ConsumerWidget {
  const PlayStatisticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statistics = ref.watch(playStatisticsProvider);
    final controller = ref.read(playStatisticsProvider.notifier);

    final pageState = ref.watch(playStatisticsPageProvider);
    final pageController = ref.read(playStatisticsPageProvider.notifier);

    final stats = statistics.stats;

    if (stats.isEmpty && pageState.playlists.isEmpty) {
      return _buildEmptyState(context);
    }

    // 获取所有统计数据
    final allStats = stats.values.toList();

    // 创建歌曲统计列表 - 根据当前排序类型
    final songStats = List<PlayStatistics>.from(allStats);
    if (pageState.sortSongsByDuration) {
      songStats.sort((a, b) => b.totalDuration.compareTo(a.totalDuration));
    } else {
      songStats.sort((a, b) => b.playCount.compareTo(a.playCount));
    }

    // 创建包含所有集合的统计列表
    final allCollections =
        _createAllCollectionStats(pageState.playlists, controller);

    // 根据设置选择显示哪些集合
    final displayCollections = pageState.showAllCollections
        ? allCollections
        : allCollections.where((collection) => collection.count > 0).toList();

    // 排序集合
    if (pageState.sortCollectionsByDuration) {
      displayCollections.sort((a, b) => b.value.compareTo(a.value));
    } else {
      displayCollections.sort((a, b) => b.count.compareTo(a.count));
    }

    // 计算总的播放时间
    final totalDuration = allStats.fold<Duration>(
        Duration.zero, (total, stat) => total + stat.totalDuration);

    // 获取总的播放次数
    final totalPlayCount =
        allStats.fold<int>(0, (total, stat) => total + stat.playCount);

    return Scaffold(
      appBar: AppBar(
        title: const Text('播放统计'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () => PlayStaticsPageShowCleanDialog.open(controller),
            tooltip: '清除所有统计',
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildStatisticsSummary(
              context, totalPlayCount, totalDuration, allStats),
          const Divider(),
          // 集合统计
          _buildCollectionStatistics(
              context, displayCollections, controller, pageState, ref),
          const Divider(),
          // 歌曲统计
          _buildSongStatistics(context, songStats, controller, pageState, ref),
        ],
      ),
    );
  }

  List<CollectionStat> _createAllCollectionStats(
    List<CollectPlaylist> playlists,
    PlayStatisticsController controller,
  ) {
    // 创建一个Map来存储所有集合的统计数据
    final Map<String, CollectionStat> allCollectionsMap = {};

    // 添加所有集合，包括没有播放记录的
    for (final playlist in playlists) {
      if (!allCollectionsMap.containsKey(playlist.id)) {
        // 使用API方法获取该集合所有歌曲的统计数据
        final songIds = playlist.songIds.map((s) => s).toList();
        final statsData = controller.getTotalDurationAndLastPlayTime(songIds);

        // 获取已播放的歌曲ID列表
        final playedSongIds = <String>[];
        var totalCount = 0;

        // 遍历集合中的所有歌曲ID，计算总播放次数和收集已播放的歌曲ID
        for (final songId in playlist.songIds) {
          final stats = controller.getStats(songId);
          if (stats != null) {
            totalCount += stats.playCount;
            playedSongIds.add(songId);
          }
        }

        allCollectionsMap[playlist.id] = CollectionStat(
          id: playlist.id,
          name: playlist.title,
          count: totalCount,
          value: statsData['totalDuration'] as Duration,
          lastPlayTime: statsData['lastPlayTime'] as DateTime?,
          songIds: playedSongIds,
        );
      }
    }

    return allCollectionsMap.values.toList();
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('播放统计'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.music_note,
              size: 80,
              color: Theme.of(context).disabledColor,
            ),
            const SizedBox(height: 16),
            Text(
              '暂无播放统计数据',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              '播放音乐后会记录您的播放记录',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsSummary(BuildContext context, int totalPlayCount,
      Duration totalDuration, List<PlayStatistics> stats) {
    final lastPlayed = stats.isEmpty
        ? null
        : stats
            .map((e) => e.lastPlayTime)
            .where((time) => time != null)
            .reduce((a, b) => a!.isAfter(b!) ? a : b);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: Column(
        children: [
          Text(
            '总播放次数: $totalPlayCount',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            '总播放时长: ${TimeUtils.durationToTimeString(totalDuration)}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          if (lastPlayed != null) ...[
            const SizedBox(height: 8),
            Text(
              '最近播放: ${DateFormat('yyyy-MM-dd HH:mm').format(lastPlayed)}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCollectionStatistics(
    BuildContext context,
    List<CollectionStat> collections,
    PlayStatisticsController controller,
    PlayStatisticsPageState pageState,
    WidgetRef ref,
  ) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (int index, bool isExpanded) async {
        ref
            .read(playStatisticsPageProvider.notifier)
            .toggleCollectionExpanded();
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(
                '集合播放统计',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PopupMenuButton<String>(
                    icon: Icon(
                      pageState.sortCollectionsByDuration
                          ? Icons.timer_outlined
                          : Icons.repeat_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    tooltip: '排序方式',
                    onSelected: (String value) {
                      if (value == 'duration') {
                        if (pageState.sortCollectionsByDuration) {
                        } else {
                          ref
                              .read(playStatisticsPageProvider.notifier)
                              .toggleSortCollectionsByDuration();
                        }
                      } else if (value == 'count') {
                        if (!pageState.sortCollectionsByDuration) {
                        } else {
                          ref
                              .read(playStatisticsPageProvider.notifier)
                              .toggleSortCollectionsByDuration();
                        }
                      }
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'duration',
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: pageState.sortCollectionsByDuration
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '按播放时长',
                              style: TextStyle(
                                fontWeight: pageState.sortCollectionsByDuration
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: pageState.sortCollectionsByDuration
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'count',
                        child: Row(
                          children: [
                            Icon(
                              Icons.repeat_outlined,
                              color: !pageState.sortCollectionsByDuration
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '按播放次数',
                              style: TextStyle(
                                fontWeight: !pageState.sortCollectionsByDuration
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: !pageState.sortCollectionsByDuration
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(pageState.showCollectionsWithName
                        ? Icons.folder
                        : Icons.folder_outlined),
                    tooltip: '显示歌单名称',
                    onPressed: () {
                      ref
                          .read(playStatisticsPageProvider.notifier)
                          .toggleShowCollectionsWithName();
                    },
                  ),
                  IconButton(
                    icon: Icon(pageState.showAllCollections
                        ? Icons.visibility
                        : Icons.visibility_off),
                    tooltip:
                        pageState.showAllCollections ? '显示所有集合' : '只显示有播放记录的集合',
                    onPressed: () {
                      ref
                          .read(playStatisticsPageProvider.notifier)
                          .toggleShowAllCollections();
                    },
                  ),
                ],
              ),
            );
          },
          body: collections.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('暂无集合播放统计数据'),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: collections.length,
                  itemBuilder: (context, index) {
                    final collection = collections[index];

                    // 显示的是歌单名称还是ID
                    final displayName = pageState.showCollectionsWithName
                        ? collection.name
                        : collection.id;

                    // 查找对应的歌单信息
                    CollectPlaylist? playlist;
                    for (var p in pageState.playlists) {
                      if (p.id == collection.id) {
                        playlist = p;
                        break;
                      }
                    }

                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        title: Text(
                          displayName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '播放 ${collection.count} 次',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          if (collection.count > 0) ...[
                                            const SizedBox(width: 4),
                                            Icon(
                                              Icons.play_circle_outline,
                                              size: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                          ],
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '时长: ${TimeUtils.durationToTimeString(collection.value)}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                if (playlist != null) ...[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        collection.songIds.isEmpty
                                            ? '暂无播放记录'
                                            : '${collection.songIds.length} 首歌曲',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '共 ${playlist.songIds.length} 首',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            ),
                            if (collection.lastPlayTime != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  '最近播放: ${DateFormat('yyyy-MM-dd HH:mm').format(collection.lastPlayTime!)}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                          ],
                        ),
                        onTap: () async {
                          await ref
                              .read(playStatisticsPageProvider.notifier)
                              .playCollection(collection);
                        },
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(8),
                            image: playlist?.cover != null &&
                                    playlist!.cover!.isNotEmpty
                                ? DecorationImage(
                                    image: NetworkImage(playlist.cover!),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                          child: playlist?.cover == null ||
                                  playlist!.cover!.isEmpty
                              ? Center(
                                  child: Icon(
                                    Icons.folder,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    size: 30,
                                  ),
                                )
                              : null,
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.play_arrow),
                          onPressed: () async {
                            await ref
                                .read(playStatisticsPageProvider.notifier)
                                .playCollection(collection);
                          },
                        ),
                      ),
                    );
                  },
                ),
          isExpanded: pageState.isCollectionExpanded,
        ),
      ],
    );
  }

  Widget _buildSongStatistics(
    BuildContext context,
    List<PlayStatistics> stats,
    PlayStatisticsController controller,
    PlayStatisticsPageState pageState,
    WidgetRef ref,
  ) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (int index, bool isExpanded) {
        ref.read(playStatisticsPageProvider.notifier).toggleSongExpanded();
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(
                '歌曲播放统计',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PopupMenuButton<String>(
                    icon: Icon(
                      pageState.sortSongsByDuration
                          ? Icons.timer_outlined
                          : Icons.repeat_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    tooltip: '排序方式',
                    onSelected: (String value) {
                      if (value == 'duration') {
                        if (pageState.sortSongsByDuration) {
                          // Already sorting by duration, do nothing
                        } else {
                          ref
                              .read(playStatisticsPageProvider.notifier)
                              .toggleSortSongsByDuration();
                        }
                      } else if (value == 'count') {
                        if (!pageState.sortSongsByDuration) {
                          // Already sorting by count, do nothing
                        } else {
                          ref
                              .read(playStatisticsPageProvider.notifier)
                              .toggleSortSongsByDuration();
                        }
                      }
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'duration',
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: pageState.sortSongsByDuration
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '按播放时长',
                              style: TextStyle(
                                fontWeight: pageState.sortSongsByDuration
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: pageState.sortSongsByDuration
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'count',
                        child: Row(
                          children: [
                            Icon(
                              Icons.repeat_outlined,
                              color: !pageState.sortSongsByDuration
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '按播放次数',
                              style: TextStyle(
                                fontWeight: !pageState.sortSongsByDuration
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: !pageState.sortSongsByDuration
                                    ? Theme.of(context).colorScheme.primary
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          body: stats.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('暂无歌曲播放统计数据'),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: stats.length,
                  itemBuilder: (context, index) {
                    final stat = stats[index];
                    final audioInfo = HiveHelper.getAudioInfo(stat.id);

                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        title: Text(
                          audioInfo?.title ?? stat.id,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '播放 ${stat.playCount} 次',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          const SizedBox(width: 4),
                                          Icon(
                                            Icons.play_circle_outline,
                                            size: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '时长: ${TimeUtils.durationToTimeString(stat.totalDuration)}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                if (audioInfo?.upper.name != null &&
                                    audioInfo!.upper.name.isNotEmpty)
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          audioInfo.upper.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            if (stat.lastPlayTime != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  '最近播放: ${DateFormat('yyyy-MM-dd HH:mm').format(stat.lastPlayTime!)}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                          ],
                        ),
                        onTap: () async {
                          await ref
                              .read(playStatisticsPageProvider.notifier)
                              .playSongById(stat.id);
                        },
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            borderRadius: BorderRadius.circular(8),
                            image: audioInfo?.coverWebUrl != null &&
                                    audioInfo!.coverWebUrl.isNotEmpty
                                ? DecorationImage(
                                    image: NetworkImage(audioInfo.coverWebUrl),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                          child: audioInfo?.coverWebUrl == null ||
                                  audioInfo!.coverWebUrl.isEmpty
                              ? Center(
                                  child: Icon(
                                    Icons.music_note,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                    size: 30,
                                  ),
                                )
                              : null,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.play_arrow),
                              onPressed: () async {
                                await ref
                                    .read(playStatisticsPageProvider.notifier)
                                    .playSongById(stat.id);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_outline),
                              onPressed: () async {
                                await controller.clearStats(stat.id);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
          isExpanded: pageState.isSongExpanded,
        ),
      ],
    );
  }
}

/// 用于表示集合统计的类
class CollectionStat {
  String id;
  String name;
  int count;
  Duration value;
  DateTime? lastPlayTime;
  List<String> songIds;

  CollectionStat({
    required this.id,
    required this.name,
    required this.count,
    required this.value,
    this.lastPlayTime,
    required this.songIds,
  });
}
