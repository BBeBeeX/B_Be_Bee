import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final EdgeInsets padding;

  const SectionWidget({
    required this.title,
    required this.children,
    this.padding = const EdgeInsets.only(bottom: 15),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}