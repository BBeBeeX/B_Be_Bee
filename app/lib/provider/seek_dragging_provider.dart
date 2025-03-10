import 'dart:async';

import 'package:b_be_bee_app/controller/playlist_controller.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';


class SeekDragingController extends StateNotifier<double?> {
  SeekDragingController() : super(null);

  void startDragging(double? value) {
    state = value;
  }

  void endDragging(){
    state = null;
  }

}

final seekDragingProvider = StateNotifierProvider<SeekDragingController, double?>((ref) {
  return SeekDragingController();
},name: 'seekDragingProvider');