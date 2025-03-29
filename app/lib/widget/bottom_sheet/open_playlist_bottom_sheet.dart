

import 'package:b_be_bee_app/pages/playlist_page.dart';
import 'package:flutter/material.dart';

class OpenPlaylistBottomSheet{
  static Future<void> open(BuildContext context) {
    return   showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (
          context) => const PlaylistPage(),
    );
  }
}