import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/pages/batch_operation_page.dart';
import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';


class BatchOperationBottomSheet{
  static Future<void> open( List<AudioInfo> audioList,String playlistId,Function(List<AudioInfo>, String?)? onDelete) {
    return showModalBottomSheet(
      context: Routerino.context,
      isScrollControlled: true,
      builder: (context) => BatchOperationPage(
        audioList: audioList,
        playlistId: playlistId,
        onDelete: onDelete,
      ),
    );
  }
}