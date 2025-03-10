import 'package:flutter/material.dart';

class LabelBadge extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String label;

  const LabelBadge({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).inputDecorationTheme.fillColor,

        // color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(label,),
    );
  }
}
