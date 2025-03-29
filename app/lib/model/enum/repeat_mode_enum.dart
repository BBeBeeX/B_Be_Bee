import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';

part 'repeat_mode_enum.g.dart';

@HiveType(typeId: 7)
enum RepeatModeEnum {
  @HiveField(0)
  none(Icons.density_medium),

  @HiveField(1)
  all(Icons.repeat),

  @HiveField(2)
  one(Icons.repeat_one),

  @HiveField(3)
  random(Icons.shuffle);

  const RepeatModeEnum(this.icon);
  final IconData icon;

  String get label {
    switch (this) {
      case RepeatModeEnum.none:
        return t.model.repeatModelNone;
      case RepeatModeEnum.one:
        return t.model.repeatModelOne;
      case RepeatModeEnum.all:
        return t.model.repeatModelAll;
      case RepeatModeEnum.random:
        return t.model.repeatModelRandom;
    }
  }
}