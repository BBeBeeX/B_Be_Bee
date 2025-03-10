import 'dart:ui';

import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dto/collects/seasons_series/bili_seasons_series_archives.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:b_be_bee_app/widget/no_resource_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/strings.g.dart';

class BiliUpperPage extends ConsumerWidget {
  final String uid;

  const BiliUpperPage({
    super.key,
    required this.uid,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (uid.isEmpty) {
      return NoResourceWidget(
        head: t.biliPage.upperNoResourceHead,
        title: t.biliPage.upperNoResourceTitle,
        describe: t.biliPage.upperNoResourceDescribe,
      );
    }

    final state = ref.watch(biliUpperPageProvider(uid));

    if (state.isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                ],
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: NetworkImageByCache(
                        imageUrl: state.upperFace,
                        defaultUrl: '',
                        width: double.infinity,
                        height: double.infinity,
                        boxFit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(context).scaffoldBackgroundColor,
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: NetworkImageByCache(
                                  imageUrl: state.upperFace,
                                  defaultUrl: '',
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.upperName,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    if (state.notice.isNotEmpty == true) ...[
                                      const SizedBox(height: 4),
                                      Text(
                                        state.notice,
                                        style: Theme.of(context).textTheme.bodySmall,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),

            if (state.allVideos?.isNotEmpty == true) ...[
              SliverToBoxAdapter(
                child: _buildAllVideos(context, state,ref),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
            ],

            if (state.seasonsAndSeries.seasons_list?.isNotEmpty == true) ...[
              SliverToBoxAdapter(
                child: _buildSeasonsList(context,ref, state),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
            ],

            if (state.seasonsAndSeries.series_list?.isNotEmpty == true) ...[
              SliverToBoxAdapter(
                child: _buildSeriesList(context,ref, state),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
            ],

          ],
        ),
    );
  }

  Widget _buildSeasonsList(BuildContext context, WidgetRef ref, BiliUpperPageState state) {
    if (state.seasonsAndSeries.seasons_list == null) return const SizedBox();
    
    return Column(
      children: state.seasonsAndSeries.seasons_list!.map((season) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      season.meta?.name ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      await ref.read(biliUpperPageProvider(uid).notifier).playSeason( season,state);
                      },
                    icon: const Icon(Icons.play_arrow, size: 20),
                    label: Text(t.general.playAll),
                  ),
                  TextButton.icon(
                    onPressed: () async{
                      await ref.read(biliUpperPageProvider(uid).notifier).toSeasonCollectPage(context, season);
                    },
                    icon: const Icon(Icons.chevron_right, size: 20),
                    label: Text(t.general.more),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: season.archives?.length ?? 0,
                itemBuilder: (context, index) {
                  final video = season.archives![index];
                  return _buildArchiveCard(ref,state,season, video);
                },
              ),
            ),
            const SizedBox(height: 8), // 添加间距
          ],
        );
      }).toList(),
    );
  }

  Widget _buildSeriesList(BuildContext context, WidgetRef ref, BiliUpperPageState state) {
    if (state.seasonsAndSeries.series_list == null) return const SizedBox();
    
    return Column(
      children: state.seasonsAndSeries.series_list!.map((series) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      series.meta?.name ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      await ref.read(biliUpperPageProvider(uid).notifier).playSeries( series,state);
                    },
                    icon: const Icon(Icons.play_arrow, size: 20),
                    label: Text(t.general.playAll),
                  ),
                  TextButton.icon(
                    onPressed: () async{
                      await ref.read(biliUpperPageProvider(uid).notifier).toSeriesCollectPage(context, series, state);
                    },
                    icon: const Icon(Icons.chevron_right, size: 20),
                    label: Text(t.general.more),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: series.archives?.length ?? 0,
                itemBuilder: (context, index) {
                  final video = series.archives![index];
                  return _buildArchiveCard(ref,state,series, video);
                },
              ),
            ),
            const SizedBox(height: 8),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildAllVideos(BuildContext context, BiliUpperPageState state, WidgetRef ref) {
    if (state.allVideos == null) return const SizedBox();

    final rows = (state.allVideos!.length / 5).ceil().clamp(0, 2);
    return Column(
      children: List.generate(rows, (rowIndex) {
        final startIndex = rowIndex * 5;
        final endIndex = (startIndex + 5).clamp(0, state.allVideos!.length);
        return Column(
          children: [
            if (rowIndex == 0)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Row(
                  children: [
                     Expanded(
                      child: Text(
                        t.general.allVideos,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () async {
                          await ref.read(biliUpperPageProvider(uid).notifier).playAllAudios();
                      },
                      icon: const Icon(Icons.play_arrow, size: 20),
                      label: Text(t.general.playAll),
                    ),
                    TextButton.icon(
                      onPressed: () async {
                        await ref.read(biliUpperPageProvider(uid).notifier).toAllAudiosCollectPage(context);
                      },
                      icon: const Icon(Icons.chevron_right, size: 20),
                      label: Text(t.general.more),
                    ),
                  ],
                ),
              ),
            Row(
              children: [
                const SizedBox(width: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: state.allVideos!
                        .sublist(startIndex, endIndex)
                        .map((video) => _buildVideoCard(context, ref, video))
                        .toList(),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),
          ],
        );
      }),
    );
  }

  Widget _buildArchiveCard(WidgetRef ref, BiliUpperPageState state,dynamic season, BiliSeasonsSeriesArchives video) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
    child: InkWell(
    onTap: () async {
      await ref.read(biliUpperPageProvider(uid).notifier).playDynamicSeasonSeries( season,state,video: video);
    },
      child: SizedBox(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: NetworkImageByCache(
                width: 160,
                height: 90,
                imageUrl: video.pic ?? '',
                defaultUrl: '',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                video.title ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  Widget _buildVideoCard(BuildContext context, WidgetRef ref , AudioInfo video) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: () async {
              await ref.read(playlistControllerProvider.notifier)
              .setPlaylist((ref.read(biliUpperPageProvider(uid)).allVideos??[]),'bili_upper_$uid}',song: video);
          },
        child: SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: NetworkImageByCache(
                  width: 160,
                  height: 90,
                  imageUrl: video.coverWebUrl ?? '',
                  defaultUrl: '',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  video.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}