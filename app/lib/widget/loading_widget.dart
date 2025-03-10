import 'package:b_be_bee_app/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoadingWidget extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: CircularProgressIndicator(
        color: green,
      ),
    );  }

}