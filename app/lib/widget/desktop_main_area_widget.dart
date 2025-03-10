import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class DesktopMainAreaWidget extends ConsumerWidget {
  final Widget child;

  const DesktopMainAreaWidget({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: child
    );
  }

}