import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../controller/playlist_controller.dart';
import '../../model/dto/player/player_position_data.dart';
import '../../provider/seek_dragging_provider.dart';
import '../../util/audio_handler.dart';
import '../../util/time_utils.dart';

class CurrentPlaylistProgressBarWidget extends ConsumerWidget{
  final bool isColumn;

  const CurrentPlaylistProgressBarWidget({
    super.key,
    this.isColumn = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isColumn?24:12 ),
      child: StreamBuilder<PlayerPositionData>(
        stream: CustomAudioHandler.instance.positionDataStream,
        builder: (context, snapshot) {
          Duration position = snapshot.data?.position ??
              Duration.zero;
          Duration duration = snapshot.data?.duration ??
              Duration.zero;
          if(isColumn){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _progressBar(context,ref,position,duration,true),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Text(
                        TimeUtils.formatDuration(position),
                        style: const TextStyle(
                            color: Colors.white70),
                      ),
                      StreamBuilder<String>(
                        stream: CustomAudioHandler.instance
                            .qualityDataStream,
                        builder: (context, snapshot) {
                          final qualityValue = snapshot
                              .data ?? '';
                          return Text(
                            qualityValue,
                            style: const TextStyle(
                                color: Colors.white70),
                          );
                        },
                      ),

                      Text(
                        TimeUtils.formatDuration(duration),
                        style: const TextStyle(
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }else{
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  TimeUtils.formatDuration(position),
                  style: const TextStyle(
                      color: Colors.white70),
                ),
                _progressBar(context, ref, position, duration, false),

                Text(
                  TimeUtils.formatDuration(duration),
                  style: const TextStyle(
                      color: Colors.white70),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _progressBar(BuildContext context, WidgetRef ref,Duration position,Duration duration,bool isColumn){
     return Container(
       width: isColumn?null:MediaQuery.of(context).size.width / 3-100,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 4,
          thumbColor: Colors.white,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Colors.white
              .withOpacity(0.3),
        ),
        child: _CustomSlider(
          value: position.inSeconds.toDouble() > duration.inSeconds.toDouble() ? duration.inSeconds.toDouble() : position.inSeconds.toDouble(),
          max: duration.inSeconds.toDouble(),
          onChanged: (value) async {

            await ref.read(playlistControllerProvider.notifier).seek(
              Duration(seconds: value.toInt()),
            );

          },
          isColumn: isColumn,
        ),
      ),

    );
  }
}


class _CustomSlider extends ConsumerWidget {
  final double value;
  final double max;
  final ValueChanged<double> onChanged;
  final bool isColumn;

  const _CustomSlider({
    required this.value,
    required this.max,
    required this.onChanged,
    required this.isColumn,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if(isColumn){
      return  SliderTheme(
        data: SliderThemeData(
          trackHeight: 8.0, // 设置进度条的高度
          thumbShape: SliderComponentShape.noThumb, // 去掉滑块（点）
          activeTrackColor: Colors.white.withOpacity(0.8), // 已播放部分的颜色，半透明白色
          inactiveTrackColor: Colors.white.withOpacity(0.3), // 未播放部分的颜色，半透明白色
          overlayShape: SliderComponentShape.noOverlay, // 去掉滑块按下时的圈圈
          thumbColor: Colors.transparent, // 去掉滑块的颜色
          // trackShape: RectangularSliderTrackShape(), // 设置矩形边框
        ),
        child: slider(ref)
      );
    }else{
      return  SliderTheme(
        data: SliderThemeData(
          trackHeight: 2.0, // 设置进度条的高度
          thumbShape: SliderComponentShape.noOverlay, // 去掉滑块（点）
          activeTrackColor: Colors.white.withOpacity(1), // 已播放部分的颜色，半透明白色
          inactiveTrackColor: Colors.white.withOpacity(0.3), // 未播放部分的颜色，半透明白色
          overlayShape: SliderComponentShape.noThumb, // 去掉滑块按下时的圈圈
          thumbColor: Colors.transparent, // 去掉滑块的颜色
          // trackShape: RectangularSliderTrackShape(), // 设置矩形边框
        ),
        child: slider(ref)
      );
    }
  }

  Widget slider(WidgetRef ref){
    final draggingValue = ref.watch(seekDragingProvider);

    return Slider(
      value: draggingValue ?? value,
      min: 0.0,
      max: max,
      onChanged: (value) {
        ref.read(seekDragingProvider.notifier).startDragging(value);
      },
      onChangeStart:(startValue) {
        ref.read(seekDragingProvider.notifier).startDragging(startValue);
      },
      onChangeEnd: (endValue){
        onChanged(endValue);

        ref.read(seekDragingProvider.notifier).endDragging();
      },
    );
  }
}
