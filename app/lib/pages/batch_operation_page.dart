import 'package:b_be_bee_app/controller/batch_operation_controller.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/widget/bottom_sheet/select_list_audioInfo_to_addition_bottom_sheet.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';

class BatchOperationPage extends ConsumerWidget {
  final List<AudioInfo> audioList;
  final String playlistId;
  final Function(List<AudioInfo> playlist, String? playlistId,)? onDelete;

  const BatchOperationPage({
    super.key,
    required this.audioList,
    required this.playlistId,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(batchOperationProvider(audioList));
    final controller = ref.read(batchOperationProvider(audioList).notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.batchPage.selectNum(length: state.selectedIds.length)),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () => controller.toggleSelectAll(),
            child: Text(state.selectAll ? t.general.deselectAll : t.general.selectAll),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: state.audioList.length,
        itemBuilder: (context, index) {
          final audio = state.audioList[index];
          final isSelected = state.selectedIds.contains(audio.id);

          return ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: isSelected,
                  onChanged: (_) => controller.toggleSelect(audio.id),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: NetworkImageByCache(
                    width: 40,
                    height: 40,
                    imageUrl: audio.coverWebUrl ?? '',
                    defaultUrl: '',
                  ),
                ),
              ],
            ),
            title: Text(
              audio.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              audio.upper.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () => controller.toggleSelect(audio.id),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if(onDelete != null)
                _buildActionButton(
                  context: context,
                  icon: Icons.delete,
                  label: t.general.delete,
                  onPressed: state.selectedIds.isEmpty
                      ? null
                      : () {
                    final selectedSongs = controller.selectAudios();
                    onDelete!(selectedSongs,playlistId);
                    Navigator.pop(context);
                  },
                ),
              _buildActionButton(
                context: context,
                icon: Icons.playlist_add,
                label: t.general.addTo,
                onPressed: state.selectedIds.isEmpty
                    ? null
                    : () async {
                  final selectedSongs = controller.selectAudios();
                  await SelectListAudioInfoToAdditionBottomSheet.open(
                      context, ref, selectedSongs,playlistId);
                },
              ),
              _buildActionButton(
                context: context,
                icon: Icons.download,
                label: t.general.download,
                onPressed: state.selectedIds.isEmpty
                    ? null
                    : () async => controller.downloadSelected(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback? onPressed,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: FilledButton.icon(
          onPressed: onPressed,
          icon: Icon(icon, size: 20),
          label: Text(label),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
      ),
    );
  }
} 