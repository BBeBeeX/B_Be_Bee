import 'package:b_be_bee_app/config/theme.dart';
import 'package:b_be_bee_app/controller/home_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/search_page.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/widget/bili/bili_music_rank_widget.dart';
import 'package:b_be_bee_app/widget/button/load_share_popup_menu_button_widget.dart';
import 'package:b_be_bee_app/widget/home_page_recommend_widget.dart';
import 'package:b_be_bee_app/widget/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageProvider);

    return ResponsiveBuilder(builder: (sizingInformation) {
      if (!checkPlatform([TargetPlatform.windows,TargetPlatform.linux])) {
        return Scaffold(
          appBar: AppBar(
            title: Text(t.homePage.title),
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            actions: [
              LoadSharePopupMenuButtonWidget(),
            ],
          ),
          body: NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo is ScrollEndNotification) {
                if (scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent) {
                  ref.read(homePageProvider.notifier).loadMoreRecommends();
                }
              }
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: t.searchPage.wantHear,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 30,
                        ),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary,
                        border: OutlineInputBorder(
                          borderRadius: borderRadius,
                        ),
                        hintStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchPage()),
                        );
                      },
                    ),
                  ),
                  const BiliMusicRankWidget(),
                  ...state.recommends.map((params) => HomePageRecommendWidget(
                        params: params,
                      )),
                  if (state.isLoading)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                ],
              ),
            ),
          ),
        );
      } else {
        return NotificationListener<ScrollNotification>(
          onNotification: (scrollInfo) {
            if (scrollInfo is ScrollEndNotification) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                ref.read(homePageProvider.notifier).loadMoreRecommends();
              }
            }
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BiliMusicRankWidget(),
                ...state.recommends.map((params) => HomePageRecommendWidget(
                      params: params,
                    )),
                if (state.isLoading)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          ),
        );
      }
    });
  }
}
