import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/settings/settings_state.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/download_file_format_enum.dart';
import 'package:b_be_bee_app/pages/settings/language_page.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/audio_handler.dart';
import 'package:b_be_bee_app/util/hive_helper.dart';
import 'package:b_be_bee_app/util/native/autostart_helper.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:permission_handler/permission_handler.dart';
import 'package:routerino/routerino.dart';

import '../model/enum/audio_player_style_enum.dart';
import '../model/enum/contrast_color_enum.dart';
import '../model/enum/proxy_type_enum.dart';
import '../util/native/channel/path_proxy_utils.dart';
import '../util/native/path_utils.dart';

final settingsProvider =
    StateNotifierProvider<SettingsController, SettingsState>((ref) {
  return SettingsController();
}, name: 'settingsProvider');

class SettingsController extends StateNotifier<SettingsState> {
  SettingsController() : super(SettingsState.initial()) {
    _loadFromStorage();
  }

  Future<void> _loadFromStorage() async {
    final destinationPath = await PathProxyUtils.getAppDocumentDirectory();

    state = state.copyWith(
      theme: HiveHelper.getTheme(),
      colorMode: HiveHelper.getColorMode(),
      locale: await HiveHelper.getLocale(),
      minimizeToTray: HiveHelper.isMinimizeToTray(),
      saveWindowPlacement: HiveHelper.getSaveWindowPlacement(),
      autoStart: await HiveHelper.getAutoStart(),
      autoStartLaunchHidden: HiveHelper.getAutoStartLaunchHidden(),
      autoSyncToLocal: HiveHelper.getAutoSyncToLocal(),
      playBarFontColorMode: HiveHelper.getPlayBarFontColorMode(),
      playerPageFontColorMode: HiveHelper.getPlayerPageFontColorMode(),
        playerPageStyle: HiveHelper.getPlayerPageStyle() ?? (checkPlatformIsDesktop() ? AudioPlayerStyleEnum.row1 : AudioPlayerStyleEnum.column1),
      destination: HiveHelper.getDestination() ?? destinationPath,
      isDownloadLyrics: HiveHelper.isDownloadLyrics(),
      isDownloadCover: HiveHelper.isDownloadCover(),
      isDownloadByMobile: HiveHelper.getDownloadByMobile(),
      enableMessageBar: HiveHelper.getEnableMessageBar(),
      enableAnimations: HiveHelper.getEnableAnimations(),
      fadeInOutTime: HiveHelper.getFadeInOutTime(),
      isSingleTrack: HiveHelper.getIsSingleTrack(),
      audioQuality: HiveHelper.getAudioQuality(),
      downloadQuality: HiveHelper.getDownloadQuality(),
      downloadFileFormat: HiveHelper.getDownloadFileFormat(),
      isAutoUpdate: HiveHelper.isAutoUpdate(),
      isUpdateRemind: HiveHelper.isUpdateRemind(),
      isEnableLoudnessEnhancer: HiveHelper.isEnableLoudnessEnhancer(),
      loudnessEnhancerValue: HiveHelper.getLoudnessEnhancerValue(),
      isEnableEqualizer: HiveHelper.isEnableEqualizer(),
      equalizerValue: HiveHelper.getEnableEqualizerValue(),
      isEnableAudioVisual: HiveHelper.isEnableAudioVisual(),
      userAgent: HiveHelper.getUserAgent(),
      proxyType: await HiveHelper.getProxyType(),
      proxyHost: HiveHelper.getProxyHost(),
      proxyPort: HiveHelper.getProxyPort(),
      proxyUsername: HiveHelper.getProxyUsername(),
      proxyPassword: HiveHelper.getProxyPassword(),
      advancedSettings: HiveHelper.getAdvancedSettingsEnabled(),
    );
  }

  Future<void> setTheme(ThemeMode theme) async {
    state = state.copyWith(
      theme: theme,
    );
    await HiveHelper.setTheme(theme);
  }

  Future<void> setColorMode(FlexScheme mode) async {
    state = state.copyWith(
      colorMode: mode,
    );
    await HiveHelper.setColorMode(mode);
  }

  Future<void> setLocale(AppLocale? locale) async {
    state = state.copyWith(locale: locale);
    await HiveHelper.setLocale(locale);
  }

  Future<void> onToggleLLocale(BuildContext context) async {
    await context.push(() => const LanguagePage());
  }

  Future<void> setMinimizeToTray(bool minimizeToTray) async {
    state = state.copyWith(
      minimizeToTray: minimizeToTray,
    );
    await HiveHelper.setMinimizeToTray(minimizeToTray);
  }

  Future<void> setSaveWindowPlacement(bool saveWindowPlacement) async {
    state = state.copyWith(
      saveWindowPlacement: saveWindowPlacement,
    );
    await HiveHelper.setMinimizeToTray(saveWindowPlacement);
  }

  Future<void> onToggleAutoStart(BuildContext context) async {
    final bool success;
    if (state.autoStart) {
      success = await disableAutoStart();
    } else {
      success = await enableAutoStart(startHidden: state.autoStartLaunchHidden);
    }

    if (success) {
      state = state.copyWith(
        autoStart: !state.autoStart,
      );
      await HiveHelper.setAutoStart(state.autoStart);
    }
  }

  Future<void> onToggleAutoStartLaunchHidden() async {
    if (state.autoStart) {
      final success =
          await enableAutoStart(startHidden: !state.autoStartLaunchHidden);
      if (success) {
        state = state.copyWith(
          autoStartLaunchHidden: !state.autoStartLaunchHidden,
        );
        await HiveHelper.setAutoStartLaunchHidden(state.autoStartLaunchHidden);
      }
    }
  }

  Future<void> setAutoSyncToLocal(bool autoSyncToLocal) async {
    state = state.copyWith(
      autoSyncToLocal: autoSyncToLocal,
    );
    await HiveHelper.setAutoSyncToLocal(autoSyncToLocal);
  }

  Future<void> setAutoStartLaunchHidden(bool autoStartLaunchHidden) async {
    state = state.copyWith(
      autoStartLaunchHidden: autoStartLaunchHidden,
    );
    await HiveHelper.setAutoStartLaunchHidden(autoStartLaunchHidden);
  }

  Future<void> setPlayBarFontColorMode(
      ContrastColorEnum playBarFontColorMode) async {
    state = state.copyWith(
      playBarFontColorMode: playBarFontColorMode,
    );
    await HiveHelper.setPlayBarFontColorMode(playBarFontColorMode);
  }

  Future<void> setPlayerPageFontColorMode(
      ContrastColorEnum playPageFontColorMode) async {
    state = state.copyWith(
      playerPageFontColorMode: playPageFontColorMode,
    );
    await HiveHelper.setPlayPageFontColorMode(playPageFontColorMode);
  }

  Future<void> setPlayerPageStyle(AudioPlayerStyleEnum playerPageStyle)async{
    state = state.copyWith(
      playerPageStyle: playerPageStyle,
    );
    await HiveHelper.setPlayerPageStyle(playerPageStyle);
  }

  Future<void> setDestination(String destination) async {
    state = state.copyWith(
      destination: destination,
    );
    await HiveHelper.setDestination(destination);
  }

  Future<void> setIsDownloadLyrics(bool value) async {
    state = state.copyWith(isDownloadLyrics: value);
    await HiveHelper.setDownloadLyrics(value);
  }

  Future<void> setIsDownloadCover(bool value) async {
    state = state.copyWith(isDownloadCover: value);
    await HiveHelper.setDownloadCover(value);
  }

  Future<void> setIsDownloadByMobile(bool value) async {
    state = state.copyWith(isDownloadByMobile: value);
    await HiveHelper.setDownloadByMobile(value);
  }

  Future<void> setEnableMessageBar(bool enableMessageBar) async {
    state = state.copyWith(
      enableMessageBar: enableMessageBar,
    );
    await HiveHelper.setEnableMessageBar(enableMessageBar);
  }

  Future<void> setEnableAnimations(bool enableAnimations) async {
    state = state.copyWith(
      enableAnimations: enableAnimations,
    );
    await HiveHelper.setEnableAnimations(enableAnimations);
  }

  Future<void> setFadeInOutTime(int time) async {
    state = state.copyWith(fadeInOutTime: time);
    await HiveHelper.setFadeInOutTime(time);
  }

  Future<void> setIsSingleTrack(bool value) async {
    state = state.copyWith(isSingleTrack: value);
    await HiveHelper.setIsSingleTrack(value);
  }

  Future<void> setAudioQuality(AudioQuality quality) async {
    state = state.copyWith(audioQuality: quality);
    await HiveHelper.setAudioQuality(quality);
  }

  Future<void> setDownloadQuality(AudioQuality quality) async {
    state = state.copyWith(downloadQuality: quality);
    await HiveHelper.setDownloadQuality(quality);
  }

  Future<void> setDownloadFileFormat(
      DownloadFileFormatEnum downloadFileFormat) async {
    state = state.copyWith(downloadFileFormat: downloadFileFormat);
    await HiveHelper.setDownloadFileFormat(downloadFileFormat);
  }

  Future<void> onToggleEnableLoudnessEnhancer() async {
    state = state.copyWith(
        isEnableLoudnessEnhancer: !state.isEnableLoudnessEnhancer);
    await HiveHelper.setEnableLoudnessEnhancer(state.isEnableLoudnessEnhancer);
  }

  Future<void> setLoudnessEnhancerValue(double loudnessEnhancerValue) async {
    state = state.copyWith(loudnessEnhancerValue: loudnessEnhancerValue);
    await HiveHelper.setLoudnessEnhancerValue(loudnessEnhancerValue);
  }

  Future<void> onToggleEnableEqualizer() async {
    state = state.copyWith(isEnableEqualizer: !state.isEnableEqualizer);
    await HiveHelper.setIsEnableEqualizer(state.isEnableEqualizer);
  }

  Future<void> setEqualizerValue(List<double> equalizerValue) async {
    state = state.copyWith(equalizerValue: equalizerValue);
    await HiveHelper.setEqualizerValue(equalizerValue);
  }

  Future<void> onToggleEnableAudioVisual() async {
    final status = await Permission.microphone.request();
    await Future.microtask(() async {
      container
          .read(commonLoggerProvider.notifier)
          .addLog('get Permission.microphone: ${status.isGranted} ');
    });

    if (status.isGranted) {
      state = state.copyWith(isEnableAudioVisual: !state.isEnableAudioVisual);
      await HiveHelper.setIsEnableAudioVisual(state.isEnableAudioVisual);

      if (CustomAudioHandler.player.playing && state.isEnableAudioVisual) {
        await CustomAudioHandler.player.startVisualizer();
      }
    }
  }

  Future<void> setUserAgent(String userAgent) async {
    state = state.copyWith(userAgent: userAgent);
    await HiveHelper.setUserAgent(userAgent);
  }

  Future<void> setProxyType(ProxyTypeEnum proxyType) async {
    state = state.copyWith(
      proxyType: proxyType,
    );
    await HiveHelper.setProxyType(proxyType);
  }

  Future<void> setProxyHost(String proxyHost) async {
    state = state.copyWith(proxyHost: proxyHost);
    await HiveHelper.setProxyHost(proxyHost);
  }

  Future<void> setProxyPort(int proxyPort) async {
    state = state.copyWith(proxyPort: proxyPort);
    await HiveHelper.setProxyPort(proxyPort);
  }

  Future<void> setProxyUsername(String proxyUsername) async {
    state = state.copyWith(proxyUsername: proxyUsername);
    await HiveHelper.setProxyUsername(proxyUsername);
  }

  Future<void> setProxyPassword(String proxyPassword) async {
    state = state.copyWith(proxyPassword: proxyPassword);
    await HiveHelper.setProxyPassword(proxyPassword);
  }

  Future<void> onToggleAutoUpdate() async {
    state = state.copyWith(
      isAutoUpdate: !state.isAutoUpdate,
    );
    await HiveHelper.setIsAutoUpdate(state.isAutoUpdate);

    if (state.isAutoUpdate) {
      state = state.copyWith(isUpdateRemind: false);
      await HiveHelper.setIsUpdateRemind(false);
    }
  }

  Future<void> onToggleUpdateRemind() async {
    state = state.copyWith(
      isUpdateRemind: !state.isUpdateRemind,
    );
    await HiveHelper.setIsUpdateRemind(state.isUpdateRemind);
  }

  Future<void> setAdvancedSettings(bool advancedSettings) async {
    state = state.copyWith(advancedSettings: advancedSettings);
    await HiveHelper.setAdvancedSettingsEnabled(advancedSettings);
  }
}
