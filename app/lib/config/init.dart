import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/config/river_pod.dart';
import 'package:b_be_bee_app/provider/animation_provider.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/provider/logging/http_logs_provider.dart';
import 'package:b_be_bee_app/provider/tv_provider.dart';
import 'package:b_be_bee_app/provider/window_dimensions_provider.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/i18n.dart';
import 'package:b_be_bee_app/util/logger.dart';
import 'package:b_be_bee_app/util/native/autostart_helper.dart';
import 'package:b_be_bee_app/util/native/channel/macos_channel.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/util/native/tray_helper.dart';
import 'package:b_be_bee_app/util/rhttp_utils.dart';
import 'package:ffmpeg_helper/helpers/ffmpeg_helper_class.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:rhttp/rhttp.dart';
import 'package:window_manager/window_manager.dart';

import '../util/update_utils.dart';

final _logger = Logger('Init');

late final ProviderContainer container;
bool startHidden = false;

Future<void> preInit(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  initLogger(args.contains('-v') || args.contains('--verbose')
      ? Level.ALL
      : Level.INFO);

  await Rhttp.init();

  await RhttpUtils().init();
  await HiveHelper.init();

  if (checkPlatformIsDesktop()) {
    WidgetsFlutterBinding.ensureInitialized();

    try {
      await initTray();
    } catch (e) {
      _logger.warning('Initializing tray failed: $e');
    }

    // initialize size and position
    await WindowManager.instance.ensureInitialized();
    if (args.contains(startHiddenFlag)) {
      // keep this app hidden
      startHidden = true;
    } else if (defaultTargetPlatform == TargetPlatform.macOS) {
      startHidden =
          await isLaunchedAsLoginItem() && await getLaunchAtLoginMinimized();
    }

    if (defaultTargetPlatform == TargetPlatform.macOS) {
      await setupStatusBar();
    }
  }

  await initI18n();

  setDefaultRouteTransition();
  await FFMpegHelper.instance.initialize();

  container = ProviderContainer(
      observers: kDebugMode ? [CustomProviderObserver()] : [],
      overrides: [
        tvProvider.overrideWithValue(await checkIfTv()),
        sleepProvider.overrideWith((ref) {
          return SleepController()..state = false;
        }),
        commonLoggerProvider.overrideWith((ref) {
          return CommonLogsController()..state = [];
        }),
        httpLogsProvider.overrideWith((ref) {
          return HttpLogsController()..state = [];
        }),
      ]);
  await AudioService.init(
    builder: () => CustomAudioHandler.initialize(),
    config: AudioServiceConfig(
      androidNotificationChannelId: Constants.channelId,
      androidNotificationChannelName: Constants.channelName,
      androidNotificationOngoing: true,
      androidNotificationIcon: 'drawable/ic_notification',
      // androidNotificationClickStartsActivity: true,
      // androidStopForegroundOnPause: false,
    ),
  );
}

/// Will be called when home page has been initialized
Future<void> postInit(Ref ref) async {
  if (checkPlatformIsDesktop()) {
    await WindowDimensionsController().initDimensionsConfiguration();
  }

  if (checkPlatform([TargetPlatform.android])) {
    try {
      await FlutterDisplayMode.setHighRefreshRate();
    } catch (e) {
      _logger.warning('Setting high refresh rate failed', e);
    }
  }

  bool hasInitialShare = false;

  // if (appStart && !hasInitialShare && (checkPlatformWithGallery() || checkPlatformCanReceiveShareIntent())) {
  //   // Clear cache on every app start.
  //   // If we received a share intent, then don't clear it, otherwise the shared file will be lost.
  //   ref.global.dispatchAsync(ClearCacheAction()); // ignore: unawaited_futures
  // }

  UpdateUtils.getLatestVersion(ref);
}
