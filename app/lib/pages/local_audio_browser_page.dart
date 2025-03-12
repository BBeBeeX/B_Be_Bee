import 'dart:io';
import 'package:b_be_bee_app/controller/bili/bili_upper_page_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:routerino/routerino.dart';
import '../controller/local_audio_browser_controller.dart';
import '../gen/strings.g.dart';
import '../util/native/platform_check.dart';
import '../widget/button/local_audio_browser_page_delete_folder_popup_menu_button_widget.dart';
import 'folder_contents_page.dart';

class LocalAudioBrowserPage extends ConsumerWidget {
  const LocalAudioBrowserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(localAudioBrowserProvider);

    if (state.error != null) {
      return Scaffold(
        appBar: AppBar(title: Text(t.localPage.title)),
        body: Center(child: Text(state.error!)),
      );
    }

    if (state.isLoading && state.folders.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(t.localPage.title)),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(

        title: Text(t.localPage.title),
          automaticallyImplyLeading: checkPlatformIsDesktop()?false: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
              if (selectedDirectory != null) {
                await ref.read(localAudioBrowserProvider.notifier)
                    .addFolder(selectedDirectory);
              }
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: state.folders.length,
        itemBuilder: (context, index) {
          final folderInfo = state.folders[index];
          final folderName = path.basename(folderInfo.path);
          
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.folder,
                  color: Theme.of(context).primaryColor,
                  size: 28,
                ),
              ),
              title: Text(
                folderName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                folderInfo.path,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              trailing: folderInfo.canDelete ? LocalAudioBrowserPageDeleteFolderPopupMenuButtonWidget(removeFolderPath: folderInfo.path,) : null,
              onTap: () async {
                await ref.read(localAudioBrowserProvider.notifier).toCollectPage(context, Directory(folderInfo.path));
              },
            ),
          );
        },
      ),
    );
  }
} 