import 'dart:ui';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../controller/collects_controller.dart';
import '../../controller/lyrics_controller.dart';
import '../../controller/playlist_controller.dart';
import '../../gen/strings.g.dart';
import '../../model/dto/player/player_position_data.dart';
import '../../provider/seek_dragging_provider.dart';
import '../../util/audio_handler.dart';
import '../../util/time_utils.dart';
import '../../widget/bottom_sheet/open_playlist_bottom_sheet.dart';
import '../../widget/img/network_image.dart';
import '../../widget/marquee_custom.dart';

class AudioPlayerPageRow1 extends ConsumerWidget {
  final String coverUrl;
  final Color? fontColor;

  const AudioPlayerPageRow1(this.coverUrl, this.fontColor, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);

    final collectPlaylistController = ref.read(collectsProvider.notifier);

    final isFav = collectPlaylistController
        .isSongInDefaultPlaylist(playlist.currentSong?.id ?? '');
    ref.watch(collectsProvider);

    final lyrics = ref.watch(
        lyricsControllerProvider.select((state) => state.lyrics));

    return Row(
      children: [
        SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width / 10,
        ),

        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                offset: Offset(12, 12),
                blurRadius: 8,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(12), // 可选，圆角
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: NetworkImageByCache(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 3,
              height: MediaQuery
                  .of(context)
                  .size
                  .width / 3,
              imageUrl: coverUrl,
              defaultUrl: '',
              errorIcon: const Icon(
                Icons.music_note,
                size: 120,
                color: Colors.white,
              ),
            ),
          ),
        ),

        SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width / 20,
        ),

        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    const SizedBox(width: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height / 5),

                        MarqueeCustom(
                          text: playlist.currentSong?.title ?? '',
                          style: TextStyle(
                            color: fontColor ?? Theme
                                .of(context)
                                .colorScheme
                                .primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                          textAlign: TextAlign.left,
                          numberOfReps: 20,
                        ),

                        MarqueeCustom(
                          text: playlist.currentSong?.upper.name ?? '',
                          style: TextStyle(
                            color: fontColor?.withOpacity(0.7) ??
                                Theme
                                    .of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.7),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.left,
                          numberOfReps: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 10),
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StreamBuilder<Duration>(
                      stream: CustomAudioHandler.player.positionStream,
                      builder: (context, snapshot) {
                        final position = snapshot.data ?? Duration.zero;

                        if (lyrics == null || lyrics.isEmpty) {
                          return Center(
                            child: Text(
                              t.widget.noLyrics,
                              style: TextStyle(
                                fontSize: 16,
                                color: fontColor,
                              ),
                            ),
                          );
                        }

                        int? indexLine = lyrics.indexWhere((lyric) => lyric.startTime > position)-1;
                        indexLine = indexLine < 0 ? 0 : indexLine;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...lyrics[indexLine].translations.entries.map((entry) {
                              return Text(
                                entry.value,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: fontColor
                                ),
                              );
                            }),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 240),

          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: 24),
            child: StreamBuilder<PlayerPositionData>(
              stream: CustomAudioHandler.instance.positionDataStream,
              builder: (context, snapshot) {
                Duration position = snapshot.data?.position ?? Duration.zero;
                Duration duration = snapshot.data?.duration ?? Duration.zero;

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _progressBar(context, ref, position, duration, fontColor),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              TimeUtils.formatDuration(position),
                              style: TextStyle(
                                  color: fontColor?.withOpacity(0.7) ??
                                      Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.7)),
                            ),
                            StreamBuilder<String>(
                              stream: CustomAudioHandler.instance.qualityDataStream,
                              builder: (context, snapshot) {
                                final qualityValue = snapshot.data ?? '';
                                return Text(
                                  qualityValue,
                                  style: TextStyle(
                                      color: fontColor?.withOpacity(0.7) ??
                                          Theme.of(context)
                                              .colorScheme
                                              .primary
                                              .withOpacity(0.7)),
                                );
                              },
                            ),
                            Text(
                              TimeUtils.formatDuration(duration),
                              style: TextStyle(
                                  color: fontColor?.withOpacity(0.7) ??
                                      Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
            ),
          ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 0,),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 播放模式
                        IconButton(
                          tooltip: '播放顺序',
                          icon: Icon(
                            playlist.repeatMode.icon,
                            size: 24,
                          ),
                          color: fontColor?.withOpacity(0.9) ??
                              Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.9),
                          onPressed: () async {
                            await ref.read(
                                playlistControllerProvider.notifier)
                                .cycleRepeatMode();
                          },
                        ),

                        // 播放控制
                        IconButton(
                          icon: Icon(Icons.skip_previous, size: 36),
                          color: fontColor?.withOpacity(0.9) ??
                              Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.9),
                          onPressed: () async =>
                              ref.read(playlistControllerProvider.notifier)
                                  .skipToPrevious(isCutSong: true),
                          tooltip: '上一首',
                        ),
                        const SizedBox(width: 16),
                        StreamBuilder<bool>(
                          stream: CustomAudioHandler.instance.playbackState
                              .map((state) => state.playing)
                              .distinct(),
                          builder: (context, snapshot) {
                            final playing = snapshot.data ?? true;
                            return IconButton(
                              tooltip: '播放/暂停',
                              icon: Icon(
                                playing
                                    ? Icons.pause_circle_filled
                                    : Icons.play_circle_filled,
                                size: 72,
                              ),
                              color: fontColor?.withOpacity(0.9) ??
                                  Theme
                                      .of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.9),
                              onPressed:
                              ref
                                  .read(playlistControllerProvider.notifier)
                                  .togglePlay,
                            );
                          },
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          tooltip: '下一首',
                          icon: Icon(Icons.skip_next, size: 36),
                          color: fontColor?.withOpacity(0.9) ??
                              Theme
                                  .of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.9),
                          onPressed: () async =>
                              ref.read(playlistControllerProvider.notifier)
                                  .skipToNext(isCutSong: true),
                        ),

                        // 播放列表
                        IconButton(
                            icon: Icon(Icons.queue_music, size: 36),
                            color: fontColor?.withOpacity(0.9) ??
                                Theme
                                    .of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.9),
                            onPressed: () async =>
                            await OpenPlaylistBottomSheet.open(context)),
                      ],
                    ),

                    IconButton(
                      icon: isFav
                          ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                          : Icon(
                        Icons.favorite_outline,
                        color: fontColor?.withOpacity(0.9) ??
                            Theme
                                .of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.9),
                      ),
                      onPressed: () async {
                        if (playlist.currentSong != null) {
                          await collectPlaylistController
                              .toggleDefaultPlaylist(playlist.currentSong!);
                        }
                      },
                      tooltip: '加入/移除收藏',
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
        ),

        SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width / 20,
        ),
      ],
    );
  }
}

Widget _progressBar(BuildContext context, WidgetRef ref, Duration position,
    Duration duration,Color? fontColor) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: fontColor?.withOpacity(0.7) ??
                  Theme
                      .of(context)
                      .colorScheme
                      .primary
                      .withOpacity(0.7),
              width: 2),
        ),
        child: Padding(padding: const EdgeInsets.symmetric(
            horizontal: 2, vertical: 2),
            child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 2.0,
                    thumbShape: SliderComponentShape.noThumb,
                    activeTrackColor: fontColor?.withOpacity(0.7) ??
                        Theme
                            .of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.7),
                    inactiveTrackColor: Colors.transparent,
                    overlayShape: SliderComponentShape.noOverlay,
                    thumbColor: Colors.transparent, // 去掉滑块的颜色
                  ),
                  child: slider(ref, position.inSeconds.toDouble() >
                      duration.inSeconds.toDouble()
                      ? duration.inSeconds.toDouble()
                      : position.inSeconds.toDouble(),
                      duration.inSeconds.toDouble(), (value) async {
                        await ref.read(playlistControllerProvider.notifier)
                            .seek(
                          Duration(seconds: value.toInt()),
                        );
                      })),
            ),
      )
    ],
  );
}

Widget slider(WidgetRef ref,double value,double max,ValueChanged<double> onChanged) {
  final draggingValue = ref.watch(seekDragingProvider);

  final displayValue = draggingValue ?? value;
  final endValue = displayValue + 1 > max ? max : displayValue + 1;


  return TweenAnimationBuilder<double>(
    tween: Tween<double>(begin: displayValue, end: endValue),
    duration: const Duration(seconds: 1),
    curve: Curves.linear,
    builder: (context, animatedValue, child) {
      return Slider(
        value: animatedValue.clamp(0.0, endValue),
        min: 0.0,
        max: max + 1,
        onChanged: (value) {
          ref.read(seekDragingProvider.notifier).startDragging(value);
        },
        onChangeStart: (startValue) {
          ref.read(seekDragingProvider.notifier).startDragging(startValue);
        },
        onChangeEnd: (endValue) {
          onChanged(endValue);
          ref.read(seekDragingProvider.notifier).endDragging();
        },
      );
    },
  );
}
