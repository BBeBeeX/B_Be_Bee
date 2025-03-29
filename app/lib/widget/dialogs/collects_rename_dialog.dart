
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CollectsRenameDialog {
  static Future<void> open(BuildContext context, WidgetRef ref, String title,
      String playlistId) {
    final controller = TextEditingController(text: title);
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(t.widget.renameCollect),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: t.widget.collectName,
              ),
              autofocus: true,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(t.general.cancel),
              ),
              TextButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    ref.read(collectsProvider.notifier)
                        .renamePlaylist(
                      playlistId,
                      controller.text,
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text(t.general.confirm),
              ),
            ],
          ),
    );
  }
}