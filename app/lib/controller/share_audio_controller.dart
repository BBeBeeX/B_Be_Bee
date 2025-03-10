import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:uuid/uuid.dart';
import '../config/init.dart';
import '../gen/strings.g.dart';
import '../provider/logging/common_logs_provider.dart';
import '../util/native/permission_helper.dart';
import '../util/toast_util.dart';

class ShareAudioState {
  final int selectedColorIndex;
  static const int colorCount = 3;

  const ShareAudioState({
    this.selectedColorIndex = 0,
  });

  ShareAudioState copyWith({
    int? selectedColorIndex,
    Color? dominantColor,
    List<Color>? bgColors,
  }) {
    return ShareAudioState(
      selectedColorIndex: selectedColorIndex ?? this.selectedColorIndex,
    );
  }
}

final shareAudioProvider = StateNotifierProvider.autoDispose<ShareAudioController, ShareAudioState>((ref) {
  return ShareAudioController();
},name: 'shareAudioProvider');

class ShareAudioController extends StateNotifier<ShareAudioState> {
  ShareAudioController() : super(const ShareAudioState());
  final _uuid = const Uuid();

  void setColorIndex(int index) {
    if (index < ShareAudioState.colorCount) {
      state = state.copyWith(selectedColorIndex: index);
    }
  }

  Future<void> shareImage(GlobalKey globalKey, String title) async {
    try {
      RenderRepaintBoundary boundary = globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      
      if (byteData != null) {
        final tempDir = await getTemporaryDirectory();
        final file = await File('${tempDir.path}/share_image.png')
            .writeAsBytes(byteData.buffer.asUint8List());
            
        await Share.shareXFiles(
          [XFile(file.path)],
          text: title,
        );
      }
    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('share error: $e');
      });
      await ToastUtil.show(t.sharePage.shareFail);
    }
  }

  Future<void> copyLink(String data) async {
    try {
      await Clipboard.setData(ClipboardData(text: data));
      await ToastUtil.show(t.sharePage.linkCopy);
    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('link copy error: $e');
      });
      await ToastUtil.show(t.sharePage.copyFail);
    }
  }

  Future<void> saveImage(GlobalKey globalKey) async {
    try {
      RenderRepaintBoundary boundary = globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);

      if(checkPlatformIsDesktop()){
        try {
          if (byteData == null) return;

          Uint8List pngBytes = byteData.buffer.asUint8List();

          Directory? directory = await getDownloadsDirectory();
          String filePath = '${directory?.path}/share_${_uuid.v4()}.png';

          File file = File(filePath);
          await file.writeAsBytes(pngBytes);
          await ToastUtil.show(t.sharePage.saveImageToGallery);
          return ;
        } catch (e) {
          await Future.microtask(() {
            container.read(commonLoggerProvider.notifier).addLog('Save image error: $e');
          });
          await ToastUtil.show(t.sharePage.saveFail);
          return ;
        }

      }else{
        try {
          await getFilePermission();

          if (byteData != null) {
            final result = await ImageGallerySaver.saveImage(
              byteData.buffer.asUint8List(),
              quality: 100,
              name: 'share_${DateTime.now().millisecondsSinceEpoch}',
            );

            if (result['isSuccess']) {
              await ToastUtil.show(t.sharePage.saveImageToGallery);
            } else {
              await ToastUtil.show(t.sharePage.saveFail);
            }
          }
        } catch (e) {
          await Future.microtask(() {
            container.read(commonLoggerProvider.notifier).addLog('Save image error: $e');
          });
          await ToastUtil.show(t.sharePage.saveFail);
        }
      }
    } catch (e) {
      await Future.microtask(() {
        container.read(commonLoggerProvider.notifier).addLog('Save image error: $e');
      });
      await ToastUtil.show(t.sharePage.saveFail);
    }
  }
} 