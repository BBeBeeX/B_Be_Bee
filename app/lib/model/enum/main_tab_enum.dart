import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:flutter/material.dart';

enum MainTabEnum {
  home(Icons.home_filled),
  collects(Icons.library_music),
  settings(Icons.settings);

  const MainTabEnum(this.icon);

  final IconData icon;

  String get label {
    switch (this) {
      case MainTabEnum.home:
        return t.homePage.title;
      case MainTabEnum.collects:
        return t.collectsPage.title;
      case MainTabEnum.settings:
        return t.settingsPage.title;
    }
  }
}