import 'dart:ui';

import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/audio_player_page_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/widget/audio_player/current_playlist_control_buttons_widget.dart';
import 'package:b_be_bee_app/widget/audio_player/current_playlist_item_widget.dart';
import 'package:b_be_bee_app/widget/audio_player/current_playlist_progress_bar_widget.dart';
import 'package:b_be_bee_app/widget/audio_player/lyrics_page_widget.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_music_options_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../controller/settings_controller.dart';
import '../model/enum/contrast_color_enum.dart';
import '../provider/image_color_provider.dart';
import '../util/color_utils.dart';

class AudioPlayerPage extends ConsumerWidget {
  const AudioPlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);
    final controller = ref.watch(audioPlayerPageControllerProvider.notifier);
    final state = ref.watch(audioPlayerPageControllerProvider);

    // 确保页面控制器与当前页面同步
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.pageController.hasClients &&
          controller.pageController.page?.round() != state.pageId) {
        controller.pageController.animateToPage(
          state.pageId,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });

    final coverUrl = _getCoverUrl(playlist);

    final mainColor = ref.watch(imageColorProvider(coverUrl));
    final playPageFontColorMode =
        ref.watch(settingsProvider).playPageFontColorMode;
    Color fontColor =
        Theme.of(context).textTheme.bodyMedium?.color ?? Colors.white;

    mainColor.whenData((color) {
      print('color: $color');
      if (color == null) {
        return Colors.grey;
      } else {
        if (playPageFontColorMode == ContrastColorEnum.blackAndWhite) {
          fontColor =
              color.computeLuminance() <= 0.5 ? Colors.white : Colors.black;
        } else if (playPageFontColorMode == ContrastColorEnum.opposite) {
          fontColor = ColorUtils.getContrastColor(color);
        }
        return color;
      }
    });

    if (playlist.currentSong == null) {
      return Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.audioPage.noSongsPlaying,
              style: TextStyle(fontSize: 30),
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () async {
                context.pop();
              },
            ),
          ],
        )),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: NetworkImageByCache(
              imageUrl: coverUrl,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(color: Colors.black.withOpacity(0.3)),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                _buildHeader(context, ref, playlist, state.pageId,
                    controller.pageController, fontColor),
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (index) async {
                      await ref
                          .read(audioPlayerPageControllerProvider.notifier)
                          .switchPage(index);
                    },
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 10,
                          ),
                          _buildCoverImage(playlist),
                          const Spacer(),
                          _buildPlaybackControls(
                              context, ref, playlist, fontColor),
                        ],
                      ),
                      const LyricsPageWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getCoverUrl(playlist) {
    if (playlist.currentSong == null) {
      return Constants.bili_video_default_cover;
    }
    return playlist.currentSong!.coverWebUrl.isNotEmpty
        ? playlist.currentSong!.coverWebUrl
        : (playlist.currentSong!.coverLocalUrl.isNotEmpty
            ? playlist.currentSong!.coverLocalUrl
            : '');
  }

  Widget _buildHeader(BuildContext context, WidgetRef ref, playlist,
      int currentPage, PageController pageController, Color fontColor) {
    final audioPlayerPageController =
        ref.read(audioPlayerPageControllerProvider.notifier);
    final isHeadVisible =
        ref.watch(audioPlayerPageControllerProvider).isHeadVisible;

    return MouseRegion(
      onEnter: (_) {
        audioPlayerPageController.setHeadVisible();
      },
      onExit: (_) {
        audioPlayerPageController.setHeadUnVisible();
      },
      child: AnimatedOpacity(
        opacity: isHeadVisible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_down),
                color: fontColor,
                onPressed: () => Navigator.pop(context),
              ),
              const Spacer(),
              Row(
                children: [
                  AnimatedTextTab(
                    text: t.audioPlayerPage.song,
                    isActive: currentPage == 0,
                    onTap: () => ref
                        .read(audioPlayerPageControllerProvider.notifier)
                        .switchPage(0),
                    fontColor: fontColor,
                  ),
                  const SizedBox(width: 16),
                  AnimatedTextTab(
                    text: t.audioPlayerPage.lyrics,
                    isActive: currentPage == 1,
                    onTap: () => ref
                        .read(audioPlayerPageControllerProvider.notifier)
                        .switchPage(1),
                    fontColor: fontColor,
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert),
                color: fontColor,
                onPressed: () async {
                  await SelectMusicOptionsBottomSheet.open(
                    context,
                    ref,
                    playlist.currentSong,
                    null,
                    null,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCoverImage(playlist) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: NetworkImageByCache(
        width: 200,
        height: 200,
        imageUrl: _getCoverUrl(playlist),
        defaultUrl: '',
        errorIcon: const Icon(
          Icons.music_note,
          size: 120,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildPlaybackControls(
      BuildContext context, WidgetRef ref, playlist, Color fontColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CurrentPlaylistItemWidget(
          coverUrl: null,
          title: playlist.currentSong!.title,
          artistName: playlist.currentSong!.upper.name,
          playlist: playlist,
          fontColor: fontColor,
        ),
        const SizedBox(height: 24),
        CurrentPlaylistProgressBarWidget(
          fontColor: fontColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: CurrentPlaylistControlButtonsWidget(
            playlist: playlist,
            playlistController: ref.read(playlistControllerProvider.notifier),
            fontColor: fontColor,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class AnimatedTextTab extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;
  final Color fontColor;

  const AnimatedTextTab(
      {super.key,
      required this.text,
      required this.isActive,
      required this.onTap,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: 16,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: fontColor.withOpacity(isActive ? 1.0 : 0.5),
        ),
        child: Text(text),
      ),
    );
  }
}
