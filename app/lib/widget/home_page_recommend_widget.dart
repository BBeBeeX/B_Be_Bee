import 'package:b_be_bee_app/controller/home_page_recommend_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/widget/audio_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageRecommendWidget extends ConsumerWidget {
  final RecommendParams params;
  static const int maxDisplayCount = 20;

  const HomePageRecommendWidget({
    super.key,
    required this.params,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageRecommendProvider(params));

    if (state.audioList.isEmpty) {
      return const SizedBox();
    }

    final displayList = state.audioList.take(maxDisplayCount).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  params.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextButton.icon(
                onPressed: () async {
                  await ref
                      .read(homePageRecommendProvider(params).notifier)
                      .playAllAudios();
                },
                icon: const Icon(Icons.play_arrow, size: 20),
                label: Text(t.general.playAll),
              ),
              TextButton.icon(
                onPressed: () async {
                  await ref
                      .read(homePageRecommendProvider(params).notifier)
                      .toCollectPage(context);
                },
                icon: const Icon(Icons.chevron_right, size: 20),
                label: Text(t.general.more),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: displayList.length,
            itemBuilder: (context, index) {
              return AudioCardWidget(
                  audioInfo: displayList[index],
                  onTap: () async {
                    await ref
                        .read(homePageRecommendProvider(params).notifier)
                        .playAudios(displayList[index]);
                  });
            },
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
