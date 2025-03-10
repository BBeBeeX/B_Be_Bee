import 'package:b_be_bee_app/widget/add_to_collects_widget.dart';
import 'package:flutter/material.dart';

class AddToCollectsBottomSheet{
  static Future<void> open(BuildContext context, dynamic songs) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => AddToCollectsWidget(song: songs),
    );
  }
  }