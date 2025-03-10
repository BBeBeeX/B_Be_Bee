import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/add_to_collects_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MusicOptionsState {
  final AudioInfo song;
  
  const MusicOptionsState({
    required this.song,
  });

  MusicOptionsState copyWith({
    AudioInfo? song,
  }) {
    return MusicOptionsState(
      song: song ?? this.song,
    );
  }
}

final musicOptionsProvider = StateNotifierProvider.family<MusicOptionsController, MusicOptionsState, AudioInfo>(
  (ref, song) => MusicOptionsController(ref, song),
  name: 'musicOptionsProvider'
);

class MusicOptionsController extends StateNotifier<MusicOptionsState> {
  final Ref ref;

  MusicOptionsController(this.ref, AudioInfo song) 
      : super(MusicOptionsState(song: song));

  Future<void> addToPlaylist(BuildContext context) async {
    await AddToCollectsBottomSheet.open(context, state.song);
  }

  void shareSong(BuildContext context) {
    // TODO: 实现分享功能
    Navigator.pop(context);
  }

  void showMusicCode(BuildContext context) {
    // TODO: 实现显示音乐码功能
    Navigator.pop(context);
  }

  void showCredits(BuildContext context) {
    // TODO: 实现显示制作人信息功能
    Navigator.pop(context);
  }
} 