import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../controller/playlist_controller.dart';
import '../../model/state/playlist_state.dart';
import '../../util/audio_handler.dart';
import '../bottom_sheet/open_playlist_bottom_sheet.dart';

class CurrentPlaylistControlButtonsWidget extends ConsumerWidget{
  final PlaylistState playlist;
  final PlaylistController playlistController;
  final bool isColumn;

  const CurrentPlaylistControlButtonsWidget({
    super.key,
    required this.playlistController,
    required this.playlist,
    this.isColumn = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Row(
        mainAxisAlignment: isColumn?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
        children: [
          // 播放模式
          IconButton(
            icon: Icon(playlist.repeatMode.icon,size: isColumn ? 24 : 20 ,),
            color: Colors.white,
            onPressed: () async {
              await playlistController.cycleRepeatMode();
            },
          ),
          // 播放控制
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon:  Icon(Icons.skip_previous, size: isColumn ? 36 : 24),
                color: Colors.white,
                onPressed: () async =>
                    playlistController.skipToPrevious(
                        isCutSong: true),
              ),
              const SizedBox(width: 16),
              StreamBuilder<bool>(
                stream: CustomAudioHandler.instance
                    .playbackState
                    .map((state) => state.playing)
                    .distinct(),
                builder: (context, snapshot) {
                  final playing = snapshot.data ?? true;
                  return IconButton(
                    icon: Icon(
                      playing
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_filled,
                      size: isColumn ? 72 : 36,
                    ),
                    color: Colors.white,
                    onPressed: ref
                        .read(
                        playlistControllerProvider.notifier)
                        .togglePlay,
                  );
                },
              ),

              const SizedBox(width: 16),
              IconButton(
                icon:  Icon(Icons.skip_next, size: isColumn ? 36 : 24 ),
                color: Colors.white,
                onPressed: () async =>
                    playlistController.skipToNext(
                        isCutSong: true),
              ),
            ],
          ),
          // 播放列表

          if(isColumn)
          IconButton(
              icon: Icon(Icons.queue_music,size: 36),
              color: Colors.white,
              onPressed: () async =>
              await OpenPlaylistBottomSheet.open(context)
          ),
        ],
    );
  }
}