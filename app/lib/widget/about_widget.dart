import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../gen/strings.g.dart';
import '../util/version_utils.dart';
import 'logo.dart';

class AboutWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const b_be_beeLogo(withText: true),
        FutureBuilder<String>(
          future: VersionUtils.getVersionToString(),
          builder: (context, snapshot) {
            return Text(
              '${t.aboutPage.currentVersion} ${snapshot.data ?? t.aboutPage.loading}',
              textAlign: TextAlign.center,
            );
          },
        ),
        Text(
          '© ${DateTime.now().year} Revers.',
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 10),
        // Center(
        //   child: TextButton(
        //     onPressed: () async {
        //       await launchUrl(Uri.parse('https://b_be_bee.com'));
        //     },
        //     child: const Text('b_be_bee.com'),
        //   ),
        // ),
        const SizedBox(height: 10),
        Text(t.aboutPage.description.join('\n\n')),
      ],
    );
  }
}
