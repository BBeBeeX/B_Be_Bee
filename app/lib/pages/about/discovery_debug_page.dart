import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/widget/copyable_text.dart';
import 'package:b_be_bee_app/widget/responsive_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final _dateFormat = DateFormat.Hms();

class DiscoveryDebugPage extends ConsumerWidget {
  const DiscoveryDebugPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final logs = ref.watch(commonLoggerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discovery Debugging'),
      ),
      body: ResponsiveListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Row(
            children: [
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => ref.read(commonLoggerProvider).clear(),
                child: const Text('Clear'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ...logs.map((log) => CopyableText(
                prefix: TextSpan(
                  text: '[${_dateFormat.format(log.timestamp)}] ',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                name: log.log,
                value: log.log,
              )),
        ],
      ),
    );
  }
}
