import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/download_manager_page.dart';
import 'package:b_be_bee_app/pages/local_audio_browser_page.dart';
import 'package:b_be_bee_app/util/clipboard_util.dart';
import 'package:b_be_bee_app/widget/dialogs/input_new_collects_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class DesktopSideBarAddPopupMenuButtonWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      tooltip: '创建/导入/下载歌曲或歌单',
      icon: Icon(Icons.add,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.8)),
      onSelected: (value) async {
        if (value == 'add') {
          await InputNewCollectsDialog.open(context, ref);
        } else if (value == 'clipboard') {
          await ClipboardUtil.getClipboard(context, ref);
        } else if (value == 'local') {
          await context.push(() => LocalAudioBrowserPage());
        } else if (value == 'download') {
          await context.push(() => DownloadManagerPage());
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'add',
            child: ListTile(
              leading: const Icon(Icons.music_video),
              title: Text(t.collectsPage.createCollects),
            ),
          ),
          PopupMenuItem<String>(
            value: 'clipboard',
            child: ListTile(
              leading: const Icon(Icons.paste),
              title: Text(t.homePage.clipboard),
            ),
          ),
          PopupMenuItem<String>(
            value: 'local',
            child: ListTile(
              leading: const Icon(Icons.folder),
              title: Text(t.localPage.title),
            ),
          ),
          PopupMenuItem<String>(
            value: 'download',
            child: ListTile(
              leading: const Icon(Icons.download),
              title: Text(t.downloadPage.title),
            ),
          ),
        ];
      },
    );
  }
}
