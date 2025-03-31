import 'package:b_be_bee_app/controller/bili/bili_my_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/bili/login/my_bili_login_page.dart';
import 'package:b_be_bee_app/provider/animation_provider.dart';
import 'package:b_be_bee_app/widget/big_button.dart';
import 'package:b_be_bee_app/widget/bili/bili_play_favorite_lists.dart';
import 'package:b_be_bee_app/widget/bili/bili_play_subscribe_lists.dart';
import 'package:b_be_bee_app/widget/bili/play_list_tabs.dart';
import 'package:b_be_bee_app/widget/bili/user_info_card.dart';
import 'package:b_be_bee_app/widget/opacity_slideshow.dart';
import 'package:b_be_bee_app/widget/responsive_builder.dart';
import 'package:b_be_bee_app/widget/responsive_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

const _horizontalPadding = 15.0;

class MyBiliPage extends ConsumerWidget {
  const MyBiliPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(myBiliPageVmProvider);
    final animations = ref.watch(animationProvider);

    final sizingInformation =
        SizingInformation(MediaQuery.sizeOf(context).width);
    final buttonWidth = sizingInformation.isDesktop
        ? BigButton.desktopWidth
        : BigButton.mobileWidth;

    Future.microtask(() async {
      final lastFetchTimestamp =
          ref.read(myBiliPageVmProvider).lastFetchTimestamp;
      if (lastFetchTimestamp == 0) {
        await ref.read(myBiliPageVmProvider.notifier).initializeData();
      }
    });

    return RefreshIndicator(
      onRefresh: () async =>
          ref.read(myBiliPageVmProvider.notifier).onRefresh(),
      child: Scrollbar(
        controller: vm.scrollController,
        child: ResponsiveListView(
          controller: vm.scrollController,
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 60),
            if (vm.isLoading)
              const Center(child: CircularProgressIndicator())
            else ...[
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                  left: _horizontalPadding,
                  right: _horizontalPadding,
                ),
                child: UserInfoCard(
                  bilibiliName: vm.user.username,
                  isLogin: vm.user.isLogin,
                  level: 'Lv.${vm.user.userLevel}',
                  faceUrl: vm.user.avatarUrl,
                  onTap: () async {
                    await context.push(() => const MyBiliLoginPage());
                    await ref
                        .read(myBiliPageVmProvider.notifier)
                        .initializeData();
                  },
                ),
              ),
              if (vm.user.isLogin) ...[
                const SizedBox(height: 10),
                const PlayListTabs(),
                const BiliPlayFavoriteLists(),
                const BiliPlaySubscribeLists(),
                // const PlayWaitingLists(),
              ],
              const SizedBox(height: 20),
              _buildAnimatedText(animations),
              const SizedBox(height: 50),
            ],
          ],
        ),
      ),
    );
  }
}

Widget _buildAnimatedText(bool animations) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
    child: OpacitySlideshow(
      durationMillis: 6000,
      running: animations,
      children: [
        Text(
          t.biliPage.biliTipsText1,
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        Text(
          t.biliPage.biliTipsText2,
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        Text(
          t.biliPage.biliTipsText3,
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
