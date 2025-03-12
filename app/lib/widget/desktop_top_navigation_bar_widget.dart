import 'package:b_be_bee_app/pages/search_page.dart';
import 'package:b_be_bee_app/widget/windows_controller_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';
import 'package:window_manager/window_manager.dart';
import '../config/theme.dart';
import '../controller/main_page_controller.dart';
import '../controller/search_controller.dart';
import '../controller/search_page_controller.dart';
import '../gen/strings.g.dart';
import 'account_entry_widget.dart';
import 'button/desktop_top_navigation_bar_options_widget.dart';

class DesktopTopNavigationBarWidget extends ConsumerWidget {
  const DesktopTopNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageState = ref.watch(mainPageProvider);
    final pageController = ref.read(mainPageProvider.notifier);
    final textController = ref.watch(searchTextControllerProvider);

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
                              icon:  Icon(Icons.arrow_back,color: pageState.canGoBack ? Theme.of(context).colorScheme.primary.withOpacity(0.9) : Theme.of(context).colorScheme.primary.withOpacity(0.1) ,size: 30,),
                              onPressed: () async {
                                pageController.goBack();
                              },
                            ),
                            IconButton(
                              icon:  Icon(Icons.arrow_forward,color: pageState.canGoForward ? Theme.of(context).colorScheme.primary.withOpacity(0.9) : Theme.of(context).colorScheme.primary.withOpacity(0.1) ,size: 30,),
                              onPressed: ()  async {
                                pageController.goForward();
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
                                color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
                                onPressed: () async {
                                  pageController.goHome();
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
                                      controller: textController,
                                      autofocus: true,
                                      decoration: InputDecoration(
                                        hintText: t.searchPage.wantHear,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                          color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.7),
                                        ),
                                      ),
                                      onSubmitted: (value) async {
                                        await ref.read(searchControllerProvider.notifier).setQuery(value);

                                        await Routerino.context.push(() => SearchPage());
                                      },
                                    ),
                                  ),
                                  if (textController.text.isNotEmpty)
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        ref.read(mainPageProvider.notifier).goBack();
                                        textController.clear();
                                        ref.read(searchControllerProvider.notifier).clearQuery();
                                      },
                                    ),
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