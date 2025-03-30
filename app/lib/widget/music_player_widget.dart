import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/pages/audio_player_page.dart';
import 'package:b_be_bee_app/provider/image_color_provider.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/open_playlist_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/enum/contrast_color_enum.dart';
import '../util/color_utils.dart';

class MusicPlayerWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);

    String coverResult;
    if (playlist.currentSong == null) {
      coverResult = Constants.bili_video_default_cover;
    } else {
      coverResult = playlist.currentSong!.coverWebUrl.isNotEmpty
          ? playlist.currentSong!.coverWebUrl
          : (playlist.currentSong!.coverLocalUrl.isNotEmpty
              ? playlist.currentSong!.coverLocalUrl
              : '');
    }

    final mainColor = ref.watch(imageColorProvider(coverResult));
    final playBarFontColorMode =
        ref.watch(settingsProvider).playBarFontColorMode;

    Color? fontColor = Theme.of(context).textTheme.bodyMedium?.color;

    return playlist.currentSong != null
        ? Center(
            child: Container(
              decoration: BoxDecoration(
                color: mainColor.when(
                  data: (color) {
                    if (color == null) {
                      return Colors.grey;
                    } else {
                      if (playBarFontColorMode ==
                          ContrastColorEnum.blackAndWhite) {
                        fontColor = color.computeLuminance() <= 0.5
                            ? Colors.white
                            : Colors.black;
                      } else if (playBarFontColorMode ==
                          ContrastColorEnum.opposite) {
                        fontColor = ColorUtils.getContrastColor(color);
                      }
                      return color;
                    }
                  },
                  loading: () => Colors.grey,
                  error: (error, stack) => Colors.grey,
                ),
                borderRadius: BorderRadius.circular(12),
                // border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
              ),
              // margin: const EdgeInsets.all(8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // 当前播放信息
                        GestureDetector(
                          onTap: () async {
                            await Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const AudioPlayerPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              NetworkImageByCache(
                                  width: 48,
                                  height: 48,
                                  imageUrl: coverResult,
                                  defaultUrl: '',
                                  errorIcon: const Icon(Icons.music_note)),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      playlist.currentSong!.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: fontColor?.withOpacity(0.9)),
                                    ),
                                    Text(
                                      playlist.currentSong!.upper.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: fontColor?.withOpacity(0.7),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              StreamBuilder<bool>(
                                stream: CustomAudioHandler
                                    .instance.playbackState
                                    .map((state) => state.playing)
                                    .distinct(),
                                builder: (context, snapshot) {
                                  final playing = snapshot.data ?? false;
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _buildControlButton(
                                        icon: playing
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        onPressed: () async => ref
                                            .read(playlistControllerProvider
                                                .notifier)
                                            .togglePlay(),
                                        color: fontColor?.withOpacity(0.9),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              _buildControlButton(
                                icon: Icons.queue_music,
                                onPressed: () async =>
                                    await OpenPlaylistBottomSheet.open(context),
                                color: fontColor?.withOpacity(0.9),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  )),
            ),
          )
        : SizedBox.shrink();
  }

  Widget _buildControlButton({
    required IconData icon,
    VoidCallback? onPressed,
    Color? color,
    double size = 24,
    String? badge,
  }) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(icon, size: size),
          onPressed: onPressed,
          color: color,
        ),
        if (badge != null)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                badge,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
