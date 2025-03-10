import 'dart:io';

import 'package:b_be_bee_app/pages/about/discovery_debug_page.dart';
import 'package:b_be_bee_app/pages/about/http_logs_page.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/widget/debug_entry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class DebugPage extends ConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debugging'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
        children: [
          DebugEntry(
            name: 'Debug Mode',
            value: kDebugMode.toString(),
          ),
          DebugEntry(
            name: 'Executable Path',
            value: Platform.resolvedExecutable,
          ),
          DebugEntry(
            name: 'Working Directory',
            value: Directory.current.path,
          ),

          DebugEntry(
            name: 'Dart SDK',
            value: Platform.version,
          ),
          const SizedBox(height: 20),
          const Text('More', style: DebugEntry.headerStyle),
          const SizedBox(height: 5),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              FilledButton(
                onPressed: () async => context.push(() => const DiscoveryDebugPage()),
                child: const Text('Discovery'),
              ),
              FilledButton(
                onPressed: () async => context.push(() => const HttpLogsPage()),
                child: const Text('HTTP Logs'),
              ),
              FilledButton(
                onPressed: () async => await HiveHelper.clearSettings(),
                child: const Text('Clear settings'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
