import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../gen/strings.g.dart';

class CollectsDeleteConfirmDialog{
  static Future<void> open(BuildContext context, WidgetRef ref,String title,String playlistId) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title:  Text(t.widget.removeCollect),
        content: Text(t.widget.removeCollectConfirm(title: title)),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text(t.general.cancel),
          ),
          TextButton(
            onPressed: () {
              ref.read(collectsProvider.notifier).deletePlaylist(
                playlistId,
              );
              context.pop();
            },
            child: Text(t.general.delete,),
          ),
        ],
      ),
    );
  }
}