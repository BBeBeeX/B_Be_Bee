import 'package:flutter_riverpod/flutter_riverpod.dart';


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