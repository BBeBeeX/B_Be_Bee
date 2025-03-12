import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/about/debug_page.dart';
import 'package:b_be_bee_app/pages/about/hive_inspector_page.dart';
import 'package:b_be_bee_app/widget/logo.dart';
import 'package:b_be_bee_app/widget/responsive_list_view.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:routerino/routerino.dart';
import 'package:url_launcher/url_launcher.dart';

final _translatorWithGithubRegex = RegExp(r'(.+) \(@([\w\-_]+)\)');

class AboutPage extends StatelessWidget {
  const AboutPage();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.aboutPage.title),
      ),
      body: ResponsiveListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const SizedBox(height: 20),
          const b_be_beeLogo(withText: true),
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
          const SizedBox(height: 20),
          Text(t.aboutPage.author, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text.rich(_buildContributor(
            label: 'Revers. (@Revers.)',
            primaryColor: Theme.of(context).colorScheme.primary,
          )),
          const SizedBox(height: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TextButton(
              //   onPressed: () async {
              //     await launchUrl(Uri.parse('https://b_be_bee.com'));
              //   },
              //   child: const Text('Homepage'),
              // ),
              TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse('https://github.com/reverssssss/B_Be_Bee'), mode: LaunchMode.externalApplication);
                },
                child: const Text('Source Code (Github)'),
              ),
              TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse('https://www.apache.org/licenses/LICENSE-2.0'));
                },
                child: const Text('Apache License 2.0'),
              ),
              TextButton(
                onPressed: () async {
                  await context.push(() => const LicensePage());
                },
                child: const Text('License Notices'),
              ),
              TextButton(
                onPressed: () async {
                  await context.push(() => const DebugPage());
                },
                child: const Text('Debugging'),
              ),
              TextButton(
                onPressed: () async {
                  await context.push(() => const HiveInspectorPage());
                },
                child: const Text('Hive'),
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

/// Displays the contributor name and links to their github profile.
InlineSpan _buildContributor({required String label, required Color primaryColor, bool newLine = false}) {
  final newLineStr = newLine ? '\n' : '';

  if (label.startsWith('@')) {
    // Only github name
    return TextSpan(
      text: '$newLineStr$label',
      style: TextStyle(color: Theme.of(Routerino.context).colorScheme.primary),
      recognizer: TapGestureRecognizer()
        ..onTap = () async {
          await launchUrl(Uri.parse('https://github.com/${label.substring(1)}'), mode: LaunchMode.externalApplication);
        },
    );
  }

  final match = _translatorWithGithubRegex.firstMatch(label);
  if (match != null) {
    // Full name and github name
    final fullName = match.group(1)!;
    final githubName = match.group(2)!;
    return TextSpan(
      children: [
        TextSpan(text: '$newLineStr$fullName'),
        const TextSpan(text: ' '),
        TextSpan(
          text: '@$githubName',
          style: TextStyle(color: primaryColor),
          recognizer: TapGestureRecognizer()
            ..onTap = () async {
              await launchUrl(Uri.parse('https://github.com/$githubName'), mode: LaunchMode.externalApplication);
            },
        ),
      ],
    );
  }

  // Only full name
  return TextSpan(text: '$newLineStr$label');
}
