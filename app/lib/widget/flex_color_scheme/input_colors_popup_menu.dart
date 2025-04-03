import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InputColorsPopupMenu extends ConsumerWidget {
  const InputColorsPopupMenu({
    super.key,
  });

  double _borderRadius(bool useMaterial3) => 12;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final bool isLight = theme.brightness == Brightness.light;
    final bool useMaterial3 = theme.useMaterial3;
    final ColorScheme scheme = theme.colorScheme;

    final settings = ref.watch(settingsProvider);

    return PopupMenuButton<int>(
      popUpAnimationStyle: AnimationStyle.noAnimation,
      position: PopupMenuPosition.under,
      offset: const Offset(0, -4),
      constraints: const BoxConstraints(maxHeight: 560),
      tooltip: '',
      initialValue: settings.colorMode.index,
      padding: EdgeInsets.zero,
      onSelected: (index) {
        ref
            .read(settingsProvider.notifier)
            .setColorMode(FlexScheme.values[index]);
      },
      itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
        for (int i = 0; i < FlexScheme.values.length; i++)
          PopupMenuItem<int>(
            value: i,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              title: Text(FlexScheme.values[i].name),
              leading: SizedBox(
                width: 52,
                child: FlexThemeModeOptionButton(
                  flexSchemeColor: isLight
                      ? FlexColor.schemes[FlexScheme.values[i]]?.light ??
                          FlexColor.schemes[FlexScheme.greys]!.light
                      : FlexColor.schemes[FlexScheme.values[i]]?.dark ??
                          FlexColor.schemes[FlexScheme.greys]!.dark,
                  selected: i == settings.colorMode.index,
                  unselectedBorder: BorderSide.none,
                  selectedBorder: BorderSide(
                    color: scheme.outline,
                    width: 3,
                  ),
                  backgroundColor: scheme.surface,
                  width: 26,
                  height: 18,
                  padding: EdgeInsets.zero,
                  borderRadius: 0,
                  optionButtonPadding: EdgeInsets.zero,
                  optionButtonMargin: EdgeInsets.zero,
                  optionButtonBorderRadius: _borderRadius(useMaterial3),
                ),
              ),
            ),
          )
      ],
      child: ListTile(
        trailing: SizedBox(
          width: 68,
          // The parent PopupMenuButton handles the tap.
          child: AbsorbPointer(
            child: FlexThemeModeOptionButton(
              flexSchemeColor: FlexSchemeColor(
                primary: scheme.primary,
                primaryContainer: scheme.primaryContainer,
                secondary: scheme.secondary,
                secondaryContainer: scheme.secondaryContainer,
                tertiary: scheme.tertiary,
                tertiaryContainer: scheme.tertiaryContainer,
              ),
              selected: false,
              unselectedBorder: BorderSide.none,
              backgroundColor: scheme.surface,
              width: 30,
              height: 24,
              padding: EdgeInsets.zero,
              borderRadius: 0,
              optionButtonPadding: EdgeInsets.zero,
              optionButtonMargin: EdgeInsets.zero,
              optionButtonBorderRadius: _borderRadius(useMaterial3),
            ),
          ),
        ),
      ),
    );
  }
}
