
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/dao/audio_info.dart';
import 'package:b_be_bee_app/model/dao/bili/bili_user.dart';
import 'package:b_be_bee_app/model/dao/collect_playlist.dart';
import 'package:b_be_bee_app/model/enum/audio_quality_enum.dart';
import 'package:b_be_bee_app/model/enum/audio_source_type_enum.dart';
import 'package:b_be_bee_app/model/enum/color_mode_enum.dart';
import 'package:b_be_bee_app/model/enum/download_file_format_enum.dart';
import 'package:b_be_bee_app/model/dao/download_state.dart';
import 'package:b_be_bee_app/provider/window_dimensions_provider.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../model/dao/play_statistics.dart';
import '../model/dao/upper.dart';
import '../model/dto/video/audio_play_item.dart';
import '../model/enum/bili_vip_label_enum.dart';
import '../model/enum/collect_type_enum.dart';
import '../model/enum/download_status_enum.dart';
import '../model/enum/repeat_mode_enum.dart';
import 'native/autostart_helper.dart';

const _commonBoxName = 'bbb_box';
const _collectsBoxName = 'bbb_collects_box';
const _audioBoxName = 'bbb_audio_box';
const _statisticsBoxName = 'bbb_statistics_box';

const _localeKey = 'bbb_locale';
const _themeKey = 'bbb_theme';
const _colorKey = 'bbb_color';
const _minimizeToTray = 'bbb_minimizeToTray';
const _destinationKey = 'bbb_destination';
const _downloadByMobileKey = 'bbb_downloadByMobile';
const _enableMessageBar = 'bbb_enableMessageBar';
const _enableAnimations = 'bbb_enableAnimations';
const _fadeInOutTime = 'bbb_fadeInOutTime';
const _singleTrack = 'bbb_singleTrack';
const _audioQuality = 'bbb_audioQuality';
const _downloadLyrics = 'bbb_downloadLyrics';
const _downloadCover = 'bbb_downloadCover';
const _downloadQuality = 'bbb_downloadQuality';
const _downloadFileFormat = 'bbb_downloadFileFormat';
const _advancedSettingsKey = 'bbb_advanced_settings';
const _autoStart = 'bbb_autoStart';
const _autoStartLaunchHidden = 'bbb_autoStartLaunchHidden';
const _autoSyncToLocal = 'bbb_autoSyncToLocal';
const _isAutoUpdate = 'bbb_isAutoUpdate';
const _isUpdateRemind = 'bbb_isUpdateRemind';
const _isEnableLoudnessEnhancer = 'bbb_is_enable_loudness_enhancer';
const _loudnessEnhancerValue = 'bbb_loudness_enhancer_value';
const _isEnableEqulizer = 'bbb_is_enable_equlizer';
const _enableEqulizerValue = 'bbb_enable_equlizer_value';

const _windowOffsetX = 'bbb_window_offset_x';
const _windowOffsetY = 'bbb_window_offset_y';
const _windowWidth = 'bbb_window_width';
const _windowHeight = 'bbb_window_height';
const _saveWindowPlacement = 'bbb_save_window_placement';

const _playlistVolume = 'bbb_playlist_volume';
const _playlistIsMuted = 'bbb_playlist_isMuted';
const _playlistPlayHistory = 'bbb_playlist_playHistory';
const _playlistCurrentPlaylist = 'bbb_playlist_currentPlaylist';
const _playlistRepeatMode = 'bbb_playlist_repeatMode';
const _playlistCurrentIndex = 'bbb_playlist_currentIndex';

const _userAgent = 'bbb_userAgent';

const _biliRefreshToken = 'bili_refresh_token';
const _biliRefreshTokenLastTime = 'bbb_refresh_token_last_time';
const _biliIsLogin = 'bili_is_login';
const _biliUsername = 'bili_username';
const _biliUserLevel = 'bili_user_level';
const _biliAvatarUrl = 'bili_avatar_url';
const _biliVip = 'bili_vip';

const _downloadState = 'bili_download';

class HiveHelper {
  static final Map<String, AudioInfo> _audiosCache = {};

  static late Box _box;
  static late Box<CollectPlaylist> _collectsBox;
  static late Box<AudioInfo> _audiosBox;
  static late Box<PlayStatistics> _statisticsBox;



  static Future<void> init() async {

    String docPath = path.join((await getApplicationDocumentsDirectory()).path, 'b_be_bee');
    Hive
      ..init(docPath)
      ..registerAdapter(CollectPlaylistAdapter()) //1
      ..registerAdapter(DownloadStatusEnumAdapter()) //2
      ..registerAdapter(DownloadStateAdapter()) //3
      ..registerAdapter(DownloadTaskAdapter()) //4
      ..registerAdapter(UpperAdapter())//5
      ..registerAdapter(AudioSourceTypeEnumAdapter()) //6
      ..registerAdapter(RepeatModeEnumAdapter()) //7
      ..registerAdapter(AudioPlayItemImplAdapter()) //8
      ..registerAdapter(AudioInfoImplAdapter()) //9
      ..registerAdapter(AudioQualityAdapter()) //10
      ..registerAdapter(CollectTypeEnumAdapter()) //11
      ..registerAdapter(PlayStatisticsAdapter()); //17



    _box = await Hive.openBox(_commonBoxName);
    _collectsBox = await Hive.openBox<CollectPlaylist>(_collectsBoxName);
    _audiosBox = await Hive.openBox<AudioInfo>(_audioBoxName);
    _statisticsBox = await Hive.openBox<PlayStatistics>(_statisticsBoxName);
  }

  ///common
  static Future<void> setWindowOffsetX(double x) async {
    await _box.put(_windowOffsetX, x);
  }

  static Future<void> setWindowOffsetY(double y) async {
    await _box.put(_windowOffsetY, y);
  }

  static Future<void> setWindowHeight(double height) async {
    await _box.put(_windowHeight, height);
  }

  static Future<void> setWindowWidth(double width) async {
    await _box.put(_windowWidth, width);
  }

  static WindowDimensions? getWindowLastDimensions() {
    Size? size;
    Offset? position;
    final offsetX = _box.get(_windowOffsetX);
    final offsetY = _box.get(_windowOffsetY);
    final width = _box.get(_windowWidth);
    final height = _box.get(_windowHeight);

    if (width != null && height != null) {
      size = Size(width, height);
    }

    if (offsetX != null && offsetY != null) {
      position = Offset(offsetX, offsetY);
    }

    if (size == null || position == null) {
      return null;
    }

    return WindowDimensions(
      position: position,
      size: size,
    );
  }

  static Future<void> setSaveWindowPlacement(bool savePlacement) async {
    await _box.put(_saveWindowPlacement, savePlacement);
  }

  static bool getSaveWindowPlacement() {
    if (!checkPlatformIsNotWaylandDesktop()) return false;
    return _box.get(_saveWindowPlacement) ?? true;
  }

  static bool isMinimizeToTray() {
    return _box.get(_minimizeToTray) ?? false;
  }

  static Future<void> setMinimizeToTray(bool minimizeToTray) async {
    await _box.put(_minimizeToTray, minimizeToTray);
  }

  ///setting
  static Future<void> setLocale(AppLocale? locale) async {
    if (locale == null) {
      await _box.delete(_localeKey);
    } else {
      await _box.put(_localeKey, locale.languageTag);
    }
  }

  static Future<AppLocale?> getLocale() async {
    final value = _box.get(_localeKey);
    if (value == null) {
      await LocaleSettings.useDeviceLocale();
      return null;
    } else {
      final local = AppLocale.values.firstWhere((locale) => locale.languageTag == value);
      await LocaleSettings.setLocaleRaw(local.languageCode);
      return local;
    }
  }

  static ThemeMode? getTheme() {
    final value = _box.get(_themeKey);
    if (value == null) {
      return null;
    }
    return ThemeMode.values.firstWhere((theme) => theme.name == value);
  }

  static Future<void> setTheme(ThemeMode? theme) async {
    if (theme == null) {
      await _box.delete(_themeKey);
    } else {
      await _box.put(_themeKey, theme.name);
    }
  }

  static ColorModeEnum? getColorMode() {
    final value = _box.get(_colorKey);
    if (value == null) {
      return null;
    }
    return ColorModeEnum.values.firstWhere((color) => color.name == value);
  }

  static Future<void> setColorMode(ColorModeEnum? color) async {
    if (color == null) {
      await _box.delete(_colorKey);
    } else {
      await _box.put(_colorKey, color.name);
    }
  }

  static String? getDestination() {
    return _box.get(_destinationKey);
  }

  static Future<void> setDestination(String? destination) async {
    if (destination == null) {
      await _box.delete(_destinationKey);
    } else {
      await _box.put(_destinationKey, destination);
    }
  }

  static bool? isDownloadLyrics() {
    return _box.get(_downloadLyrics);
  }

  static Future<void> setDownloadLyrics(bool downloadLyrics) async {
    await _box.put(_downloadLyrics, downloadLyrics);
  }

  static bool? isDownloadCover() {
    return _box.get(_downloadCover);
  }

  static Future<void> setDownloadCover(bool downloadCover) async {
    await _box.put(_downloadCover, downloadCover);
  }


  static bool? getDownloadByMobile() {
    return _box.get(_downloadByMobileKey);
  }

  static Future<void> setDownloadByMobile(bool downloadByMobile) async {
    await _box.put(_downloadByMobileKey, downloadByMobile);
  }

  static bool? getEnableMessageBar() {
    return _box.get(_enableMessageBar);
  }

  static Future<void> setEnableMessageBar(bool enableMessageBar) async {
    await _box.put(_enableMessageBar, enableMessageBar);
  }

  static bool? getEnableAnimations() {
    return _box.get(_enableAnimations);
  }

  static Future<void> setEnableAnimations(bool enableAnimations) async {
    await _box.put(_enableAnimations, enableAnimations);
  }

  static int? getFadeInOutTime() {
    return _box.get(_fadeInOutTime);
  }

  static Future<void> setFadeInOutTime(int fadeInOutTime) async {
    await _box.put(_fadeInOutTime, fadeInOutTime);
  }

  static bool? getIsSingleTrack() {
    return _box.get(_singleTrack);
  }

  static Future<void> setIsSingleTrack(bool isSingleTrack) async {
    await _box.put(_singleTrack, isSingleTrack);
  }

  static AudioQuality? getAudioQuality() {
    int? index = _box.get(_audioQuality);
    if (index != null && index >= 0 && index < AudioQuality.values.length) {
      return AudioQuality.values[index];
    }
    return AudioQuality.hiRes;
  }

  static Future<void> setAudioQuality(AudioQuality? audioQuality) async {
    if (audioQuality == null) {
      await _box.delete(_audioQuality);
    } else {
      await _box.put(_audioQuality, audioQuality.index);
    }
  }

  static AudioQuality? getDownloadQuality() {
    int? index = _box.get(_downloadQuality);
    if (index != null && index >= 0 && index < AudioQuality.values.length) {
      return AudioQuality.values[index];
    }
    return AudioQuality.hiRes;
  }

  static Future<void> setDownloadQuality(AudioQuality? downloadQuality) async {
    if (downloadQuality == null) {
      await _box.delete(_downloadQuality);
    } else {
      await _box.put(_downloadQuality, downloadQuality.index);
    }
  }

  static DownloadFileFormatEnum? getDownloadFileFormat() {
    return _box.get(_downloadFileFormat);
  }

  static Future<void> setDownloadFileFormat(DownloadFileFormatEnum? downloadFileFormat) async {
      await _box.put(_downloadFileFormat, downloadFileFormat);
  }

  static Future<bool?> getAutoStart() async {
    final isAutoStart =  _box.get(_autoStart);
    if(isAutoStart == null || isAutoStart){
      await enableAutoStart(startHidden: getAutoStartLaunchHidden());
    }
    return isAutoStart;
  }

  static Future<void> setAutoStart(bool autoStart) async {
    await _box.put(_autoStart, autoStart);
  }

  static bool getAutoStartLaunchHidden() {
    final isHidden =  _box.get(_autoStartLaunchHidden,defaultValue: false);
    return isHidden;
  }

  static Future<void> setAutoStartLaunchHidden(bool autoStartLaunchHidden) async {
    await _box.put(_autoStartLaunchHidden, autoStartLaunchHidden);
  }

  static bool? isAutoUpdate(){
    final isAutoUpdate =  _box.get(_isAutoUpdate,defaultValue: true);
    return isAutoUpdate;
  }

  static Future<void> setIsAutoUpdate(bool isAutoUpdate) async {
    await _box.put(_isAutoUpdate, isAutoUpdate);
  }

  static bool? isUpdateRemind(){
    final isUpdateRemind =  _box.get(_isUpdateRemind,defaultValue: true);
    return isUpdateRemind;
  }

  static Future<void> setIsUpdateRemind(bool isUpdateRemind) async {
    await _box.put(_isUpdateRemind, isUpdateRemind);
  }

  static bool? isEnableLoudnessEnhancer(){
    final isEnableLoudnessEnhancer =  _box.get(_isEnableLoudnessEnhancer);
    print('isEnableLoudnessEnhancer: $isEnableLoudnessEnhancer');
    return isEnableLoudnessEnhancer;
  }

  static Future<void> setEnableLoudnessEnhancer(bool isEnableLoudnessEnhancer) async {
    print('isEnableLoudnessEnhancer: $isEnableLoudnessEnhancer');
    await _box.put(_isEnableLoudnessEnhancer, isEnableLoudnessEnhancer);
  }

  static double? getLoudnessEnhancerValue(){
    final getLoudnessEnhancerValue = _box.get(_loudnessEnhancerValue);
    print('getLoudnessEnhancerValue: $getLoudnessEnhancerValue');
    return  getLoudnessEnhancerValue;
  }

  static Future<void> setLoudnessEnhancerValue(double loudnessEnhancerValue) async {
    print('getLoudnessEnhancerValue: $loudnessEnhancerValue');
    await _box.put(_loudnessEnhancerValue, loudnessEnhancerValue);
  }

  static bool? isEnableEqualizer(){
    return _box.get(_isEnableEqulizer);
  }

  static Future<void> setIsEnableEqualizer(bool isEnableEqualizer) async {
    await _box.put(_isEnableEqulizer, isEnableEqualizer);
  }

  static List<double>? getEnableEqualizerValue(){
    final dynamicList = _box.get(_enableEqulizerValue);

    if (dynamicList == null) {
      return null;
    }

    return dynamicList.cast<double>();
  }

  static Future<void> setEqualizerValue(List<double> enableEqualizerValue) async {
    await _box.put(_enableEqulizerValue, enableEqualizerValue);
  }


  static bool? getAdvancedSettingsEnabled() {
    return _box.get(_advancedSettingsKey);
  }

  static Future<void> setAdvancedSettingsEnabled(bool isEnabled) async {
    await _box.put(_advancedSettingsKey, isEnabled);
  }

  static bool? getAutoSyncToLocal() {
    return _box.get(_autoSyncToLocal);
  }

  static Future<void> setAutoSyncToLocal(bool autoSyncToLocal) async {
    await _box.put(_autoSyncToLocal, autoSyncToLocal);
  }



  static bool getIsMuted() {
    return _box.get(_playlistIsMuted,defaultValue:false) ;
  }

  static Future<void> setIsMuted(bool isMuted) async {
    await _box.put(_playlistIsMuted, isMuted);
  }

  static double getVolume() {
    return _box.get(_playlistVolume,defaultValue: 1.0);
  }

  static Future<void> setVolume(double volume) async {
    await _box.put(_playlistVolume, volume);
  }

  static Future<void> setPlaylistPlayHistory(List<AudioInfo> audioList) async {
    await _box.put(_playlistPlayHistory, audioList);
  }

  static List<AudioInfo> getPlaylistPlayHistory() {
    final allAudios = _box.get(_playlistPlayHistory);
    if (allAudios is List) {
      return allAudios.map((audio) {
        if (audio is AudioInfo) {
          return audio;
        } else {
          throw Exception('Invalid audio type in playlist');
        }
      }).toList();
    }
    return [];
  }

  static Future<void> setCurrentPlaylist(List<AudioInfo> playlist) async {
    await _box.put(_playlistCurrentPlaylist, playlist);
  }

  static List<AudioInfo> getCurrentPlaylist() {
    final allAudios = _box.get(_playlistCurrentPlaylist);

    if (allAudios is List) {
      return allAudios.map((audio) {
        if (audio is AudioInfo) {
          return audio;
        } else {
          throw Exception('Invalid audio type in playlist');
        }
      }).toList();
    }

    return [];
  }

  static Future<void> setRepeatMode(RepeatModeEnum mode) async {
    await _box.put(_playlistRepeatMode, mode.index);
  }

  static RepeatModeEnum getRepeatMode() {
    final index = _box.get(_playlistRepeatMode, defaultValue: 0);
    return RepeatModeEnum.values[index];
  }

  static Future<void> setCurrentIndex(int index) async {
    await _box.put(_playlistCurrentIndex, index);
  }

  static int getCurrentIndex() {
    return _box.get(_playlistCurrentIndex, defaultValue: 0);
  }



  /// collects playlist 收藏夹
  static Future<void> saveCollectsPlaylist(CollectPlaylist playlist) async {
    await _collectsBox.put(playlist.id, playlist);
  }

  static CollectPlaylist? getCollectsPlaylist(String id) {
    try{
      return _collectsBox.get(id);
    }catch(e){
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }

  static List<CollectPlaylist> getCollectsPlaylistsByIds(List<String> ids) {
    return ids
        .map((id) => _collectsBox.get(id))
        .whereType<CollectPlaylist>()
        .map((playlist) => playlist.copyWith(songs: HiveHelper.getAudioInfoList(playlist.songIds)))
        .toList();
  }

  static Future<void> deleteColllectsPlaylistById(String id) async {
    await _collectsBox.delete(id);
  }

  static Future<void> setCollectsPlaylistIds(List<String> ids) async{
    await _box.put('ids', ids);
  }

  static List<String> getCollectsPlaylistIds() {
    return _box.get('ids');
  }


  /// audios
  static AudioInfo? _getAudioFromCacheOrBox(String id)  {

    if (_audiosCache.containsKey(id)) {
      return _audiosCache[id];
    }

    final audio = _audiosBox.get(id);

    if (audio != null) {
      _audiosCache[id] = audio;
    }

    return audio;
  }

  // 保存到缓存和Hive
  static Future<void> _saveAudioToAll(AudioInfo audio) async {
    _audiosCache[audio.id] = audio;
    await _audiosBox.put(audio.id, audio);
  }

  // 保存单个音频
  static Future<void> saveAudioInfo(AudioInfo audioInfo) async {
    await _saveAudioToAll( audioInfo);
  }

  // 不存在时 或 hive中当前类型不为 local 时保存
  static Future<void> saveAudioInfoIfNotExists(AudioInfo audioInfo) async {

    if (!_audiosCache.containsKey(audioInfo.id) || _getAudioFromCacheOrBox(audioInfo.id)?.audioCurrentType != AudioSourceTypeEnum.local) {
      if (!_audiosBox.containsKey(audioInfo.id) || _audiosBox.get(audioInfo.id)?.audioCurrentType != AudioSourceTypeEnum.local) {
        await _saveAudioToAll( audioInfo);
      }
    }
  }

  // 批量保存音频
  static Future<void> saveAudioInfoList(List<AudioInfo> audioList) async {
    final Map<String, AudioInfo> entries = {};

    for (var audio in audioList) {
      entries[audio.id] = audio;
      _audiosCache[audio.id] = audio;
    }

    await _audiosBox.putAll(entries);
  }

  // 批量保存音频,不存在时保存
  static Future<void> saveAudioInfoListIfNotExists(List<AudioInfo> audioList) async {

    for (var audio in audioList) {
      if (!_audiosCache.containsKey(audio.id) || _getAudioFromCacheOrBox(audio.id)?.audioCurrentType != AudioSourceTypeEnum.local) {
        if (!_audiosBox.containsKey(audio.id) || _audiosBox.get(audio.id)?.audioCurrentType != AudioSourceTypeEnum.local) {
          await _saveAudioToAll( audio);
        }
      }
    }
  }

  // 获取单个音频
  static AudioInfo? getAudioInfo(String id) {
    return _getAudioFromCacheOrBox(id);
  }

  // 获取多个音频
  static List<AudioInfo> getAudioInfoList(List<String> ids) {
    final results =  ids.map((id) => _getAudioFromCacheOrBox(id));
    return results.whereType<AudioInfo>().toList();
  }

  // 更新音频信息
  static Future<void> updateAudioInfo(AudioInfo audioInfo) async {
    await _saveAudioToAll(audioInfo);
  }

  // 删除音频
  static Future<void> deleteAudioInfo(String id) async {
    _audiosCache.remove(id);
    await _audiosBox.delete(id);
  }

  // 批量删除音频
  static Future<void> deleteAudioInfoList(List<String> ids) async {
    for (var id in ids) {
      _audiosCache.remove(id);
    }
    await _audiosBox.deleteAll(ids);
  }

  // 检查音频是否存在
  static Future<bool> isAudioExists(String id) async {
    if (_audiosCache.containsKey(id)) return true;
    return _audiosBox.containsKey(id);
  }

  // 获取所有音频
  static List<AudioInfo> getAllAudioInfo()  {
    final allAudios = _audiosBox.values.toList();

    for (var audio in allAudios) {
      _audiosCache[audio.id] = audio;
    }

    return allAudios;
  }


  /// Bili
  static String? getBiliRefreshToken() {
    return _box.get(_biliRefreshToken, defaultValue: null);
  }

  static Future<void> setBiliRefreshToken(String token) async {
    await _box.put(_biliRefreshToken, token);
  }

  static int getBiliRefreshTokenLastTime(){
    return _box.get(_biliRefreshTokenLastTime,defaultValue: 0);
  }

  static Future<void> setBiliRefreshTokenLastTime(int timestamp)async{
    await _box.put(_biliRefreshTokenLastTime, timestamp);
  }

  static BiliUser getLocalBiliUser() {
    bool isLogin = _box.get(_biliIsLogin, defaultValue: false);
    String username = _box.get(_biliUsername, defaultValue: '');
    int userLevel = _box.get(_biliUserLevel, defaultValue: 0);
    String avatarUrl = _box.get(_biliAvatarUrl, defaultValue: '');
    BiliVipLabelEnum vip = BiliVipLabelEnum.values[_box.get(_biliVip, defaultValue: 0)];

    return BiliUser(
      isLogin: isLogin,
      username: username,
      userLevel: userLevel,
      avatarUrl: avatarUrl,
      vip: vip,
    );
  }

  static Future<void> setLocalBiliUser(BiliUser biliUser) async {
    await _box.put(_biliIsLogin, biliUser.isLogin);
    await _box.put(_biliUsername, biliUser.username);
    await _box.put(_biliUserLevel, biliUser.userLevel);
    await _box.put(_biliAvatarUrl, biliUser.avatarUrl);
    await _box.put(_biliVip, biliUser.vip.index);
  }

  /// network
  static String? getUserAgent() {
    return _box.get(_userAgent);
  }

  static Future<void> setUserAgent(String? userAgent) async {
    if (userAgent == null) {
      await _box.delete(_userAgent);
    } else {
      await _box.put(_userAgent, userAgent);
    }
  }

  /// statistics
  static Map<String, PlayStatistics> getStatistics() {
    final Map<String, PlayStatistics> stats = {};
    for (var key in _statisticsBox.keys) {
      final stat = _statisticsBox.get(key);
      if (stat != null) {
        stats[stat.id] = stat;
      }
    }
    return stats;
  }

  static Future<void> setStatistics(PlayStatistics playStatistics) async{
    await _statisticsBox.put(playStatistics.id, playStatistics);
  }

  static Future<void> clearStatisticsById(String id)async{
    await _statisticsBox.delete(id);
  }

  /// download
  static DownloadState? getDownloadState(){
    return _box.get(_downloadState);
  }

  static Future<void> setDownloadState(DownloadState downloadState) async {
    await _box.put(_downloadState, downloadState);
  }


  /// clean
  static Future<void> clearSettings() async {
    await _box.clear();
  }

  static Future<void> clearCollectPlaylists() async {
    await _collectsBox.clear();
  }

  static Future<void> clearAudios() async {
    _audiosCache.clear();
    await _audiosBox.clear();
  }

  static Future<void> clearStatistics()async{
    await _statisticsBox.clear();
  }
}

