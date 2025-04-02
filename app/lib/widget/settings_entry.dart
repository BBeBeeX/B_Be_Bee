import 'package:b_be_bee_app/config/theme.dart';
import 'package:b_be_bee_app/widget/dialogs/change_settings_destination_path_dialog.dart';
import 'package:flutter/material.dart';

class SettingsEntry extends StatelessWidget {
  final String label;
  final Widget child;

  const SettingsEntry({required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Expanded(
            child: Text(label),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 150,
            child: child,
          ),
        ],
      ),
    );
  }
}

class BooleanEntry extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const BooleanEntry({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SettingsEntry(
      label: label,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: theme.inputDecorationTheme.fillColor,
              borderRadius: borderRadius,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Switch(
                value: value,
                onChanged: onChanged,
                activeTrackColor: theme.colorScheme.secondary.withOpacity(0.6),
                activeColor: theme.colorScheme.onSecondary,
                inactiveThumbColor:
                    theme.colorScheme.secondary.withOpacity(0.6),
                inactiveTrackColor: theme.colorScheme.surface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonEntry extends StatelessWidget {
  final String label;
  final String buttonLabel;
  final void Function() onTap;

  const ButtonEntry({
    required this.label,
    required this.buttonLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsEntry(
      label: label,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          foregroundColor: Theme.of(context).colorScheme.onSurface,
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            buttonLabel,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class EditableTextEntry extends StatelessWidget {
  final String label;
  final String value;
  final ValueChanged<String> onChanged;

  const EditableTextEntry({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsEntry(
      label: label,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          foregroundColor: Theme.of(context).colorScheme.onSurface,
        ),
        onPressed: () async => ChangeSettingsDestinationPathDialog.open(
            context, label, value, onChanged),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            value,
            maxLines: 2,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class TextEntry extends StatelessWidget {
  final String label;
  final String value;
  final ValueChanged<String> onChanged;

  const TextEntry({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController(text: value);
    final _focusNode = FocusNode();

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        onChanged(_controller.text);
      }
    });

    return SettingsEntry(
      label: label,
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        style: TextStyle(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          // shape: RoundedRectangleBorder(borderRadius: borderRadius),
          color: Theme.of(context).colorScheme.onSurface,
        ),
        cursorRadius: Radius.circular(5),
        decoration: InputDecoration(
          fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          border: OutlineInputBorder(borderRadius: borderRadius),
          hintText: label,
        ),
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final EdgeInsets padding;

  const SettingsSection({
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
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 10),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
