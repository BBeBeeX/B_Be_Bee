import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/gen/assets.gen.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/widget/button/desktop_side_bar_add_popup_menu_button_widget.dart';
import 'package:b_be_bee_app/widget/collects_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DesktopSideBarWidget extends ConsumerWidget {
  const DesktopSideBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOpenSideBar = ref.watch(mainPageProvider).isOpenSideBar;

    return SizedBox(
      width: isOpenSideBar ? 300 : 66,
      height: MediaQuery.of(context).size.height - 150,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Tooltip(
                  message: '折叠音乐库',
                  child: GestureDetector(
                    onTap: () async {
                      await ref
                          .read(mainPageProvider.notifier)
                          .toggleOpenSideBar();
                    },
                    child: Row(
                      children: [
                        Assets.img.logo512.image(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.8),
                          width: 50,
                          height: 50,
                        ),
                        if (isOpenSideBar) const SizedBox(width: 8),
                        if (isOpenSideBar)
                          Text(
                            t.widget.library,
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.8),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                      ],
                    ),
                  ),
                ),
                if (isOpenSideBar) const Spacer(),
                if (isOpenSideBar) DesktopSideBarAddPopupMenuButtonWidget(),
                // if(!isOpenSideBar)
                // IconButton(
                //   icon: const Icon(Icons.arrow_back),
                //   onPressed: () {
                //     // TODO: 返回
                //   },
                // ),
              ],
            ),
          ),
          Expanded(child: CollectsListWidget(isSideBar: true)),
        ],
      ),
    );
  }
}
