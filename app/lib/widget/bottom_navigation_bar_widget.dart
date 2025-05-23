import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/model/enum/main_tab_enum.dart';
import 'package:b_be_bee_app/widget/glass_widget.dart';
import 'package:b_be_bee_app/widget/music_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationBarWidget extends ConsumerWidget {
  final void Function(MainTabEnum)? onTabChanged; // 添加回调函数

  const BottomNavigationBarWidget({
    super.key,
    this.onTabChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(mainPageProvider).currentTab;

    return Container(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MusicPlayerWidget(),
            GlassWidget(
              sigmaX: 100,
              sigmay: 100,
              child: NavigationBar(
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                backgroundColor: Colors.transparent,
                selectedIndex: currentTab.index,
                onDestinationSelected: (index) {
                  final tab = MainTabEnum.values[index];
                  onTabChanged?.call(tab);
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
        ));
  }
}
