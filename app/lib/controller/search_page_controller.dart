import 'package:b_be_bee_app/model/dto/search_result_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchTabControllerProvider = Provider.autoDispose((ref) {
  final controller = TabController(length: SearchItemTypeEnum.values.length, vsync: ref.watch(vsyncProvider));
  print('TabController initialized with length: ${controller.length}');
  return controller;
});

final searchTextControllerProvider = Provider.autoDispose((ref) {
  final controller = TextEditingController();
  ref.onDispose(() => controller.dispose());
  return controller;
});

final vsyncProvider = Provider.autoDispose((ref) {
  return _SearchPageTickerProvider();
});

class _SearchPageTickerProvider extends ChangeNotifier implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}