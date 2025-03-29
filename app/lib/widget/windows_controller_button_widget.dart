import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WindowControlButtons extends ConsumerWidget {
  const WindowControlButtons({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final buttonColors = WindowButtonColors(
        // iconNormal:  Theme.of(context).cardColor,
        iconNormal:  Theme.of(context).colorScheme.primary,
        mouseOver:  Colors.grey.withOpacity(0.3),
        mouseDown:  Colors.grey.withOpacity(0.8),);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: buttonColors),
      ],
    );
  }
}

