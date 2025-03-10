import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/bili/bili_my_page.dart';
import 'package:b_be_bee_app/pages/collects_page.dart';
import 'package:b_be_bee_app/pages/home_page.dart';
import 'package:b_be_bee_app/widget/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../util/native/platform_check.dart';
import '../widget/bottom_navigation_bar_widget.dart';
import '../widget/desktop_bottom_bar_widget.dart';
import '../widget/desktop_main_area_widget.dart';
import '../widget/desktop_side_bar_widget.dart';
import '../widget/desktop_top_navigation_bar_widget.dart';

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
              child: Navigator(
                key: state.navigatorKey,
                onGenerateRoute: (settings) {
                  if (settings.name == '/') {
                    return MaterialPageRoute(
                      settings: settings,
                      builder: (context) => PageView(
                        controller: state.controller,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          HomePage(),
                          CollectsPage(),
                          MyBiliPage(),
                        ],
                      ),
                    );
                  }
                  return MaterialPageRoute(
                    settings: settings,
                    builder: (context) => settings.arguments as Widget,
                  );
                },
              ),
            ),
            bottomNavigationBar: BottomNavigationBarWidget(
              onTabChanged: (tab) async {
                await ref.read(mainPageProvider.notifier).popAll();

                await ref.read(mainPageProvider.notifier).changeTab(tab);


              },
            ),
          );
        } else {
          return Scaffold(
            body: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  if (checkPlatformIsDesktop())
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
                              child: Navigator(
                                key: state.navigatorKey,
                                onGenerateRoute: (settings) {
                                  return MaterialPageRoute(
                                    settings: settings,
                                    builder: (context) => PageView(
                                      controller: state.controller,
                                      physics: const NeverScrollableScrollPhysics(),
                                      children: const [
                                        HomePage(),
                                        CollectsPage(),
                                        MyBiliPage(),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                        ),)
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

class NavigatorPage extends StatelessWidget {
  final Widget child;

  const NavigatorPage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => child,
        );
      },
    );
  }
}
