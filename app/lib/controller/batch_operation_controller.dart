import 'package:b_be_bee_app/controller/download_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';

class BatchOperationState {
  final List<AudioInfo> audioList;
  final Set<String> selectedIds;
  final bool selectAll;

  List<AudioInfo> get selectAudios => audioList.where((audio) => selectedIds.contains(audio.id)).toList();


  const BatchOperationState({
    required this.audioList,
    this.selectedIds = const {},
    this.selectAll = false,
  });

  BatchOperationState copyWith({
    List<AudioInfo>? audioList,
    Set<String>? selectedIds,
    bool? selectAll,
  }) {
    return BatchOperationState(
      audioList: audioList ?? this.audioList,
      selectedIds: selectedIds ?? this.selectedIds,
      selectAll: selectAll ?? this.selectAll,
    );
  }
}

final batchOperationProvider = StateNotifierProvider.family<BatchOperationController, BatchOperationState, List<AudioInfo>>(
  (ref, audioList) => BatchOperationController(ref,audioList),
  name: 'batchOperationProvider'
);


class BatchOperationController extends StateNotifier<BatchOperationState> {
  Ref ref;

  BatchOperationController(this.ref,List<AudioInfo> audioList)
      : super(BatchOperationState(audioList: audioList));

  void toggleSelect(String id) {
    final newSelected = Set<String>.from(state.selectedIds);
    if (newSelected.contains(id)) {
      newSelected.remove(id);
    } else {
      newSelected.add(id);
    }
    state = state.copyWith(
      selectedIds: newSelected,
      selectAll: newSelected.length == state.audioList.length,
    );
  }

  void toggleSelectAll() {
    if (state.selectAll) {
      state = state.copyWith(selectedIds: {}, selectAll: false);
    } else {
      state = state.copyWith(
        selectedIds: state.audioList.map((e) => e.id).toSet(),
        selectAll: true,
      );
    }
  }

  List<AudioInfo> deleteSelected() {
    final remainingList = state.audioList
        .where((audio) => !state.selectedIds.contains(audio.id))
        .toList();
    return remainingList;
  }

  List<AudioInfo> selectAudios(){
    return state.audioList
        .where((audio) => state.selectedIds.contains(audio.id))
        .toList();
  }

  Future<void> downloadSelected() async {
    await ToastUtil.show(t.controller.downloadingSelectedSongs);
    await ref.read(downloadControllerProvider.notifier).addDownloads(state.selectAudios);

  }
} 