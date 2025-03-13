import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/config/init_error.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/pages/main_page.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/widget/watcher/life_cycle_watcher.dart';
import 'package:b_be_bee_app/widget/watcher/shortcut_watcher.dart';
import 'package:b_be_bee_app/widget/watcher/tray_watcher.dart';
import 'package:b_be_bee_app/widget/watcher/window_watcher.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';
import 'package:window_manager/window_manager.dart';

import 'controller/settings_controller.dart';
import 'observer/route_observer.dart';



Future<void> main(List<String> args) async {

  try {
    await preInit(args);
  } catch (e, stackTrace) {
    showInitErrorApp(
      error: e,
      stackTrace: stackTrace,
    );
    return;
  }

  runApp(ProviderScope(

    parent: container,
    child: TranslationProvider(
      child: const b_be_beeApp(),
    ),
  ));


}

class b_be_beeApp extends ConsumerWidget {
  const b_be_beeApp();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CustomAudioHandler.setRef(ref);
    RouterObserver().setRef(ref);

    return ProviderScope(
        child: TrayWatcher(
          child: WindowWatcher(
            child: LifeCycleWatcher(
              onChangedState: (AppLifecycleState state) {
                switch (state) {
                  case AppLifecycleState.resumed:
                    break;
                  case AppLifecycleState.detached:
                    break;
                  default:
                    break;
                }
              },
              child: ShortcutWatcher(
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onPanStart: (details) async {
                      if(checkPlatformIsDesktop()){
                        await windowManager.startDragging();
                      }
                    },
                      child: MaterialApp(
                        title: t.appName,
                        locale: TranslationProvider
                            .of(context)
                            .flutterLocale,
                        supportedLocales: AppLocaleUtils.supportedLocales,
                        localizationsDelegates: GlobalMaterialLocalizations
                            .delegates,
                        debugShowCheckedModeBanner: false,
                        theme: FlexThemeData.light(scheme: FlexScheme.greys),
                        darkTheme: FlexThemeData.dark(scheme: FlexScheme.greys),
                        themeMode: ref.watch(settingsProvider).theme,
                        navigatorKey: globalNavigationKey,
                        navigatorObservers: [RouterObserver()],
                        home: RouterinoHome(
                          builder: () => const MainPage(),
                        ),
                      ),
                    )
                ),
              ),
            ),
        ));
  }
}
