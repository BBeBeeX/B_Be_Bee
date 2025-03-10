import 'package:b_be_bee_app/controller/bili/bili_my_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/strings.g.dart';

class PlayListTabs extends ConsumerWidget {
  const PlayListTabs({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final vm = ref.read(myBiliPageVmProvider.notifier);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () async => vm.onScrollToWidget(context,'favorite'),
            child: Text(t.widget.myCreateCollects, style: Theme.of(context).textTheme.titleMedium),
          ),
          Container(
            height: 15,
            width: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
          TextButton(
            onPressed: () async => vm.onScrollToWidget(context,'subscribe'),
            child: Text(t.widget.mySubscribe, style: Theme.of(context).textTheme.titleMedium),
          ),
          // Container(
          //   height: 15,
          //   width: 1,
          //   color: Theme.of(context).colorScheme.outline,
          // ),
          // TextButton(
          //   onPressed: () async => vm.onScrollToWidget(context,'waiting'),
          //   child: Text(t.widget.seeLater, style: Theme.of(context).textTheme.titleMedium),
          // ),
        ],
      ),
    );
  }
}