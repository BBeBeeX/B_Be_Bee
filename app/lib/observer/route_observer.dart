import 'dart:io';

import 'package:b_be_bee_app/pages/settings/settings_page.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../controller/main_page_controller.dart';
import '../model/dao/collect_playlist.dart';
import '../pages/collects_playlist_page.dart';
import '../pages/download_manager_page.dart';
import '../pages/local_audio_browser_page.dart';
import '../pages/search_page.dart';

final globalNavigationKey = Routerino.navigatorKey;
final localNavigationKey = GlobalKey<NavigatorState>();

extension DesktopRouteExtension on BuildContext {

  Future<void> pushToPlaylist(CollectPlaylist playlist) async {
    if (checkPlatformIsDesktop()) {
      RouterObserver().pushToLocalNavigator(CollectsPlaylistPage(collectPlaylist: playlist));
      return;
    } else {
      await push(() => CollectsPlaylistPage(collectPlaylist: playlist));
    }
  }
}

class RouterObserver extends RouterinoObserver {
  static final RouterObserver _instance = RouterObserver._internal();
  factory RouterObserver() => _instance;
  RouterObserver._internal();

  final isDesktop = checkPlatformIsDesktop();
  WidgetRef? ref;

  void setRef(WidgetRef newRef) {
    ref = newRef;
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {

    if (isDesktop) {
      final routeName = route.settings.name;

      if (routeName == 'SettingsPage') {
        pushToLocalNavigator(const SettingsPage());
        Future.microtask(() => route.navigator?.removeRoute(route));
        return;
      } else if (routeName == 'SearchPage') {
        if(ref!=null && ref!.read(mainPageProvider.notifier).isSearchPage()){
          return;
        }else{
          pushToLocalNavigator(const SearchPage());
          Future.microtask(() => route.navigator?.removeRoute(route));
          return;
        }
      } else if (routeName == 'LocalAudioBrowserPage') {
        pushToLocalNavigator(const LocalAudioBrowserPage());
        Future.microtask(() => route.navigator?.removeRoute(route));
        return;
      // } else if (routeName == 'FolderContentsPage') {
      //   _pushToLocalNavigator(FolderContentsPage(folder: route.settings.arguments as Directory));
      //   Future.microtask(() => route.navigator?.removeRoute(route));
      //   return;
      } else if (routeName == 'DownloadManagerPage') {
        pushToLocalNavigator(const DownloadManagerPage());
        Future.microtask(() => route.navigator?.removeRoute(route));
        return;
      } else {
        super.didPush(route, previousRoute);
      }
    } else {
      super.didPush(route, previousRoute);
    }
  }

  void pushToLocalNavigator(Widget page){
    if(ref!=null){
      ref?.read(mainPageProvider.notifier).pushPage(page);
    }
  }

}
