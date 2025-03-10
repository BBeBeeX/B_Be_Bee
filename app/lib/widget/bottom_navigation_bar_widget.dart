import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/main_page_controller.dart';
import '../model/enum/main_tab_enum.dart';
import 'glass_widget.dart';
import 'music_player_widget.dart';


class BottomNavigationBarWidget extends ConsumerWidget {
  final void Function(MainTabEnum)? onTabChanged;  // 添加回调函数

  const BottomNavigationBarWidget({
    super.key,
    this.onTabChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(mainPageProvider).currentTab;

    return Container(
        margin: const EdgeInsets.only(left: 8,right: 8,bottom: 8),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MusicPlayerWidget(),
            GlassWidget(
              sigmaX:100,
              sigmay: 100,
              child:
              NavigationBar(
                labelBehavior:
                NavigationDestinationLabelBehavior.onlyShowSelected,
                backgroundColor: Colors.transparent,
                selectedIndex: currentTab.index,
                onDestinationSelected: (index) {
                  final tab = MainTabEnum.values[index];
                  onTabChanged?.call(tab);  // 使用回调函数
                },
                destinations: MainTabEnum.values.map((tab) {
                  return NavigationDestination(
                    icon: Icon(tab.icon),
                    label: tab.label,
                  );
                }).toList(),
              ),
            ),
          ],
        )
    );
  }

}