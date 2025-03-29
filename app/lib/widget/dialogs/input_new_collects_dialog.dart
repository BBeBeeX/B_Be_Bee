import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/enum/collect_type_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InputNewCollectsDialog {

  static Future<void> open(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.widget.createCollect),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: t.widget.collectName,
            hintText: t.widget.inputCollectName,
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
                ref.read(collectsProvider.notifier).createPlaylist(
                  title: controller.text,
                  collectCurrentType: CollectTypeEnum.local,
                  collectSourceType: CollectTypeEnum.local,
                );
                Navigator.pop(context);
              }
            },
            child: Text(t.widget.create),
          ),
        ],
      ),
    );
  }

}