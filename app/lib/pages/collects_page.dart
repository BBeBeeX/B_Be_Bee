
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/download_manager_page.dart';
import 'package:b_be_bee_app/pages/local_audio_browser_page.dart';
import 'package:b_be_bee_app/pages/settings/settings_page.dart';
import 'package:b_be_bee_app/widget/collects_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

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
