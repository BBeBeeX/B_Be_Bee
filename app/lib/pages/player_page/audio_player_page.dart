
import 'dart:ui';

import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/model/enum/audio_player_style_enum.dart';
import 'package:b_be_bee_app/pages/player_page/audio_player_page_column1.dart';
import 'package:b_be_bee_app/pages/player_page/audio_player_page_row1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../common/constants.dart';
import '../../controller/audio_player_page_controller.dart';
import '../../controller/playlist_controller.dart';
import '../../gen/strings.g.dart';
import '../../widget/audio_player/lyrics_page_widget.dart';
import '../../widget/bottom_sheet/select_music_options_bottom_sheet.dart';
import '../../widget/img/network_image.dart';

class AudioPlayerPage extends ConsumerWidget {
  const AudioPlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final page = ref.watch(settingsProvider.select((state) => state.playerPageStyle));
    final controller = ref.watch(audioPlayerPageControllerProvider.notifier);
    final state = ref.watch(audioPlayerPageControllerProvider);
    final playlist = ref.watch(playlistControllerProvider);


    if(page?.hasLyricsPage() ?? false){
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
    }

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

    final coverUrl = _getCoverUrl(playlist);
    Future.microtask(() async {
      await ref
          .read(audioPlayerPageControllerProvider.notifier)
          .setFontColor(coverUrl);
    });

    return Scaffold(
      body: Stack(
        children: [
          //background
          Positioned.fill(
            child: NetworkImageByCache(
              imageUrl: coverUrl,
            ),
          ),

          //mask
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(color: Colors.black.withOpacity(0.3)),
            ),
          ),
PageView(
                    controller: controller.pageController,
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (index) async {
                      await ref
                          .read(audioPlayerPageControllerProvider.notifier)
                          .switchPage(index);
                    },
                    children: [

                      switch(page) {
                        null => AudioPlayerPageColumn1(coverUrl,state.fontColor),
                        AudioPlayerStyleEnum.column1 => AudioPlayerPageColumn1(coverUrl,state.fontColor),
                        AudioPlayerStyleEnum.row1 => AudioPlayerPageRow1(coverUrl,state.fontColor),
                      },

                    if(page?.hasLyricsPage() ?? false)
                      LyricsPageWidget(
                        fontColor: state.fontColor,
                      ),
                    ],
                  ),


          _buildHeader(context, ref, playlist, state.pageId,
              controller.pageController, state.fontColor),
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
        ref
            .watch(audioPlayerPageControllerProvider)
            .isHeadVisible;

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
                    onTap: () =>
                        ref
                            .read(audioPlayerPageControllerProvider.notifier)
                            .switchPage(0),
                    fontColor: fontColor,
                  ),
                  const SizedBox(width: 16),
                  AnimatedTextTab(
                    text: t.audioPlayerPage.lyrics,
                    isActive: currentPage == 1,
                    onTap: () =>
                        ref
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

