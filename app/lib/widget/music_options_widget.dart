import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/controller/collects_playlist_page_controller.dart';
import 'package:b_be_bee_app/controller/download_controller.dart';
import 'package:b_be_bee_app/controller/music_options_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/controller/sleep_time_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/pages/bili/bili_upper_page.dart';
import 'package:b_be_bee_app/pages/share_audio_page.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/bili/open_bili_util.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/audio_quality_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:b_be_bee_app/widget/option_item_widget.dart';
import 'package:b_be_bee_app/widget/sleep_time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class MusicOptionsWidget extends ConsumerWidget {
  final AudioInfo song;
  final CollectPlaylist? collectPlaylist;
  final bool fromPlay;
  final Function(String playlistId, String songId)? removeAudio;

  const MusicOptionsWidget(
      {super.key,
      required this.song,
      required this.fromPlay,
      required this.collectPlaylist,
      this.removeAudio});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(musicOptionsProvider(song).notifier);
    final sleepTimerState = ref.watch(sleepTimerProvider);
    final collectPlaylistController = ref.read(collectsProvider.notifier);
    final playListController = ref.read(playlistControllerProvider.notifier);
    final playlistState = ref.watch(collectsProvider);

    final isFav = collectPlaylistController.isSongInDefaultPlaylist(song.id);

    return DraggableScrollableSheet(
        initialChildSize: 0.5,
        minChildSize: 0.5,
        maxChildSize: 1,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: NetworkImageByCache(
                            width: 40,
                            height: 40,
                            imageUrl: song.coverWebUrl,
                            defaultUrl: song.coverLocalUrl,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                song.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceTint),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                song.upper.name,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  isFav
                      ? OptionItemWidget(
                          icon: Icons.favorite,
                          color: Colors.red,
                          text: t.widget.removeFromFav,
                          onTap: () async {
                            await collectPlaylistController
                                .toggleDefaultPlaylist(song);
                          },
                        )
                      : OptionItemWidget(
                          icon: Icons.favorite_border,
                          color: Theme.of(context).colorScheme.primary,
                          text: t.widget.addToFav,
                          onTap: () async {
                            await collectPlaylistController
                                .toggleDefaultPlaylist(song);
                          },
                        ),
                  if (removeAudio != null && collectPlaylist != null)
                    OptionItemWidget(
                      icon: Icons.do_not_disturb_on_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      text: t.widget.removeFromThis,
                      onTap: () async {
                        await removeAudio!(
                          collectPlaylist!.id,
                          song.id,
                        );
                        await ref
                            .read(collectsPlaylistPageProvider(
                                    collectPlaylist!.id)
                                .notifier)
                            .loadData(collectPlaylist!);
                        context.pop();
                      },
                    ),

                  if (!fromPlay)
                    OptionItemWidget(
                        icon: Icons.play_arrow,
                        color: Theme.of(context).colorScheme.primary,
                        text: t.general.play,
                        onTap: () async => {
                              if (collectPlaylist == null)
                                {
                                  playListController
                                      .setPlaylist([song], song.id),
                                }
                              else
                                {
                                  playListController.setPlaylist(
                                      collectPlaylist!.songs!,
                                      collectPlaylist!.id,
                                      index: collectPlaylist!.songs
                                              ?.indexOf(song) ??
                                          0),
                                }
                            }),
                  if (!fromPlay)
                    OptionItemWidget(
                      icon: Icons.skip_next,
                      color: Theme.of(context).colorScheme.primary,
                      text: t.general.nextPlay,
                      onTap: () async => playListController.insertSong(song),
                    ),
                  if (!fromPlay)
                    OptionItemWidget(
                      icon: Icons.playlist_add,
                      color: Theme.of(context).colorScheme.primary,
                      text: t.widget.addToPlaylist,
                      onTap: () async =>
                          playListController.insertSong(song, isToEnd: true),
                    ),
                  OptionItemWidget(
                    icon: Icons.folder,
                    color: Theme.of(context).colorScheme.primary,
                    text: t.widget.addToCollects,
                    onTap: () async {
                      await vm.addToPlaylist(context);
                    },
                  ),
                  OptionItemWidget(
                    icon: Icons.person_outline,
                    color: Theme.of(context).colorScheme.primary,
                    text: t.widget.jumpToUpper,
                    onTap: () async {
                      context.pop();
                      await context
                          .push(() => BiliUpperPage(uid: song.upper.id));
                    },
                  ),
                  OptionItemWidget(
                    icon: Icons.share_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    text: t.general.share,
                    onTap: () async {
                      await Future.microtask(() {
                        container
                            .read(commonLoggerProvider.notifier)
                            .addLog('share music title: ${song.title} '
                                'id: ${song.id} '
                                'type: ${song.audioSourceType} '
                                'cover: ${song.coverWebUrl} '
                                'upper: ${song.upper} ');
                      });
                      await context.push(() => ShareAudioPage(audioInfo: song));
                    },
                  ),

                  if (fromPlay)
                    OptionItemWidget(
                      icon: Icons.timer,
                      text: t.widget.setSleepTimer,
                      color: sleepTimerState.isTimerActive
                          ? Colors.green
                          : Theme.of(context).colorScheme.primary,
                      onTap: () async {
                        context.pop();
                        await showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (context) => SleepTimerWidget(),
                        );
                      },
                    ),
                  // _buildOptionItem(
                  //   context,
                  //   icon: Icons.music_note_outlined,
                  //   text: '显示 Spotify 音乐码',
                  //   color: Theme.of(context).colorScheme.primary,
                  //   onTap: () {
                  //     vm.showMusicCode(context);
                  //   },
                  // ),
                  //TODO 查看歌曲制作人
                  // OptionItemWidget(
                  //   icon: Icons.info_outline,
                  //   text: '查看歌曲制作人',
                  //   color: Theme.of(context).colorScheme.primary,
                  //   onTap: () {
                  //     vm.showCredits(context);
                  //   },
                  // ),
                  if (!checkPlatformIsDesktop())
                    OptionItemWidget(
                      icon: Icons.notifications,
                      text: t.widget.setRingtone,
                      color: Theme.of(context).colorScheme.primary,
                      onTap: () async {
                        await ref
                            .read(downloadControllerProvider.notifier)
                            .setAndroidRingtone(song);
                      },
                    ),
                  //TODO 播放设置
                  // if(fromPlay)
                  //   OptionItemWidget(
                  //   icon: Icons.graphic_eq,
                  //     color: Theme.of(context).colorScheme.primary,
                  //   text: '播放设置',
                  //   onTap: () {
                  //     vm.showCredits(context);
                  //   },
                  // ),
                  if (fromPlay)
                    OptionItemWidget(
                      icon: Icons.high_quality,
                      text: t.widget.quality,
                      color: Theme.of(context).colorScheme.primary,
                      onTap: () async {
                        context.pop();
                        await AudioQualityBottomSheet.open(context, ref);
                      },
                    ),
                  //TODO 播放器样式
                  // if(fromPlay)
                  //   OptionItemWidget(
                  //     icon: Icons.shape_line,
                  //     color: Theme.of(context).colorScheme.primary,
                  //     text: '播放器样式',
                  //     onTap: () {
                  //       vm.showCredits(context);
                  //     },
                  //   ),

                  OptionItemWidget(
                    icon: Icons.download,
                    text: t.general.download,
                    color: Theme.of(context).colorScheme.primary,
                    onTap: () async {
                      await ToastUtil.show(
                          t.widget.downloadingTitle(title: song.title));
                      await ref
                          .read(downloadControllerProvider.notifier)
                          .addDownload(song);
                    },
                  ),
                  OptionItemWidget(
                    icon: Icons.smart_display,
                    text: t.widget.sourceAudio,
                    color: Theme.of(context).colorScheme.primary,
                    onTap: () {
                      context.pop();
                      openInBilibili(context, song);
                    },
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        });
  }
}
