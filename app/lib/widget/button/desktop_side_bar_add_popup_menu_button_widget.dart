import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../../config/theme.dart';
import '../../gen/strings.g.dart';
import '../../pages/download_manager_page.dart';
import '../../pages/local_audio_browser_page.dart';
import '../../util/clipboard_util.dart';
import '../dialogs/input_new_collects_dialog.dart';

class DesktopSideBarAddPopupMenuButtonWidget extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      icon:  Icon(Icons.add,color: Theme.of(context).colorScheme.primary.withOpacity(0.8)),
      onSelected: (value) async {
        if (value == 'add') {
          await InputNewCollectsDialog.open(context, ref);
        } else if (value == 'clipboard') {
          await ClipboardUtil.getClipboard(context, ref);
        } else if(value == 'local'){
          await context.push(()=>LocalAudioBrowserPage());
        } else if(value == 'download'){
          await context.push(()=>DownloadManagerPage());
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