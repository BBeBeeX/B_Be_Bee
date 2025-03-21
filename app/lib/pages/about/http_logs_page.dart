import 'package:b_be_bee_app/provider/logging/http_logs_provider.dart';
import 'package:b_be_bee_app/widget/copyable_text.dart';
import 'package:b_be_bee_app/widget/responsive_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final _dateFormat = DateFormat.Hms();

class HttpLogsPage extends ConsumerWidget {
  const HttpLogsPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final logs = ref.watch(httpLogsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Logs'),
      ),
      body: ResponsiveListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () => ref.read(httpLogsProvider).clear(),
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
