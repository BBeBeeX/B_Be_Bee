import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/bili/bili_my_page.dart';
import 'package:b_be_bee_app/pages/collects_page.dart';
import 'package:b_be_bee_app/pages/home_page.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/widget/bottom_navigation_bar_widget.dart';
import 'package:b_be_bee_app/widget/desktop_bottom_bar_widget.dart';
import 'package:b_be_bee_app/widget/desktop_main_area_widget.dart';
import 'package:b_be_bee_app/widget/desktop_side_bar_widget.dart';
import 'package:b_be_bee_app/widget/desktop_top_navigation_bar_widget.dart';
import 'package:b_be_bee_app/widget/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/assets.gen.dart';
import '../model/enum/main_tab_enum.dart';
import '../widget/music_player_pad_widget.dart';

class MainPage extends ConsumerWidget {
  const MainPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Translations.of(context);
    final state = ref.watch(mainPageProvider);

    return ResponsiveBuilder(
      builder: (sizingInformation) {
        if(checkPlatform([TargetPlatform.linux, TargetPlatform.windows, TargetPlatform.macOS])){
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
        }else if(checkPlatform([TargetPlatform.android, TargetPlatform.iOS])){

          if (sizingInformation.isMobile) {
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

            return Scaffold(
                body: Row(
                  children: [
                    Container(
                        width: 220,
                        height: MediaQuery.of(context).size.height,
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Column(
                                    children: [

                                      SizedBox(
                                        height: MediaQuery.of(context).size.height/20,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'B Be Bee',
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                          Assets.img.logo512.image(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.8),
                                            width: 50,
                                            height: 50,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Column(
                                        children: MainTabEnum.values.map<Widget>((tab) {
                                          return InkWell(
                                            onTap: () async {
                                              await ref
                                                  .read(mainPageProvider.notifier)
                                                  .changeTab(MainTabEnum.values[tab.index]);
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 3,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: state.currentTab.index == tab.index
                                                        ? Theme.of(context).colorScheme.primary
                                                        : Colors.transparent,
                                                    borderRadius: BorderRadius.circular(2),
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                Padding(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Icon(tab.icon),
                                                      const SizedBox(width: 8),
                                                      Text(tab.label),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                        width: 220,
                                        height: 400,
                                        child: MusicPlayerPadWidget())
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                    Expanded(
                      child: SafeArea(
                        left: sizingInformation.isMobile,
                        child: Stack(
                          children: [
                            PageView(
                              controller: state.controller,
                              physics: const NeverScrollableScrollPhysics(),
                              children: const [
                                HomePage(),
                                CollectsPage(),
                                MyBiliPage(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ));
          }
        }else{
            return Center(
              child: Text('This platform is not supported'),
            );
        }
      },
    );
  }
}
