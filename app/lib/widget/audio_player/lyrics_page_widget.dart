import 'package:b_be_bee_app/controller/lyrics_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LyricsPageWidget extends ConsumerWidget {
  const LyricsPageWidget({super.key});

  TextStyle getLyricTextStyle(int index, int curLine, int lyricsLength) {
    bool isHighlighted = index == curLine - 1;
    bool isFaded = (index <= curLine - 3 || index >= curLine + 4) && (curLine > 3 && curLine < lyricsLength - 3) ||
        (index == 7 && curLine <= 3) ||
        (index == lyricsLength - 7 && curLine >= lyricsLength - 3);

    return TextStyle(
      fontSize: isHighlighted ? 30 : (isFaded ? 15 : 20),
      color: Colors.white.withOpacity(isHighlighted ? 1.0 : (isFaded ? 0.3 : 0.6)),
      fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lyricsState = ref.watch(lyricsControllerProvider);
    final lyricsController = ref.read(lyricsControllerProvider.notifier);
    final lyrics = lyricsState.lyrics;
    final curLine = lyricsState.curLine;

    if (lyrics == null || lyrics.isEmpty) {
      return Center(
        child: Text(t.widget.noLyrics,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      );
    }

    return StreamBuilder<Duration>(
      stream: CustomAudioHandler.player.positionStream,
      builder: (context, snapshot) {
        final position = snapshot.data ?? Duration.zero;

        int indexLine = lyrics.indexWhere((lyric) =>
        lyric.startTime > position);
        Future.microtask(() async {
          if (curLine != indexLine) {
            await lyricsController.setCurLine(indexLine);
          }
        });

        return Stack(
          children: [
            GestureDetector(
              onVerticalDragStart: (e){
                 ref.read(lyricsControllerProvider.notifier).startDragging();
              },
              onVerticalDragUpdate: (e){
                final scrollController = lyricsState.scrollController;
                final newOffset = (scrollController.offset - e.delta.dy).clamp(
                  0.0,
                  (lyrics.length - LyricsController.visibleLines) * lyricsState.itemHeight,
                );
                scrollController.jumpTo(newOffset);
              },
              onVerticalDragEnd: (e) async {
                await ref.read(lyricsControllerProvider.notifier).stopDragging();
              },
              child: Center(
                child: SizedBox(
                  height: lyricsState.itemHeight * LyricsController.visibleLines,
                  child: ListView.builder(
                    physics: lyricsState.isDragging
                        ? const NeverScrollableScrollPhysics()
                        : const AlwaysScrollableScrollPhysics(),
                    controller: lyricsState.scrollController,
                    padding: EdgeInsets.zero,
                    itemCount: lyrics.length,
                    itemBuilder: (context, index) {
                      final lyric = lyrics[index];

                      return Container(
                        padding: EdgeInsets.symmetric(
                          vertical: index == curLine ? 10.0 : 0.0,
                        ),
                        height: lyricsState.itemHeight,
                        alignment: Alignment.center,
                        child: AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 300),
                          style: getLyricTextStyle(index, curLine, lyrics.length),
                          child: Column(
                            children: [
                              ...lyric.translations.entries.map((entry) {
                                return Column(
                                  children: [
                                    Text(
                                      entry.value,
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                );
                              }),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}