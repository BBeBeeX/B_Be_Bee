import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/widget/responsive_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguagePage extends ConsumerWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final t = Translations.of(context);
    final activeLocale = ref.watch(settingsProvider.select((s) => s.locale));
    return Scaffold(
      appBar: AppBar(
        title: Text(t.settingsPage.general.language),
      ),
      body: ResponsiveListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          ...[
            null,
            ...AppLocale.values,
          ].map((locale) {
            return ListTile(
              onTap: () async {
                await ref.read(settingsProvider.notifier).setLocale(locale);
                if (locale == null) {
                  await LocaleSettings.useDeviceLocale();
                } else {
                  await LocaleSettings.setLocale(locale);
                }
              },
              title: Row(
                children: [
                  Flexible(
                    child: Text(locale?.humanName ?? t.settingsPage.general.languageOptions.system),
                  ),
                  if (locale == activeLocale) ...[
                    const SizedBox(width: 10),
                    const Icon(Icons.check_circle, color: Colors.green),
                  ],
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}


extension AppLocaleExt on AppLocale {
  String get humanName {
    return LocaleSettings.instance.translationMap[this]?.locale ?? 'Loading';
  }
}
