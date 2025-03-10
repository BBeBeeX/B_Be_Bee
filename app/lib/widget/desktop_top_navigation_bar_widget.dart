import 'package:b_be_bee_app/model/enum/main_tab_enum.dart';
import 'package:b_be_bee_app/widget/windows_controller_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';
import '../controller/main_page_controller.dart';
import '../gen/strings.g.dart';
import 'account_entry_widget.dart';
import 'button/desktop_top_navigation_bar_options_widget.dart';

class DesktopTopNavigationBarWidget extends ConsumerWidget {
  const DesktopTopNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainPageState = ref.watch(mainPageProvider);

    return SafeArea(
          child: DragToMoveArea(
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,

                ),

                child: SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            DesktopTopNavigationBarOptionsWidget(),
                            IconButton(
                              icon:  Icon(Icons.arrow_back,color: mainPageState.canGoBack ? Colors.white : Colors.grey.shade800 ,size: 30,),
                              onPressed: () async {
                                await ref.read(mainPageProvider.notifier).goBack();
                              },
                            ),
                            IconButton(
                              icon:  Icon(Icons.arrow_forward,color: mainPageState.canGoForward ? Colors.white : Colors.grey.shade800 ,size: 30,),
                              onPressed: ()  async {
                                await ref.read(mainPageProvider.notifier).goForward();
                              },
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.home, size: 30,),
                                color: Colors.white,
                                onPressed: () async {
                                  await ref.read(mainPageProvider.notifier).popAll();
                                  await ref.read(mainPageProvider.notifier).changeTab(MainTabEnum.home);
                                },
                              ),
                            ),

                            Container(
                              height: 48,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 12),
                                  Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                                  ),
                                  const SizedBox(width: 8),
                                  SizedBox(
                                    width: 400,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: t.searchPage.wantHear,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                          color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.7),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )

                          ],
                        ),



                        // 右侧按钮
                        Row(
                          children: [
                            AccountEntryWidget(isDesktopTopBar:true),
                            WindowControlButtons()
                          ],
                        ),
                      ],
                    )
                )

            )
          )

    );
  }
}