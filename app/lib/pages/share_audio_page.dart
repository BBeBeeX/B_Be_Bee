import 'package:b_be_bee_app/controller/share_audio_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../config/init.dart';
import '../gen/strings.g.dart';
import '../model/dto/share/share_dto.dart';
import '../provider/image_color_provider.dart';
import '../provider/logging/common_logs_provider.dart';

class ShareAudioPage extends ConsumerWidget {
  final AudioInfo audioInfo;
  final GlobalKey _globalKey = GlobalKey();

  ShareAudioPage({
    super.key,
    required this.audioInfo,
  });

  Widget buildColorOption(
      Color? color,
      int index,
      ShareAudioState state,
      ShareAudioController controller,
      ) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: GestureDetector(
          onTap: () => controller.setColorIndex(index),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: index == 1
                      ? LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [color ?? Colors.grey, Colors.black],
                  )
                      : null,
                  color: index != 1
                      ? (index == 2 ? Colors.black : color ?? Colors.grey)
                      : null,
                  shape: BoxShape.circle,
                ),
              ),
              if (state.selectedColorIndex == index)
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shareAudioProvider);
    final controller = ref.read(shareAudioProvider.notifier);

    final coverUrl = audioInfo.coverWebUrl.isNotEmpty
        ? audioInfo.coverWebUrl
        : audioInfo.coverLocalUrl;
    final mainColor = ref.watch(imageColorProvider(coverUrl));

    BoxDecoration getBackgroundDecoration(Color? color, int index) {
      final defaultColor = Theme
          .of(context)
          .colorScheme
          .onPrimary;
      final backgroundColor = color ?? defaultColor;

      switch (index) {
        case 0:
          return BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
          );
        case 1:
          return BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                backgroundColor,
                Colors.black,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          );
        case 2:
          return BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          );
        default:
          return BoxDecoration(
            color: defaultColor,
            borderRadius: BorderRadius.circular(20),
          );
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(t.general.share),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: RepaintBoundary(
                    key: _globalKey,
                    child: mainColor.when(
                      loading: () => const CircularProgressIndicator(),
                      error: (_, __) => Container(
                        width: 350,
                        height: 600,
                        decoration: getBackgroundDecoration(null, state.selectedColorIndex),
                        child: _buildContent(context, ref, mainColor, state.selectedColorIndex),
                      ),
                      data: (color) => Container(
                        width: 350,
                        height: 600,
                        decoration: getBackgroundDecoration(color, state.selectedColorIndex),
                        child: _buildContent(context, ref, mainColor, state.selectedColorIndex),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: mainColor.when(
                        loading: () => [],
                        error: (_, __) =>
                            List.generate(
                              ShareAudioState.colorCount,
                                  (index) =>
                                  index == ShareAudioState.colorCount - 1
                                      ? buildColorOption(
                                    null,
                                    index,
                                    ref.read(shareAudioProvider),
                                    ref.read(shareAudioProvider.notifier),
                                  )
                                      : Row(
                                    children: [
                                      buildColorOption(
                                        null,
                                        index,
                                        ref.read(shareAudioProvider),
                                        ref.read(shareAudioProvider.notifier),
                                      ),
                                      const SizedBox(width: 20),
                                    ],
                                  ),
                            ),
                        data: (color) =>
                            List.generate(
                              ShareAudioState.colorCount,
                                  (index) =>
                                  index == ShareAudioState.colorCount - 1
                                      ? buildColorOption(
                                    color,
                                    index,
                                    ref.read(shareAudioProvider),
                                    ref.read(shareAudioProvider.notifier),
                                  )
                                      : Row(
                                    children: [
                                      buildColorOption(
                                        color,
                                        index,
                                        ref.read(shareAudioProvider),
                                        ref.read(shareAudioProvider.notifier),
                                      ),
                                      const SizedBox(width: 20),
                                    ],
                                  ),
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                top: BorderSide(
                  color: Colors.white.withOpacity(0.1),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(
                  icon: Icons.link,
                  label: t.sharePage.copyLink,
                  onTap: () async {
                    final shareDto = await ShareDto.fromAudioInfo(audioInfo: audioInfo);
                    if (shareDto != null) {
                      final data = ShareDto.toBase64(shareDto);
                      await controller.copyLink(data);
                    } else {
                      await ToastUtil.show(t.sharePage.copyFail);
                    }
                  },
                ),
                _buildActionButton(
                  icon: Icons.save_alt,
                  label: t.sharePage.saveImage,
                  onTap: () async {
                    await controller.saveImage(_globalKey);
                  },
                ),
                _buildActionButton(
                  icon: Icons.more_horiz,
                  label: t.general.more,
                  onTap: () async {
                    await controller.shareImage(_globalKey, audioInfo.title);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, WidgetRef ref, AsyncValue<Color?> mainColor, int selectedColorIndex) {
    final shareDto = ShareDto.fromAudioInfo(audioInfo: audioInfo);
    if (shareDto == null) {
      ToastUtil.show(t.sharePage.shareFail);
    }

    final data = ShareDto.toBase64(shareDto);

    Future.microtask(() {
      container.read(commonLoggerProvider.notifier).addLog('share data: $data');
    });

    return Center(
      child: Container(
        width: 240,
        height: 370,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  audioInfo.coverWebUrl.isNotEmpty
                      ? audioInfo.coverWebUrl
                      : audioInfo.coverLocalUrl,
                  width: 220,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                audioInfo.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                audioInfo.upper.name,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/img/banner-white.png',
                    width: 120,
                    height: 40,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: PrettyQrView.data(
                          data: data,
                          decoration: const PrettyQrDecoration(
                            background: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}


