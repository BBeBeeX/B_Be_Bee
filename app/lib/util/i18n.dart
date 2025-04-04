import 'package:b_be_bee_app/gen/strings.g.dart';

Future<void> initI18n() async {
  for (final locale in AppLocale.values) {
    if ([AppLocale.en,].contains(locale)) {
      continue;
    }

    await LocaleSettings.setPluralResolver(
      locale: locale,
      cardinalResolver: (n, {zero, one, two, few, many, other}) {
        if (n == 0) {
          return zero ?? other ?? n.toString();
        }
        if (n == 1) {
          return one ?? other ?? n.toString();
        }
        return other ?? n.toString();
      },
      ordinalResolver: (n, {zero, one, two, few, many, other}) {
        return other ?? n.toString();
      },
    );
  }
}
