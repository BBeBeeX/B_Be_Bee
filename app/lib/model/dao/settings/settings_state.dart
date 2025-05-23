// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// import '../../../gen/strings.g.dart';
// import '../../enum/audio_quality_enum.dart';
// import '../../enum/color_mode_enum.dart';
//
// part './settings_state.freezed.dart';
// part './settings_state.g.dart';
//
// @freezed
// class SettingsState with _$SettingsState {
//   const factory SettingsState({
//     ///通用
//     @Default(ThemeMode.system) ThemeMode theme,
//     @Default(ColorMode.system) ColorMode colorMode,
//     @Default(AppLocale.en) AppLocale locale,
//     @Default(true)  bool minimizeToTray,
//
//
//
//     ///下载
//     @Default('') String destination, //文件保存路径
//     @Default(false) bool isDownloadByMobile, //通过移动流量下载：当未连接wifi时，开始或继续下载
//     @Default(false) bool enableAnimations, //通过移动流量下载：当未连接wifi时，开始或继续下载
//
//
//     ///播放
//     @Default(5) int fadeInOutTime, //淡入淡出时间
//     @Default(false) bool isSingleTrack, //单声道音频： 左右扬声器播放相同的音频
//     @Default(AudioQuality.audio192k) AudioQuality audioQuality, // 播放音质
//     @Default(AudioQuality.audio192k) AudioQuality downloadQuality, // 下载音质
//     /// 均衡器
//
//
//     /// 删除所有已下载内容
//     /// 清除缓存 cookie 图片cache collects
//     /// bool 桌面歌词
//     /// bool 锁屏歌词
//     /// 通知栏音乐播放器样式
//     ///
//     /// 自定义背景样式
//     /// 主题色
//     /// 透明度
//     /// 模糊度
//     /// 背景图
//     ///
//     /// 关于
//     /// 版本
//     /// license
//     /// 技术原理
//
//
//     @Default(false) bool advancedSettings,
//   }) = _SettingsState;
//
//   factory SettingsState.fromJson(Map<String, dynamic> json) => _$SettingsStateFromJson(json);
// }

import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/download_file_format_enum.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../enum/audio_player_style_enum.dart';
import '../../enum/contrast_color_enum.dart';
import '../../enum/proxy_type_enum.dart';

class SettingsState {
  ///通用
  final ThemeMode theme;
  final FlexScheme colorMode;
  final AppLocale? locale;
  final bool minimizeToTray; //最小化到系统托盘
  final bool saveWindowPlacement;
  final bool autoStart;
  final bool autoStartLaunchHidden; //静默自启：只启动托盘服务
  final bool enableMessageBar;
  final bool enableAnimations;
  final bool autoSyncToLocal; // 是否自动同步收藏夹

  ///显示
  final ContrastColorEnum playBarFontColorMode; //播放栏字体颜色模式
  final ContrastColorEnum playPageFontColorMode; //播放页字体颜色模式
  final AudioPlayerStyleEnum? playerPageStyle; //播放页样式

  ///下载
  final String destination; // 文件保存路径
  final bool isDownloadLyrics;
  final bool isDownloadCover;
  final bool isDownloadByMobile; // 通过移动流量下载：当未连接wifi时，开始或继续下载
  final AudioQuality downloadQuality; // 下载音质
  final DownloadFileFormatEnum downloadFileFormat;

  ///播放
  final int fadeInOutTime; // 淡入淡出时间
  final bool isSingleTrack; // 单声道音频： 左右扬声器播放相同的音频
  final AudioQuality audioQuality; // 播放音质
  final bool isEnableLoudnessEnhancer; //声音增强
  final double loudnessEnhancerValue;
  final bool isEnableEqualizer;
  final List<double> equalizerValue;
  //fft 支持 android/ios/macOS
  //waveform 支持 android/ios
  final bool isEnableAudioVisual;

  ///网络
  final String userAgent;
  final ProxyTypeEnum proxyType;
  final String proxyHost;
  final int proxyPort;
  final String proxyUsername;
  final String proxyPassword;

  /// 均衡器

  /// update
  final bool isAutoUpdate;
  final bool isUpdateRemind;

  /// 删除所有已下载内容
  /// 清除缓存 cookie 图片cache collects
  /// bool 桌面歌词
  /// bool 锁屏歌词
  /// 通知栏音乐播放器样式
  ///
  /// 自定义背景样式
  /// 主题色
  /// 透明度
  /// 模糊度
  /// 背景图
  ///
  /// 关于
  /// 版本
  /// license
  /// 技术原理

  final bool advancedSettings;

  // 构造函数
  SettingsState({
    this.theme = ThemeMode.dark,
    this.colorMode = FlexScheme.greys,
    this.locale,
    this.minimizeToTray = true,
    this.saveWindowPlacement = true,
    this.autoStart = true,
    this.autoStartLaunchHidden = true,
    this.autoSyncToLocal = true,
    this.playBarFontColorMode = ContrastColorEnum.blackAndWhite,
    this.playPageFontColorMode = ContrastColorEnum.blackAndWhite,
    this.playerPageStyle,
    this.destination = '',
    this.isDownloadLyrics = true,
    this.isDownloadCover = true,
    this.isDownloadByMobile = false,
    this.enableMessageBar = true,
    this.enableAnimations = true,
    this.fadeInOutTime = 0,
    this.isSingleTrack = false,
    this.audioQuality = AudioQuality.hiRes,
    this.downloadQuality = AudioQuality.hiRes,
    this.downloadFileFormat = DownloadFileFormatEnum.mp4,
    this.isEnableLoudnessEnhancer = false,
    this.loudnessEnhancerValue = 0,
    this.isEnableEqualizer = false,
    this.equalizerValue = const [0, 0, 0, 0, 0],
    this.isEnableAudioVisual = false,
    this.userAgent = Constants.defaultUserAgent,
    this.proxyType = ProxyTypeEnum.none,
    this.proxyHost = '',
    this.proxyPort = 0,
    this.proxyUsername = '',
    this.proxyPassword = '',
    this.isAutoUpdate = true,
    this.isUpdateRemind = false,
    this.advancedSettings = false,
  });

  // copyWith 方法
  SettingsState copyWith({
    ThemeMode? theme,
    FlexScheme? colorMode,
    AppLocale? locale,
    bool? minimizeToTray,
    bool? saveWindowPlacement,
    bool? autoStart,
    bool? autoStartLaunchHidden,
    bool? autoSyncToLocal,
    ContrastColorEnum? playBarFontColorMode,
    ContrastColorEnum? playerPageFontColorMode,
    AudioPlayerStyleEnum? playerPageStyle,
    String? destination,
    bool? isDownloadLyrics,
    bool? isDownloadCover,
    bool? isDownloadByMobile,
    bool? enableMessageBar,
    bool? enableAnimations,
    int? fadeInOutTime,
    bool? isSingleTrack,
    AudioQuality? audioQuality,
    AudioQuality? downloadQuality,
    DownloadFileFormatEnum? downloadFileFormat,
    bool? isAutoUpdate,
    bool? isUpdateRemind,
    bool? isEnableLoudnessEnhancer,
    double? loudnessEnhancerValue,
    bool? isEnableEqualizer,
    List<double>? equalizerValue,
    bool? isEnableAudioVisual,
    String? userAgent,
    ProxyTypeEnum? proxyType,
    String? proxyHost,
    int? proxyPort,
    String? proxyUsername,
    String? proxyPassword,
    bool? advancedSettings,
  }) {
    return SettingsState(
      theme: theme ?? this.theme,
      colorMode: colorMode ?? this.colorMode,
      locale: locale ?? this.locale,
      minimizeToTray: minimizeToTray ?? this.minimizeToTray,
      saveWindowPlacement: saveWindowPlacement ?? this.saveWindowPlacement,
      autoStart: autoStart ?? this.autoStart,
      autoStartLaunchHidden:
          autoStartLaunchHidden ?? this.autoStartLaunchHidden,
      autoSyncToLocal: autoSyncToLocal ?? this.autoSyncToLocal,
      playBarFontColorMode: playBarFontColorMode ?? this.playBarFontColorMode,
      playPageFontColorMode:
          playerPageFontColorMode ?? this.playPageFontColorMode,
      playerPageStyle: playerPageStyle??this.playerPageStyle,
      destination: destination ?? this.destination,
      isDownloadLyrics: isDownloadLyrics ?? this.isDownloadLyrics,
      isDownloadCover: isDownloadCover ?? this.isDownloadCover,
      isDownloadByMobile: isDownloadByMobile ?? this.isDownloadByMobile,
      enableMessageBar: enableMessageBar ?? this.enableMessageBar,
      enableAnimations: enableAnimations ?? this.enableAnimations,
      fadeInOutTime: fadeInOutTime ?? this.fadeInOutTime,
      isSingleTrack: isSingleTrack ?? this.isSingleTrack,
      audioQuality: audioQuality ?? this.audioQuality,
      downloadQuality: downloadQuality ?? this.downloadQuality,
      downloadFileFormat: downloadFileFormat ?? this.downloadFileFormat,
      isAutoUpdate: isAutoUpdate ?? this.isAutoUpdate,
      isUpdateRemind: isUpdateRemind ?? this.isUpdateRemind,
      isEnableLoudnessEnhancer:
          isEnableLoudnessEnhancer ?? this.isEnableLoudnessEnhancer,
      loudnessEnhancerValue:
          loudnessEnhancerValue ?? this.loudnessEnhancerValue,
      isEnableEqualizer: isEnableEqualizer ?? this.isEnableEqualizer,
      equalizerValue: equalizerValue ?? this.equalizerValue,
      isEnableAudioVisual: isEnableAudioVisual ?? this.isEnableAudioVisual,
      userAgent: userAgent ?? this.userAgent,
      proxyType: proxyType ?? this.proxyType,
      proxyHost: proxyHost ?? this.proxyHost,
      proxyPort: proxyPort ?? this.proxyPort,
      proxyUsername: proxyUsername ?? this.proxyUsername,
      proxyPassword: proxyPassword ?? this.proxyPassword,
      advancedSettings: advancedSettings ?? this.advancedSettings,
    );
  }

  // 初始化方法（默认构造函数）
  factory SettingsState.initial() {
    return SettingsState();
  }
}
