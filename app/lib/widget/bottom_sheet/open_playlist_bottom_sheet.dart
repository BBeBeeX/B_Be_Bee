

import 'package:flutter/material.dart';

import '../../pages/playlist_page.dart';

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