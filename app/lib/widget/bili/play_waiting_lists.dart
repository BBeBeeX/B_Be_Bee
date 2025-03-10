import 'package:b_be_bee_app/controller/bili/bili_my_page_controller.dart';
import 'package:b_be_bee_app/widget/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/strings.g.dart';

class PlayWaitingLists extends ConsumerWidget {
  const PlayWaitingLists({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final globalKey = GlobalKey();
    ref.read(myBiliPageVmProvider.notifier).setWaitingPlaylistKey(globalKey);

    return Container(
      key: globalKey,
      padding: const EdgeInsets.all(16),
      child: SectionWidget(
          title: t.widget.seeLaterNum(count: 0),
          children: [
          ]
      ),
    );
  }
}