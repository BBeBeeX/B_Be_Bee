import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/model/dto/player/player_position_data.dart';
import 'package:b_be_bee_app/provider/seek_dragging_provider.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/util/time_utils.dart';
import 'package:b_be_bee_app/widget/audio_visual/fft_visualizer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class CurrentPlaylistProgressBarWidget extends ConsumerWidget {
  final bool isColumn;
  final Color? fontColor;

  const CurrentPlaylistProgressBarWidget({
    super.key,
    this.isColumn = true,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isColumn ? 24 : 12),
      child: StreamBuilder<PlayerPositionData>(
        stream: CustomAudioHandler.instance.positionDataStream,
        builder: (context, snapshot) {
          Duration position = snapshot.data?.position ?? Duration.zero;
          Duration duration = snapshot.data?.duration ?? Duration.zero;
          if (isColumn) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _progressBar(context, ref, position, duration, true),
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
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                _progressBar(context, ref, position, duration, false),
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
            );
          }
        },
      ),
    );
  }

  Widget _progressBar(BuildContext context, WidgetRef ref, Duration position,
      Duration duration, bool isColumn) {
    final enableAudioVisual = ref.watch(settingsProvider).isEnableAudioVisual;

    return Column(
      children: [
        // if (isColumn)
        //   Container(
        //     height: 50.0,
        //     padding: const EdgeInsets.all(1.0),
        //     width: MediaQuery.sizeOf(context).width,
        //     child: StreamBuilder<VisualizerFftCapture>(
        //       stream: AudioCaptureUtils.captureAudioFft(),
        //       builder: (context, snapshot) {
        //         if (snapshot.data == null) return const SizedBox();
        //         return FftVisualizerWidget(
        //           snapshot.data!,
        //           color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
        //         );
        //       },
        //     ),
        //   ),
        if (enableAudioVisual && isColumn)
          Container(
            height: 50.0,
            padding: const EdgeInsets.all(1.0),
            width: MediaQuery.sizeOf(context).width,
            child: StreamBuilder<VisualizerFftCapture>(
              stream: CustomAudioHandler.player.visualizerFftStream,
              builder: (context, snapshot) {
                if (snapshot.data == null) return const SizedBox();
                return FftVisualizerWidget(
                  snapshot.data!,
                  color: fontColor?.withOpacity(0.8) ??
                      Theme.of(context).colorScheme.primary.withOpacity(0.8),
                );
              },
            ),
          ),
        // SizedBox(
        //   height: 50.0,
        //   width: MediaQuery.sizeOf(context).width,
        //   child: StreamBuilder<VisualizerWaveformCapture>(
        //     stream: CustomAudioHandler.player.visualizerWaveformStream,
        //     builder: (context, snapshot) {
        //       if (snapshot.data == null) return const SizedBox();
        //       return WaveformVisualizerWidget(
        //         snapshot.data!,
        //         color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
        //       );
        //     },
        //   ),
        // ),
        Container(
          width: isColumn ? null : MediaQuery.of(context).size.width / 3 - 100,
          decoration: BoxDecoration(
            border: Border.all(
                color: fontColor?.withOpacity(0.3) ??
                    Theme.of(context).colorScheme.primary.withOpacity(0.3),
                width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
              thumbColor: fontColor?.withOpacity(0.9) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
              activeTrackColor: fontColor?.withOpacity(0.9) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
              inactiveTrackColor: fontColor?.withOpacity(0.3) ??
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ),
            child: _CustomSlider(
              value:
                  position.inSeconds.toDouble() > duration.inSeconds.toDouble()
                      ? duration.inSeconds.toDouble()
                      : position.inSeconds.toDouble(),
              max: duration.inSeconds.toDouble(),
              onChanged: (value) async {
                await ref.read(playlistControllerProvider.notifier).seek(
                      Duration(seconds: value.toInt()),
                    );
              },
              isColumn: isColumn,
              fontColor: fontColor,
            ),
          ),
        )
      ],
    );
  }
}

class _CustomSlider extends ConsumerWidget {
  final double value;
  final double max;
  final ValueChanged<double> onChanged;
  final bool isColumn;
  final Color? fontColor;

  const _CustomSlider({
    required this.value,
    required this.max,
    required this.onChanged,
    required this.isColumn,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isColumn) {
      return SliderTheme(
          data: SliderThemeData(
            trackHeight: 8.0,
            // 设置进度条的高度
            thumbShape: SliderComponentShape.noThumb,
            // 去掉滑块（点）
            activeTrackColor: fontColor?.withOpacity(0.8) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.8),
            // 已播放部分的颜色，半透明白色
            inactiveTrackColor: fontColor?.withOpacity(0.3) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.3),
            // 未播放部分的颜色，半透明白色
            overlayShape: SliderComponentShape.noOverlay,
            // 去掉滑块按下时的圈圈
            thumbColor: Colors.transparent, // 去掉滑块的颜色
            // trackShape: RectangularSliderTrackShape(), // 设置矩形边框
          ),
          child: slider(ref));
    } else {
      return SliderTheme(
          data: SliderThemeData(
            trackHeight: 2.0,
            // 设置进度条的高度
            thumbShape: SliderComponentShape.noOverlay,
            // 去掉滑块（点）
            activeTrackColor: fontColor?.withOpacity(0.9) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.9),
            // 已播放部分的颜色，半透明白色
            inactiveTrackColor: fontColor?.withOpacity(0.3) ??
                Theme.of(context).colorScheme.primary.withOpacity(0.3),
            // 未播放部分的颜色，半透明白色
            overlayShape: SliderComponentShape.noThumb,
            // 去掉滑块按下时的圈圈
            thumbColor: Colors.transparent, // 去掉滑块的颜色
            // trackShape: RectangularSliderTrackShape(), // 设置矩形边框
          ),
          child: slider(ref));
    }
  }

  Widget slider(WidgetRef ref) {
    final draggingValue = ref.watch(seekDragingProvider);

    return Slider(
      value: draggingValue ?? value,
      min: 0.0,
      max: max,
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
  }
}
