import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/bili/bili_my_page.dart';
import 'package:b_be_bee_app/pages/collects_page.dart';
import 'package:b_be_bee_app/pages/home_page.dart';
import 'package:b_be_bee_app/widget/bottom_navigation_bar_widget.dart';
import 'package:b_be_bee_app/widget/desktop_bottom_bar_widget.dart';
import 'package:b_be_bee_app/widget/desktop_main_area_widget.dart';
import 'package:b_be_bee_app/widget/desktop_side_bar_widget.dart';
import 'package:b_be_bee_app/widget/desktop_top_navigation_bar_widget.dart';
import 'package:b_be_bee_app/widget/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerWidget {
  const MainPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Translations.of(context);
    final state = ref.watch(mainPageProvider);

    return ResponsiveBuilder(
      builder: (sizingInformation) {
        if (!sizingInformation.isDesktop) {
          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: PageView(
                controller: state.controller,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomePage(),
                  CollectsPage(),
                  MyBiliPage(),
                ],
              ),
            ),
            //     bottomNavigationBar:
            // Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //     MusicPlayerWidget(),
            //     NavigationBar(
            //       labelBehavior:
            //       NavigationDestinationLabelBehavior.onlyShowSelected,
            //       backgroundColor: Colors.transparent,
            //       selectedIndex: state.currentTab.index,
            //       onDestinationSelected: (index) {
            //         final tab = MainTabEnum.values[index];
            //         state.controller.jumpToPage(tab.index);
            //       },
            //       destinations: MainTabEnum.values.map((tab) {
            //         return NavigationDestination(
            //           icon: Icon(tab.icon),
            //           label: tab.label,
            //         );
            //       }).toList(),
            //     ),
            //     ]),

            bottomNavigationBar: BottomNavigationBarWidget(
              onTabChanged: (tab) async {
                await ref.read(mainPageProvider.notifier).changeTab(tab);
              },
            ),
          );
        } else {
          final page = ref.watch(mainPageProvider).currentPages;

          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  DesktopTopNavigationBarWidget(),
                  Expanded(
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Column(
                            children: [
                              DesktopSideBarWidget(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: DesktopMainAreaWidget(
                                // child: HomePage()
                                child: Navigator(
                              // key: localNavigationKey,
                              pages: page,
                              onDidRemovePage: (page) {
                                Future.microtask(() {
                                  ref.read(mainPageProvider.notifier).goBack();
                                });
                              },
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  const DesktopBottomBarWidget(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
