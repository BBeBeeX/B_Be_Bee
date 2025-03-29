import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/add_to_collects_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectListAudioInfoToAdditionBottomSheet{
  static Future<void> open(BuildContext context, WidgetRef ref, List<AudioInfo> selectedSongs,String playlistId) {
    return  showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).cardColor,

      // backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.playlist_add),
            title: Text(t.widget.addToPlaylist),
            onTap: () {
              Navigator.pop(context);
              ref.read(playlistControllerProvider.notifier).setPlaylist(selectedSongs,playlistId);
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_music),
            title: Text(t.widget.addToCollects),
            onTap: () {
              Navigator.pop(context);
              AddToCollectsBottomSheet.open(context, selectedSongs);
            },
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: Text(t.general.cancel),
            onTap: () => Navigator.pop(context),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
