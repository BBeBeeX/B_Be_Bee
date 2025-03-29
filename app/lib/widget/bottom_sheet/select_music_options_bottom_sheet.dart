import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/widget/music_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectMusicOptionsBottomSheet {
  static Future<void> open(
    BuildContext context,
    WidgetRef ref,
    AudioInfo? song,
    CollectPlaylist? collectPlaylist,
    Function(String playlistId, String songId)? removeAudio, {
    bool fromPlay = true,
  }) async {
    if (song != null) {
      await showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (context) => MusicOptionsWidget(
          song: song,
          fromPlay: fromPlay,
          collectPlaylist: collectPlaylist,
          removeAudio: removeAudio,
        ),
      );
    }
  }
}
