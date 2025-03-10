import 'package:b_be_bee_app/widget/collects_options_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectCollectsOptionsBottomSheet {
  static Future<void> open(BuildContext context, WidgetRef ref,
      String collectPlaylistId) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,

      // isDismissible: true,
      enableDrag: true,
      builder: (context) =>
          CollectsOptionsWidget(
            collectPlaylistId: collectPlaylistId,
          ),
    );
  }
}