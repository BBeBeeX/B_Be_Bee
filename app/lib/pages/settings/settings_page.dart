import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/download_file_format_enum.dart';
import 'package:b_be_bee_app/pages/about/about_page.dart';
import 'package:b_be_bee_app/pages/audio_devices_page.dart';
import 'package:b_be_bee_app/pages/settings/language_page.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:b_be_bee_app/util/update_utils.dart';
import 'package:b_be_bee_app/widget/account_entry_widget.dart';
import 'package:b_be_bee_app/widget/custom_dropdown_button.dart';
import 'package:b_be_bee_app/widget/label_checkbox.dart';
import 'package:b_be_bee_app/widget/responsive_list_view.dart';
import 'package:b_be_bee_app/widget/settings_entry.dart';
import 'package:b_be_bee_app/widget/settings_equalizer_control_widget.dart';
import 'package:b_be_bee_app/widget/slider_overlay_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

class SettingsPage extends ConsumerWidget {
  final bool hasBackIcon;

  const SettingsPage({
    super.key,
    this.hasBackIcon = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final controller = ref.read(settingsProvider.notifier);

    OverlayEntry? overlayEntry;

    void removeOverlay() {
      overlayEntry?.remove();
      overlayEntry = null;
    }

    void showSliderOverlay(BuildContext context) {
      overlayEntry = OverlayEntry(
        builder: (context) => SliderOverlayWidget(
          title: '响度增强值',
          value: settings.loudnessEnhancerValue,
          min: -1,
          max: 1,
          divisions: 100,
          onChanged: (value) async {
            await controller.setLoudnessEnhancerValue(value);
          },
          onChangeEnd: (value) async {
            await controller.setLoudnessEnhancerValue(value);
          },
          onDismiss: removeOverlay,
        ),
      );
      Overlay.of(context).insert(overlayEntry!);
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ResponsiveListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (hasBackIcon && !checkPlatformIsDesktop())
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    t.settingsPage.title,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SettingsSection(
            title: t.settingsPage.general.title,
            children: [
              SettingsEntry(
                label: t.settingsPage.general.brightness,
                child: CustomDropdownButton<ThemeMode>(
                  value: settings.theme,
                  items: ThemeMode.values.map((theme) {
                    return DropdownMenuItem(
                      value: theme,
                      alignment: Alignment.center,
                      child: Text(theme.humanName),
                    );
                  }).toList(),
                  onChanged: (theme) async => controller.setTheme(theme),
                ),
              ),
              // SettingsEntry(
              //   label: t.settingsTab.general.color,
              //   child: CustomDropdownButton<ColorModeEnum>(
              //     value: settings.colorMode,
              //     items: ColorModeEnum.values.map((colorMode) {
              //       return DropdownMenuItem(
              //         value: colorMode,
              //         alignment: Alignment.center,
              //         child: Text(colorMode.humanName),
              //       );
              //     }).toList(),
              //     onChanged: (colorMode) async =>
              //         controller.setColorMode(colorMode),
              //   ),
              // ),
              ButtonEntry(
                label: t.settingsPage.general.language,
                buttonLabel: settings.locale?.humanName ??
                    t.settingsPage.general.languageOptions.system,
                onTap: () async => controller.onToggleLLocale(context),
              ),
              if (checkPlatform([TargetPlatform.windows]))
                ButtonEntry(
                  label: '音频输出设备',
                  buttonLabel: '选择应用程序的音频输出设备',
                  onTap: () async => context.push(() => AudioDevicesPage()),
                ),
              if (checkPlatformIsDesktop()) ...[
                if (settings.advancedSettings &&
                    checkPlatformIsNotWaylandDesktop())
                  BooleanEntry(
                    label: defaultTargetPlatform == TargetPlatform.windows
                        ? t.settingsPage.general.saveWindowPlacementWindows
                        : t.settingsPage.general.saveWindowPlacement,
                    value: settings.saveWindowPlacement,
                    onChanged: (b) async {
                      await controller.setSaveWindowPlacement(b);
                    },
                  ),
                if (checkPlatformHasTray()) ...[
                  BooleanEntry(
                    label: t.settingsPage.general.minimizeToTray,
                    value: settings.minimizeToTray,
                    onChanged: (b) async {
                      await controller.setMinimizeToTray(b);
                    },
                  ),
                ],
                if (checkPlatformIsDesktop()) ...[
                  BooleanEntry(
                    label: t.settingsPage.general.launchAtStartup,
                    value: settings.autoStart,
                    onChanged: (_) async =>
                        controller.onToggleAutoStart(context),
                  ),
                  Visibility(
                    visible: settings.autoStart,
                    maintainAnimation: true,
                    maintainState: true,
                    child: AnimatedOpacity(
                      opacity: settings.autoStart ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: BooleanEntry(
                        label: t.settingsPage.general.launchMinimized,
                        value: settings.autoStartLaunchHidden,
                        onChanged: (_) =>
                            controller.onToggleAutoStartLaunchHidden(),
                      ),
                    ),
                  ),
                ],
              ],
              BooleanEntry(
                label: t.settingsPage.general.enableMessageBar,
                value: settings.enableMessageBar,
                onChanged: (b) async {
                  await controller.setEnableMessageBar(b);
                },
              ),
              BooleanEntry(
                label: t.settingsPage.general.autoSyncPlaylist,
                value: settings.autoSyncToLocal,
                onChanged: (b) async {
                  await controller.setAutoSyncToLocal(b);
                },
              ),
              BooleanEntry(
                label: t.settingsPage.general.animations,
                value: settings.enableAnimations,
                onChanged: (b) async {
                  await controller.setEnableAnimations(b);
                },
              ),
              BooleanEntry(
                label: t.settingsPage.general.isAutoUpdate,
                value: settings.isAutoUpdate,
                onChanged: (_) async => controller.onToggleAutoUpdate(),
              ),
              Visibility(
                visible: !settings.isAutoUpdate,
                maintainAnimation: true,
                maintainState: true,
                child: AnimatedOpacity(
                  opacity: !settings.isAutoUpdate ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: BooleanEntry(
                    label: t.settingsPage.general.isUpdateRemind,
                    value: settings.isUpdateRemind,
                    onChanged: (_) => controller.onToggleUpdateRemind(),
                  ),
                ),
              ),
            ],
          ),
          SettingsSection(
            title: t.settingsPage.play.title,
            children: [
              SettingsEntry(
                label: t.settingsPage.play.fadeInOutTime,
                child: CustomDropdownButton<int>(
                  value: settings.fadeInOutTime,
                  items: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 20].map((time) {
                    return DropdownMenuItem(
                      value: time,
                      alignment: Alignment.center,
                      child: Text('$time s'),
                    );
                  }).toList(),
                  onChanged: (time) async {
                    await controller.setFadeInOutTime(time);
                  },
                ),
              ),
              SettingsEntry(
                label: t.settingsPage.play.playQuality,
                child: CustomDropdownButton<AudioQuality>(
                  value: settings.audioQuality,
                  items: AudioQuality.values.map((quality) {
                    return DropdownMenuItem(
                      value: quality,
                      alignment: Alignment.center,
                      child: Text(quality.getLabel()),
                    );
                  }).toList(),
                  onChanged: (quality) async {
                    await controller.setAudioQuality(quality);
                  },
                ),
              ),
              if (checkPlatform([TargetPlatform.android]))
                BooleanEntry(
                  label: '是否开启响度增强',
                  value: settings.isEnableLoudnessEnhancer,
                  onChanged: (_) async =>
                      controller.onToggleEnableLoudnessEnhancer(),
                ),
              if (checkPlatform([TargetPlatform.android]))
                Visibility(
                  visible: settings.isEnableLoudnessEnhancer,
                  maintainAnimation: true,
                  maintainState: true,
                  child: AnimatedOpacity(
                      opacity: settings.isEnableLoudnessEnhancer ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: ButtonEntry(
                        label: '响度增强值',
                        buttonLabel:
                            settings.loudnessEnhancerValue.toStringAsFixed(2),
                        onTap: () async {
                          if (overlayEntry == null) {
                            showSliderOverlay(context);
                          }
                        },
                      )),
                ),
              if (checkPlatform([TargetPlatform.android]))
                BooleanEntry(
                  label: '是否开启动态效果器',
                  value: settings.isEnableEqualizer,
                  onChanged: (_) async => controller.onToggleEnableEqualizer(),
                ),
              if (checkPlatform([TargetPlatform.android]))
                Visibility(
                  visible: settings.isEnableEqualizer,
                  maintainAnimation: true,
                  maintainState: true,
                  child: AnimatedOpacity(
                      opacity: settings.isEnableEqualizer ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: ButtonEntry(
                        label: '动态效果器值',
                        buttonLabel: '修改',
                        onTap: () async {
                          await SettingsEqualizerControlWidget.show(context);
                        },
                      )),
                ),
              if (checkPlatform([
                TargetPlatform.android,
                TargetPlatform.iOS,
              ]))
                BooleanEntry(
                  label: '是否开启音频可视化',
                  value: settings.isEnableAudioVisual,
                  onChanged: (_) async =>
                      controller.onToggleEnableAudioVisual(),
                ),
            ],
          ),
          SettingsSection(
            title: t.settingsPage.download.title,
            children: [
              SettingsEntry(
                label: t.settingsPage.download.downloadQuality,
                child: CustomDropdownButton<AudioQuality>(
                  value: settings.downloadQuality,
                  items: AudioQuality.values.map((quality) {
                    return DropdownMenuItem(
                      value: quality,
                      alignment: Alignment.center,
                      child: Text(quality.getLabel()),
                    );
                  }).toList(),
                  onChanged: (quality) async {
                    await controller.setDownloadQuality(quality);
                  },
                ),
              ),
              BooleanEntry(
                label: t.settingsPage.download.downloadLyrics,
                value: settings.isDownloadLyrics,
                onChanged: controller.setIsDownloadLyrics,
              ),
              BooleanEntry(
                label: t.settingsPage.download.downloadCover,
                value: settings.isDownloadCover,
                onChanged: controller.setIsDownloadCover,
              ),
              BooleanEntry(
                label: t.settingsPage.download.downloadByMobile,
                value: settings.isDownloadByMobile,
                onChanged: controller.setIsDownloadByMobile,
              ),
              if (settings.advancedSettings)
                SettingsEntry(
                  label: t.settingsPage.download.downloadFileFormat,
                  child: CustomDropdownButton<DownloadFileFormatEnum>(
                    value: settings.downloadFileFormat,
                    items: DownloadFileFormatEnum.values.map((format) {
                      return DropdownMenuItem(
                        value: format,
                        alignment: Alignment.center,
                        child: Text(format.label),
                      );
                    }).toList(),
                    onChanged: (format) async =>
                        controller.setDownloadFileFormat(format),
                  ),
                ),
              if (settings.advancedSettings)
                EditableTextEntry(
                    label: t.settingsPage.download.downloadDestination,
                    value: settings.destination,
                    onChanged: (str) async => controller.setDestination(str))
            ],
          ),
          SettingsSection(
            title: t.settingsPage.network.title,
            padding: const EdgeInsets.only(bottom: 0),
            children: [
              if (settings.advancedSettings)
                EditableTextEntry(
                    label: 'User-agent',
                    value: settings.userAgent,
                    onChanged: (str) async => controller.setUserAgent(str)),
            ],
          ),
          const SizedBox(height: 16),
          AccountEntryWidget(),
          const SizedBox(height: 16),
          SettingsSection(
            title: t.settingsPage.other.title,
            padding: const EdgeInsets.only(bottom: 0),
            children: [
              ButtonEntry(
                label: t.aboutPage.title,
                buttonLabel: t.general.open,
                onTap: () async {
                  await context.push(() => const AboutPage());
                },
              ),
              FutureBuilder<(int, String)>(
                future: UpdateUtils.isNewestVersion(),
                builder: (context, snapshot) {
                  final isNewest = (snapshot.data?.$1 ?? 0) <= 1 ? true : false;
                  final newVersion = snapshot.data?.$2 ?? '0';

                  return ButtonEntry(
                    label: t.aboutPage.newVersionUpdate,
                    buttonLabel: isNewest
                        ? t.aboutPage.isNewestVersion
                        : '${t.aboutPage.newVersion} $newVersion',
                    onTap: () async {
                      if (!isNewest) {
                        await ToastUtil.show(t.aboutPage.updatine);
                        UpdateUtils.getLatestVersion(null, isActive: true);
                      }
                    },
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LabelCheckbox(
                label: t.settingsPage.advancedSettings,
                value: settings.advancedSettings,
                labelFirst: true,
                onChanged: (b) async {
                  await controller.setAdvancedSettings(b == true);
                },
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}

extension on ThemeMode {
  String get humanName {
    switch (this) {
      case ThemeMode.system:
        return t.settingsPage.general.brightnessOptions.system;
      case ThemeMode.light:
        return t.settingsPage.general.brightnessOptions.light;
      case ThemeMode.dark:
        return t.settingsPage.general.brightnessOptions.dark;
    }
  }
}
