import 'package:b_be_bee_app/controller/play_statistics_controller.dart';
import 'package:b_be_bee_app/model/dao/play_statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class PlayStatisticsPage extends ConsumerWidget {
  const PlayStatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statistics = ref.watch(playStatisticsProvider);
    final controller = ref.read(playStatisticsProvider.notifier);
    final stats = statistics.stats;

    if (stats.isEmpty) {
      return _buildEmptyState(context);
    }

    // 根据播放次数排序
    final sortedStats = stats.values.toList()
      ..sort((a, b) => b.playCount.compareTo(a.playCount));

    // 计算总的播放时间
    final totalDuration = sortedStats.fold<Duration>(
        Duration.zero, (total, stat) => total + stat.totalDuration);

    // 获取总的播放次数
    final totalPlayCount =
        sortedStats.fold<int>(0, (total, stat) => total + stat.playCount);

    return Scaffold(
      appBar: AppBar(
        title: const Text('播放统计'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () => _showClearDialog(context, controller),
            tooltip: '清除所有统计',
          ),
        ],
      ),
      body: Column(
        children: [
          _buildStatisticsSummary(
              context, totalPlayCount, totalDuration, sortedStats),
          Expanded(
            child: _buildStatisticsList(context, sortedStats, controller),
          ),
        ],
      ),
    );
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
      Duration totalDuration, List<PlayStatistics> sortedStats) {
    final lastPlayed = sortedStats.isEmpty
        ? null
        : sortedStats
            .map((e) => e.lastPlayTime)
            .where((time) => time != null)
            .reduce((a, b) => a!.isAfter(b!) ? a : b);

    return Container(
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
            '总播放时长: ${_formatDuration(totalDuration)}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          if (lastPlayed != null) ...[
            const SizedBox(height: 8),
            Text(
              '最近播放: ${DateFormat('yyyy-MM-dd HH:mm').format(lastPlayed!)}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStatisticsList(BuildContext context,
      List<PlayStatistics> sortedStats, PlayStatisticsController controller) {
    return ListView.builder(
      itemCount: sortedStats.length,
      itemBuilder: (context, index) {
        final stat = sortedStats[index];
        return ListTile(
          title: Text(stat.id), // 实际应用中可能需要显示歌曲名而不是ID
          subtitle: Text(
              '播放 ${stat.playCount} 次 · ${_formatDuration(stat.totalDuration)}'),
          trailing: IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () async {
              await controller.clearStats(stat.id);
            },
          ),
        );
      },
    );
  }

  void _showClearDialog(
      BuildContext context, PlayStatisticsController controller) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('清除所有统计'),
        content: const Text('确定要清除所有播放统计数据吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              controller.clearAllStats();
              Navigator.of(context).pop();
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '$hours小时$minutes分钟';
    } else if (minutes > 0) {
      return '$minutes分钟$seconds秒';
    } else {
      return '$seconds秒';
    }
  }
}
