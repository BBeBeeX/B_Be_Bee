
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:flutter/material.dart';

class ChangeSettingsDestinationPathDialog {

  static Future<void> open(BuildContext context,String label,String value,ValueChanged<String> onChanged)async {
    TextEditingController controller = TextEditingController(text: value);

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(label),
          content: TextField(
            controller: controller,
            autofocus: true,
            maxLines: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: t.widget.enterNewValue,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(t.general.cancel),
            ),
            ElevatedButton(
              onPressed: () {
                onChanged(controller.text);
                Navigator.of(context).pop();
              },
              child: Text(t.general.save),
            ),
          ],
        );
      },
    );
  }
}