import 'package:b_be_bee_app/util/ui/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../gen/strings.g.dart';

class CopyableText extends StatelessWidget {
  final TextSpan? prefix;
  final String name;
  final String? value;

  const CopyableText({
    this.prefix,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: value == null
          ? null
          : () async {
              await Clipboard.setData(ClipboardData(text: value!));
              if (context.mounted) {
                context.showSnackBar(t.widget.copyToClipboard(name: name));
              }
            },
      child: Text.rich(
        TextSpan(
          children: [
            if (prefix != null) prefix!,
            TextSpan(text: value ?? '-'),
          ],
        ),
      ),
    );
  }
}
