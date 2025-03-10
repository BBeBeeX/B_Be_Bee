import 'dart:ui';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_music_options_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../gen/strings.g.dart';
import '../widget/audio_player/current_playlist_control_buttons_widget.dart';
import '../widget/audio_player/current_playlist_item_widget.dart';
import '../widget/audio_player/current_playlist_progress_bar_widget.dart';
import '../controller/audio_player_page_controller.dart';
import '../widget/audio_player/lyrics_page_widget.dart';

class AudioPlayerPage extends ConsumerWidget {
  const AudioPlayerPage({super.key});

  Widget _buildMainContent(BuildContext context, WidgetRef ref, playlist, int currentPage, PageController pageController) {

    return Stack(
      children: [
        Positioned.fill(
          child: NetworkImageByCache(
            imageUrl: _getCoverUrl(playlist),
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
              _buildHeader(context, ref, playlist, currentPage, pageController),
              Expanded(
                child: PageView(
                  controller: pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) async {
                    await ref.read(audioPlayerPageControllerProvider.notifier).switchPage(index);
                  },
                  children: [
                    _buildSongContent(context, ref, playlist),
                    const LyricsPageWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSongContent(BuildContext context, WidgetRef ref, playlist) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 10,
        ),
        _buildCoverImage(playlist),
        const Spacer(),
        _buildPlaybackControls(context, ref, playlist),
      ],
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

  Widget _buildHeader(BuildContext context, WidgetRef ref, playlist, int currentPage, PageController pageController) {
    final audioPlayerPageController = ref.read(audioPlayerPageControllerProvider.notifier);
    final isHeadVisible = ref.watch(audioPlayerPageControllerProvider).isHeadVisible;

    return MouseRegion(
      onEnter: (_) {
        print('visible: $isHeadVisible');
        audioPlayerPageController.setHeadVisible();
      },
      onExit: (_) {
        print('unvisible: $isHeadVisible');
        audioPlayerPageController.setHeadUnVisible();
      },
      child: GestureDetector(
        onPanDown: (_) {
          print('visible: $isHeadVisible');
          audioPlayerPageController.setHeadVisible();
        },
        onPanEnd: (_) {
          print('unvisible: $isHeadVisible');
          audioPlayerPageController.setHeadUnVisible();
        },
        child: AnimatedOpacity(
          opacity: isHeadVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 200),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context),
                ),
                const Spacer(),
                Row(
                  children: [
                    AnimatedTextTab(
                      text: t.audioPlayerPage.song,
                      isActive: currentPage == 0,
                      onTap: () => ref.read(audioPlayerPageControllerProvider.notifier).switchPage(0),
                    ),
                    const SizedBox(width: 16),
                    AnimatedTextTab(
                      text: t.audioPlayerPage.lyrics,
                      isActive: currentPage == 1,
                      onTap: () => ref.read(audioPlayerPageControllerProvider.notifier).switchPage(1),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  color: Colors.white,
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

  Widget _buildPlaybackControls(BuildContext context, WidgetRef ref, playlist) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CurrentPlaylistItemWidget(
          coverUrl: null,
          title: playlist.currentSong!.title,
          artistName: playlist.currentSong!.upper.name,
          playlist: playlist,
        ),
        const SizedBox(height: 24),
        CurrentPlaylistProgressBarWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: CurrentPlaylistControlButtonsWidget(
            playlist: playlist,
            playlistController: ref.read(playlistControllerProvider.notifier),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlist = ref.watch(playlistControllerProvider);
    final controller = ref.watch(audioPlayerPageControllerProvider.notifier);
    final currentPage = ref.watch(audioPlayerPageControllerProvider);

    // 确保页面控制器与当前页面同步
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.pageController.hasClients && 
          controller.pageController.page?.round() != currentPage) {
        controller.pageController.animateToPage(
          currentPage.pageId,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });

    if (playlist.currentSong == null) {
      return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(t.audioPage.noSongsPlaying,style: TextStyle(fontSize: 30),),
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 30,),
                  color: Colors.white,
                  onPressed: () async {
                    context.pop();
                  },
                ),
              ],
            )
        ),
      );
    }

    return Scaffold(
      body: _buildMainContent(context, ref, playlist, currentPage.pageId, controller.pageController),
    );
  }
}

class AnimatedTextTab extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const AnimatedTextTab({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: 16,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: Colors.white.withOpacity(isActive ? 1.0 : 0.5),
        ),
        child: Text(text),
      ),
    );
  }
}