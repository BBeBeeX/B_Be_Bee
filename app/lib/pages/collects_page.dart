import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/collects_controller.dart';
import 'package:b_be_bee_app/pages/download_manager_page.dart';
import 'package:b_be_bee_app/pages/settings/settings_page.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/widget/dialogs/input_new_collects_dialog.dart';
import 'package:b_be_bee_app/widget/list_tile/collects_playlist_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../gen/strings.g.dart';
import '../widget/collects_list_widget.dart';
import 'local_audio_browser_page.dart';

class CollectsPage extends ConsumerWidget {
  const CollectsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      appBar: AppBar(
        title: Text(t.collectsPage.title),
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () async {
            await context.push(() => const SettingsPage());
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.folder),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LocalAudioBrowserPage()),
              );
            },
          ),

          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DownloadManagerPage()),
              );
            },
          ),
        ],
      ),
      body: CollectsListWidget()
    );
  }
}
