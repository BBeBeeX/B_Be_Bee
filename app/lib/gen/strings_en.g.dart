///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get locale => 'English';
  String get appName => 'b_be_bee';
  late final TranslationsGeneralEn general = TranslationsGeneralEn.internal(_root);
  late final TranslationsControllerEn controller = TranslationsControllerEn.internal(_root);
  late final TranslationsBiliPageEn biliPage = TranslationsBiliPageEn.internal(_root);
  late final TranslationsSearchPageEn searchPage = TranslationsSearchPageEn.internal(_root);
  late final TranslationsSettingsPageEn settingsPage = TranslationsSettingsPageEn.internal(_root);
  late final TranslationsAudioPageEn audioPage = TranslationsAudioPageEn.internal(_root);
  late final TranslationsBatchPageEn batchPage = TranslationsBatchPageEn.internal(_root);
  late final TranslationsCollectsPageEn collectsPage = TranslationsCollectsPageEn.internal(_root);
  late final TranslationsDownloadPageEn downloadPage = TranslationsDownloadPageEn.internal(_root);
  late final TranslationsHomePageEn homePage = TranslationsHomePageEn.internal(_root);
  late final TranslationsAudioPlayerPageEn audioPlayerPage = TranslationsAudioPlayerPageEn.internal(_root);
  late final TranslationsPlaylistPageEn playlistPage = TranslationsPlaylistPageEn.internal(_root);
  late final TranslationsUtilsEn utils = TranslationsUtilsEn.internal(_root);
  late final TranslationsWidgetEn widget = TranslationsWidgetEn.internal(_root);
  late final TranslationsSharePageEn sharePage = TranslationsSharePageEn.internal(_root);
  late final TranslationsScanPageEn scanPage = TranslationsScanPageEn.internal(_root);
  late final TranslationsLocalPageEn localPage = TranslationsLocalPageEn.internal(_root);
  late final TranslationsModelEn model = TranslationsModelEn.internal(_root);
  late final TranslationsCommonEn common = TranslationsCommonEn.internal(_root);
  late final TranslationsAboutPageEn aboutPage = TranslationsAboutPageEn.internal(_root);
  late final TranslationsChangelogPageEn changelogPage = TranslationsChangelogPageEn.internal(_root);
  late final TranslationsTrayEn tray = TranslationsTrayEn.internal(_root);
}

// Path: general
class TranslationsGeneralEn {
  TranslationsGeneralEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get add => 'Add';
  String get advanced => 'Advanced';
  String get cancel => 'Cancel';
  String get close => 'Close';
  String get confirm => 'Confirm';
  String get continueStr => 'Continue';
  String get copy => 'Copy';
  String get copiedToClipboard => 'Copied to Clipboard';
  String get decline => 'Decline';
  String get done => 'Done';
  String get delete => 'Delete';
  String get edit => 'Edit';
  String get error => 'Error';
  String get files => 'Files';
  String get finished => 'Finished';
  String get hide => 'Hide';
  String get off => 'Off';
  String get on => 'On';
  String get open => 'Open';
  String get queue => 'Queue';
  String get reset => 'Undo changes';
  String get restart => 'Restart';
  String get settings => 'Settings';
  String get skipped => 'Skipped';
  String get start => 'Start';
  String get stop => 'Stop';
  String get save => 'Save';
  String get unknown => 'Unknown';
  String get noItemInClipboard => 'No items in Clipboard.';
  String get login => 'Login';
  String get longLogin => '   Login   ';
  String get networkError => 'Network error';
  String get loginSuccess => 'Login successful!';
  String get account => 'Account';
  String get inputAccount => 'Please enter your account';
  String get password => 'Password';
  String get inputPassword => 'Please enter your password';
  String get passwordLogin => 'Password login';
  String get regionCode => 'Region/Country code';
  String get phoneNumber => 'Phone number';
  String get captcha => 'Captcha';
  String get inputCaptcha => 'Please enter the captcha';
  String get getCaptcha => 'Get captcha';
  String get retry => 'Retry';
  String get playAll => 'Play all';
  String get more => 'More';
  String get allVideos => 'All videos';
  String get deselectAll => 'Deselect All';
  String get selectAll => 'Select All';
  String get addTo => 'Add to';
  String get download => 'Download';
  String get noAvailableNow => 'No content available now';
  String get favorite => 'Favorite';
  String get cancelCollection => 'Cancel Favorite';
  String get unnamedPlaylist => 'Unnamed Playlist';
  String get unnamedVideo => 'Unnamed Video';
  String get unknownUser => 'Unknown User';
  String loadFail({required Object error}) => 'Loading failed: ${error}';
  String get play => 'Play';
  String get playAndPause => 'Pause/Play';
  String get next => 'Next';
  String get previous => 'Previous';
  String get nextPlay => 'Next Play';
  String get changePlayMode => 'Switching playback modes';
  String get volumeUp => 'Turn up the volume';
  String get volumeDown => 'Turn down the volume';
  String get share => 'Sharing';
  String get back => 'Return';
  String get synchronized => 'Synchronized';
  String get synchronizedFailed => 'Synchronization failed';
  String get quit => 'Quit';
  String get about => 'About';
}

// Path: controller
class TranslationsControllerEn {
  TranslationsControllerEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsControllerBiliEn bili = TranslationsControllerBiliEn.internal(_root);
  String get downloadingSelectedSongs => 'Downloading selected songs...';
  String get myLikeSongs => 'My favorite music';
  String get localPlaylistNotExist => 'Local playlist does not exist';
  String get playlistNotExist => 'Playlist does not exist';
  String get collectsPageParamsAssert =>
      'Collection mode requires collectId, collection mode requires seasonId, series mode requires seriesId, playlist mode requires playlistInfo';
  String get loadDataError => 'Failed to load data';
  String get fileFormatConversionError => 'File format conversion error';
  String get setRingtone => 'Setting ringtone...';
  String get setRingtoneFailedForCopyingFileError => 'Failed to set ringtone, file copy error';
  String get setRingtoneFailed => 'Failed to set ringtone, please try again';
  String get setRingtoneSuccess => 'Ringtone set successfully';
  String get switchQualityError => 'Failed to switch quality';
  String currentPlaying({required Object label}) => 'Currently playing: ${label}';
  String get timerExpiresStopMusic => 'Timer expired, stopping music playback';
  String get loadFolderFail => 'Failed to load folder';
}

// Path: biliPage
class TranslationsBiliPageEn {
  TranslationsBiliPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get musicRank => 'Music Ranking';
  String currentPeriod({required Object currentPeriod}) => 'Period ${currentPeriod}';
  String get biliTipsText1 => 'Login to your Bilibili account to access higher quality resources';
  String get biliTipsText2 => 'It is recommended to save resources locally, so you can use them along with other resources';
  String get biliTipsText3 => 'If you enjoy the experience of this app, consider sharing it with your friends';
  String get upperNoResourceHead => 'UP Master Page';
  String get upperNoResourceTitle => 'Resource unavailable';
  String get upperNoResourceDescribe => 'UP Master ID cannot be empty';
}

// Path: searchPage
class TranslationsSearchPageEn {
  TranslationsSearchPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get wantHear => 'What do you want to listen to?';
  String get searchPageTipsText1 => 'Play your favorite content';
  String get searchPageTipsText2 => 'Millions of songs, search for the music you want to listen to';
}

// Path: settingsPage
class TranslationsSettingsPageEn {
  TranslationsSettingsPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Settings';
  late final TranslationsSettingsPageGeneralEn general = TranslationsSettingsPageGeneralEn.internal(_root);
  late final TranslationsSettingsPagePlayEn play = TranslationsSettingsPagePlayEn.internal(_root);
  late final TranslationsSettingsPageDownloadEn download = TranslationsSettingsPageDownloadEn.internal(_root);
  late final TranslationsSettingsPageNetworkEn network = TranslationsSettingsPageNetworkEn.internal(_root);
  late final TranslationsSettingsPageAccountEn account = TranslationsSettingsPageAccountEn.internal(_root);
  late final TranslationsSettingsPageOtherEn other = TranslationsSettingsPageOtherEn.internal(_root);
  String get advancedSettings => 'Advanced Settings';
}

// Path: audioPage
class TranslationsAudioPageEn {
  TranslationsAudioPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get noSongsPlaying => 'No songs are playing';
}

// Path: batchPage
class TranslationsBatchPageEn {
  TranslationsBatchPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String selectNum({required Object length}) => 'Selected ${length} items';
}

// Path: collectsPage
class TranslationsCollectsPageEn {
  TranslationsCollectsPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'My Playlists';
  String get createCollects => 'Create Playlist';
  String get biliCollectsTitle => 'BiliBili Collection';
  String get biliSeasonTitle => 'BiliBili Season';
  String get biliSeriesTitle => 'BiliBili Series';
  String get playlistTitle => 'Playlist';
  String get localTitle => 'Local Collection';
  String get localAudiosTitle => 'Local audio files';
  String get addToCollectsSuccess => 'Playlist added successfully';
  String playAllMedias({required Object length}) => 'Play all (${length})';
  String get defaultSort => 'Default Sort';
  String get songTitleSort => 'Sort by Song Name A-Z';
  String get singerNameSort => 'Sort by Singer Name A-Z';
  String get searchCurrentCollect => 'Search within this collection';
  String get inputKeyWord => 'Enter keywords to search for videos or up owners';
  String get noSearchData => 'No related content found';
}

// Path: downloadPage
class TranslationsDownloadPageEn {
  TranslationsDownloadPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Download Management';
  String get fileLoss => 'File lost';
  String get error => 'Download failed';
  String get canceled => 'Cancelled';
  String get pending => 'Waiting to download';
  String get downloading => 'Downloading';
  String get downloadSuccess => 'Download completed';
  String get converting => 'Converting';
  String get convertSuccess => 'Conversion completed';
  String get image => 'Download cover';
  String get imageSuccess => 'Cover download completed';
  String get completed => 'Completed';
}

// Path: homePage
class TranslationsHomePageEn {
  TranslationsHomePageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Home';
  String get scanQr => 'Scan QR code';
  String get clipboard => 'Import from clipboard';
  String get clipboardNull => 'The clipboard is empty';
  String get textFormatException => 'Text format exception';
}

// Path: audioPlayerPage
class TranslationsAudioPlayerPageEn {
  TranslationsAudioPlayerPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get song => 'The song';
  String get lyrics => 'Lyrics';
}

// Path: playlistPage
class TranslationsPlaylistPageEn {
  TranslationsPlaylistPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get playlist => 'Playlist';
  String get playlistHistory => 'Playback History';
  String get playlistNull => 'Playlist is empty';
  String get playlistHistoryNull => 'No playback history';
}

// Path: utils
class TranslationsUtilsEn {
  TranslationsUtilsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get noBiliApp => 'No Bilibili-related app installed on this device';
  String get storagePermissionDenied => 'Storage permission denied';
  String get needPermission => 'This app requires storage permission to access audio files. Please grant the permission.';
  String toHourMinute({required Object hour, required Object minute}) => '${hour} hours ${minute} minutes';
  String toMinute({required Object minute}) => '${minute} minutes';
  String dayBefore({required Object day}) => '${day} days ago';
  String weekBefore({required Object week}) => '${week} weeks ago';
  String yyyyMMDD({required Object month, required Object day, required Object year}) => ' ${month} Month ${day} Day ${year} Year ';
  String get clipboardText => 'Clipboard contents';
  String get downloading => 'Downloading';
  String get downloadFFmpegSuccess => 'Download FFmpeg successfully';
  String get downloadFFmpegFailed => 'Failed to download FFmpeg';
  String get downloadingFFmpeg => 'Downloading FFmpeg';
  String get newCollect => 'New collection';
}

// Path: widget
class TranslationsWidgetEn {
  TranslationsWidgetEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get biliMusicRank => 'Bilibili Music Rank';
  String get noDataNow => 'No data available';
  String myCreateCollectsNum({required Object count}) => 'My created collections (${count} items)';
  String videosNum({required Object count}) => '${count} videos';
  String get noCollects => 'No collections available';
  String get myCreateCollects => 'My created collections';
  String get mySubscribe => 'My subscribed collections';
  String get seeLater => 'Watch later';
  String mySubscribeNum({required Object count}) => 'My subscribed collections (${count} items)';
  String seeLaterNum({required Object count}) => 'Watch later (${count} items)';
  String get clickToLoginBili => 'Click to log in to Bilibili account';
  String get addToPlaylist => 'Add to playlist';
  String get addToCollects => 'Add to collection';
  String get enterNewValue => 'Enter a new value';
  String get removeCollect => 'Remove collection';
  String removeCollectConfirm({required Object title}) => 'Are you sure you want to delete the collection ${title}?';
  String get renameCollect => 'Rename collection';
  String get collectName => 'Collection name';
  String get inputCollectName => 'Please enter collection name';
  String get createCollect => 'Create collection';
  String get create => 'Create';
  String audiosNum({required Object count}) => '${count} songs';
  String get saveTo => 'Save to';
  String get mostRelevant => 'Most relevant';
  String removeFrom({required Object title}) => 'Removed from ${title}';
  String addTo({required Object title}) => 'Added to ${title}';
  String get pin => 'Pin';
  String get cancelPin => 'Unpin';
  String get rename => 'Rename';
  String downloadingTitle({required Object title}) => 'Downloading ${title}';
  String copyToClipboard({required Object name}) => 'Copy ${name} to clipboard';
  String get removeFromFav => 'Remove from liked songs';
  String get addToFav => 'Add to liked songs';
  String get removeFromThis => 'Remove from this playlist';
  String get jumpToUpper => 'Go to Upper';
  String get setSleepTimer => 'Set sleep timer';
  String sleepTimerTime({required Object minute}) => 'Sleep timer - ${minute} minutes remaining';
  String get closeSleepTimer => 'Close timer';
  String get setRingtone => 'Set as ringtone';
  String get playSetting => 'Playback settings';
  String get quality => 'Audio quality';
  String get playStyle => 'Player style';
  String get sourceAudio => 'Original video';
  String get hasLogin => 'Already logged in';
  String get noLogin => 'Not logged in';
  String get logout => 'Log out';
  String get noLyrics => 'This song currently has no lyrics';
  String get loginBiliBili => 'Login BiliBili';
  String get qrcodeLogin => 'Scan the code to login';
  String get webLogin => 'Web login';
  String get searchCollect => 'Search playlist';
  String get library => 'Library';
}

// Path: sharePage
class TranslationsSharePageEn {
  TranslationsSharePageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get copyLink => 'Copy Link';
  String get copyFail => 'Copy Failed';
  String get saveImage => 'Save Image';
  String get shareFail => 'Share Failed';
  String get linkCopy => 'Link Copied';
  String get saveImageToGallery => 'Image Saved to Gallery';
  String get saveFail => 'Save Failed';
}

// Path: scanPage
class TranslationsScanPageEn {
  TranslationsScanPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get scan => 'Scan';
  String get invalidQrCode => 'Invalid QR code';
  String get scanFailed => 'Scan code failed';
  String get noQrCodeFound => 'No QR code found';
}

// Path: localPage
class TranslationsLocalPageEn {
  TranslationsLocalPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Local';
  String get addFolder => 'Add Folder';
  String get noAudioFiles => 'No audio files';
}

// Path: model
class TranslationsModelEn {
  TranslationsModelEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get all => 'All';
  String get user => 'User';
  String get video => 'Video';
  String get unknown => 'Unknown';
  String get lowQuality => 'Low quality';
  String get standardQuality => 'Standard Quality';
  String get highQuality => 'High quality';
  String get dolby => 'Dolby Atmos';
  String get hiRes => 'Hi-Res lossless';
  String get passwordLogin => 'Password login';
  String get smsLogin => 'SMS login';
  String get qrcodeLogin => 'Scan the code to login';
  String get webLogin => 'Web login';
  String get free => 'None';
  String get vip => 'Big Member';
  String get annualVip => 'Annual Major Member';
  String get tenannualVip => 'The \'Ten Year Big Member';
  String get hundredannual => 'Centennial Member';
  String get repeatModelNone => 'Sequential playback';
  String get repeatModelOne => 'Single Loop';
  String get repeatModelAll => 'List Loop';
  String get repeatModelRandom => 'Random Play';
  String get sortMethodDefault => 'Default sorting';
  String get sortMethodTitleAZ => 'According to song names A-Z';
  String get sortMethodArtistAZ => 'According to singer names A-Z';
  String get sortMethodRecentPlay => 'Recently played';
  String get sortMethodAlphabet => 'Sort alphabetically';
}

// Path: common
class TranslationsCommonEn {
  TranslationsCommonEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsCommonBiliErrorEn biliError = TranslationsCommonBiliErrorEn.internal(_root);
  late final TranslationsCommonCountryEn country = TranslationsCommonCountryEn.internal(_root);
}

// Path: aboutPage
class TranslationsAboutPageEn {
  TranslationsAboutPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'About b_be_bee';
  List<String> get description => [
        'b_be_bee is a free, open_source app that allows you to securely share files and messages with nearby devices over your local network without needing an internet connection.',
        'This app is available on Android, iOS, macOS, Windows and Linux. You can find all download options on the official homepage.',
      ];
  String get author => 'Author';
  String get contributors => 'Contributors';
  String get packagers => 'Packagers';
  String get translators => 'Translators';
}

// Path: changelogPage
class TranslationsChangelogPageEn {
  TranslationsChangelogPageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Changelog';
}

// Path: tray
class TranslationsTrayEn {
  TranslationsTrayEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get open => _root.general.open;
  String get close => 'Quit B Be Bee';
  String get closeWindows => 'Exit';
}

// Path: controller.bili
class TranslationsControllerBiliEn {
  TranslationsControllerBiliEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsControllerBiliLoginEn login = TranslationsControllerBiliLoginEn.internal(_root);
  String get noRankData => 'No ranking data available';
  String get getUserDataError => 'Error retrieving user data';
  String get loadBiliAudioFail => 'Failed to load BiliBili audio resources';
}

// Path: settingsPage.general
class TranslationsSettingsPageGeneralEn {
  TranslationsSettingsPageGeneralEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'General';
  String get language => 'Language';
  late final TranslationsSettingsPageGeneralLanguageOptionsEn languageOptions = TranslationsSettingsPageGeneralLanguageOptionsEn.internal(_root);
  String get saveWindowPlacement => 'Save window position on exit';
  String get saveWindowPlacementWindows => 'Save window position when leaving';
  String get minimizeToTray => 'Minimize to system tray on close';
  String get launchAtStartup => 'Launch the app automatically after login';
  String get launchMinimized => 'Launch minimized to taskbar';
  String get enableMessageBar => 'Enable message bar';
  String get autoSyncPlaylist => 'Auto-sync playlist (sync local and original playlists)';
  String get animations => 'Animations';
}

// Path: settingsPage.play
class TranslationsSettingsPagePlayEn {
  TranslationsSettingsPagePlayEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Playback';
  String get fadeInOutTime => 'Fade In/Out Time';
  String get playQuality => 'Playback Quality';
}

// Path: settingsPage.download
class TranslationsSettingsPageDownloadEn {
  TranslationsSettingsPageDownloadEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Download';
  String get downloadLyrics => 'Simultaneously downloading lyrics';
  String get downloadCover => 'Simultaneously downloading songs cover';
  String get downloadQuality => 'Download Quality';
  String get downloadByMobile => 'Download via mobile data';
  String get downloadFileFormat => 'Download file format';
  String get downloadDestination => 'File save location';
}

// Path: settingsPage.network
class TranslationsSettingsPageNetworkEn {
  TranslationsSettingsPageNetworkEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Network';
  String get support => 'Support b_be_bee';
  String get donate => 'Donate';
  String get privacyPolicy => 'Privacy Policy';
  String get termsOfUse => 'Terms of Use';
}

// Path: settingsPage.account
class TranslationsSettingsPageAccountEn {
  TranslationsSettingsPageAccountEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Account Management';
  String get support => 'Support b_be_bee';
  String get donate => 'Donate';
  String get privacyPolicy => 'Privacy Policy';
  String get termsOfUse => 'Terms of Use';
}

// Path: settingsPage.other
class TranslationsSettingsPageOtherEn {
  TranslationsSettingsPageOtherEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Other';
  String get support => 'Support b_be_bee';
  String get donate => 'Donate';
  String get privacyPolicy => 'Privacy Policy';
  String get termsOfUse => 'Terms of Use';
}

// Path: common.biliError
class TranslationsCommonBiliErrorEn {
  TranslationsCommonBiliErrorEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get case0 => 'Operation successful';
  String get case_1 => 'Operation failed';
  String get case_2 => 'Access Key error';
  String get case_3 => 'API verification key error';
  String get case_4 => 'Caller does not have permission for this method';
  String get case_101 => 'Account not logged in';
  String get case_102 => 'Account suspended';
  String get case_103 => 'Insufficient points';
  String get case_104 => 'Insufficient coins';
  String get case_105 => 'Verification code error';
  String get case_106 => 'Account is not a formal member or in the trial period';
  String get case_107 => 'Application does not exist or is banned';
  String get case_108 => 'Unbound phone number';
  String get case_110 => 'Unbound phone number';
  String get case_111 => 'CSRF verification failed';
  String get case_112 => 'System is upgrading';
  String get case_113 => 'Account not yet real_name verified';
  String get case_114 => 'Please bind phone number first';
  String get case_115 => 'Please complete real_name verification first';
  String get case_304 => 'No change';
  String get case_307 => 'Collision redirect';
  String get case_352 => 'Risk control verification failed (UA or wbi parameters are invalid)';
  String get case_400 => 'Request error';
  String get case_401 => 'Unauthorized (or illegal request)';
  String get case_403 => 'Insufficient access rights';
  String get case_404 => 'Nothing found';
  String get case_405 => 'Method not supported';
  String get case_409 => 'Conflict';
  String get case_412 => 'Request intercepted (client IP blocked by server\'s risk control)';
  String get case_500 => 'Server error';
  String get case_503 => 'Overload protection, service temporarily unavailable';
  String get case_504 => 'Service call timeout';
  String get case_509 => 'Exceeds limit';
  String get case_616 => 'Uploaded file does not exist';
  String get case_617 => 'Uploaded file is too large';
  String get case_625 => 'Too many login attempts, try again later';
  String get case_626 => 'User does not exist';
  String get case_628 => 'Password too weak';
  String get case_629 => 'Username or password error';
  String get case_632 => 'Object quantity limit exceeded';
  String get case_643 => 'Account locked';
  String get case_650 => 'User level too low';
  String get case_652 => 'Duplicate user';
  String get case_653 => 'Username or password cannot be empty';
  String get case_658 => 'Token expired';
  String get case_662 => 'Submission timeout, please resubmit, password timestamp expired';
  String get case_688 => 'Geographical area restriction';
  String get case_689 => 'Copyright restriction';
  String get case_701 => 'Failed to deduct virtue';
  String get case_799 => 'Too many requests, please try again later';
  String get case_2001 => 'Missing necessary parameters';
  String get case_2100 => 'Phone number or email verification required';
  String get case_8888 => 'Sorry, the server is having a little problem~ (ಥ﹏ಥ)';
  String get case1002 => 'Phone number format error';
  String get case1003 => 'Verification code already sent';
  String get case1025 => 'This phone number has a permanent ban record on Bilibili, cannot register or bind a new account';
  String get case2400 => 'Login key error';
  String get case2406 => 'Geetest verification service error';
  String get case86000 => 'RSA decryption failed';
  String get case86101 => 'Not scanned';
  String get case86090 => 'Scanned but not confirmed';
  String get case86038 => 'QR code expired';
  String get case86103 => 'Please download the latest version of Bilibili App to complete registration or continue login';
  String get case86203 => 'SMS sending limit reached';
  String kDefault({required Object code}) => 'An error occurred   ${code}';
}

// Path: common.country
class TranslationsCommonCountryEn {
  TranslationsCommonCountryEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get chinaMainland => 'China Mainland';
  String get chinaHongKong => 'Hong Kong SAR, China';
  String get chinaMacau => 'Macau SAR, China';
  String get chinaTaiwan => 'Taiwan, China';
  String get unitedStates => 'United States';
  String get belgium => 'Belgium';
  String get australia => 'Australia';
  String get france => 'France';
  String get canada => 'Canada';
  String get japan => 'Japan';
  String get singapore => 'Singapore';
  String get southKorea => 'South Korea';
  String get malaysia => 'Malaysia';
  String get unitedKingdom => 'United Kingdom';
  String get italy => 'Italy';
  String get germany => 'Germany';
  String get russia => 'Russia';
  String get newZealand => 'New Zealand';
  String get afghanistan => 'Afghanistan';
  String get albania => 'Albania';
  String get algeria => 'Algeria';
  String get andorra => 'Andorra';
  String get angola => 'Angola';
  String get antiguaAndBarbuda => 'Antigua and Barbuda';
  String get argentina => 'Argentina';
  String get armenia => 'Armenia';
  String get ascensionIsland => 'Ascension Island';
  String get austria => 'Austria';
  String get azerbaijan => 'Azerbaijan';
  String get bahamas => 'Bahamas';
  String get bahrain => 'Bahrain';
  String get bangladesh => 'Bangladesh';
  String get barbados => 'Barbados';
  String get belarus => 'Belarus';
  String get belize => 'Belize';
  String get benin => 'Benin';
  String get bermuda => 'Bermuda';
  String get bhutan => 'Bhutan';
  String get bolivia => 'Bolivia';
  String get bosniaAndHerzegovina => 'Bosnia and Herzegovina';
  String get botswana => 'Botswana';
  String get brazil => 'Brazil';
  String get brunei => 'Brunei';
  String get bulgaria => 'Bulgaria';
  String get burkinaFaso => 'Burkina Faso';
  String get burundi => 'Burundi';
  String get cambodia => 'Cambodia';
  String get cameroon => 'Cameroon';
  String get capeVerde => 'Cape Verde';
  String get caymanIslands => 'Cayman Islands';
  String get centralAfrica => 'Central Africa';
  String get chad => 'Chad';
  String get chile => 'Chile';
  String get colombia => 'Colombia';
  String get comoros => 'Comoros';
  String get congo => 'Congo';
  String get cookIslands => 'Cook Islands';
  String get costaRica => 'Costa Rica';
  String get croatia => 'Croatia';
  String get cuba => 'Cuba';
  String get cyprus => 'Cyprus';
  String get czechia => 'Czechia';
  String get denmark => 'Denmark';
  String get djibouti => 'Djibouti';
  String get dominica => 'Dominica';
  String get dominicanRepublic => 'Dominican Republic';
  String get ecuador => 'Ecuador';
  String get egypt => 'Egypt';
  String get elSalvador => 'El Salvador';
  String get equatorialGuinea => 'Equatorial Guinea';
  String get eritrea => 'Eritrea';
  String get estonia => 'Estonia';
  String get ethiopia => 'Ethiopia';
  String get falklandIslands => 'Falkland Islands';
  String get faroeIslands => 'Faroe Islands';
  String get fiji => 'Fiji';
  String get finland => 'Finland';
  String get frenchGuiana => 'French Guiana';
  String get frenchPolynesia => 'French Polynesia';
  String get gabon => 'Gabon';
  String get gambia => 'Gambia';
  String get georgia => 'Georgia';
  String get ghana => 'Ghana';
  String get gibraltar => 'Gibraltar';
  String get greece => 'Greece';
  String get greenland => 'Greenland';
  String get grenada => 'Grenada';
  String get guadeloupe => 'Guadeloupe';
  String get guam => 'Guam';
  String get guinea => 'Guinea';
  String get guineaBissau => 'Guinea-Bissau';
  String get haiti => 'Haiti';
  String get honduras => 'Honduras';
  String get hungary => 'Hungary';
  String get iceland => 'Iceland';
  String get india => 'India';
  String get indonesia => 'Indonesia';
  String get iran => 'Iran';
  String get iraq => 'Iraq';
  String get ireland => 'Ireland';
  String get israel => 'Israel';
  String get ivoryCoast => 'Ivory Coast';
  String get jamaica => 'Jamaica';
  String get jordan => 'Jordan';
  String get kenya => 'Kenya';
  String get kiribati => 'Kiribati';
  String get northKorea => 'North Korea';
  String get kuwait => 'Kuwait';
  String get kyrgyzstan => 'Kyrgyzstan';
  String get laos => 'Laos';
  String get latvia => 'Latvia';
  String get lebanon => 'Lebanon';
  String get lesotho => 'Lesotho';
  String get liberia => 'Liberia';
  String get libya => 'Libya';
  String get lithuania => 'Lithuania';
  String get luxembourg => 'Luxembourg';
  String get macedonia => 'North Macedonia';
  String get madagascar => 'Madagascar';
  String get malawi => 'Malawi';
  String get maldives => 'Maldives';
  String get mali => 'Mali';
  String get malta => 'Malta';
  String get marshallIslands => 'Marshall Islands';
  String get martinique => 'Martinique';
  String get mauritania => 'Mauritania';
  String get mauritius => 'Mauritius';
  String get mexico => 'Mexico';
  String get micronesia => 'Micronesia';
  String get moldova => 'Moldova';
  String get monaco => 'Monaco';
  String get mongolia => 'Mongolia';
  String get montserrat => 'Montserrat';
  String get morocco => 'Morocco';
  String get mozambique => 'Mozambique';
  String get myanmar => 'Myanmar';
  String get namibia => 'Namibia';
  String get nauru => 'Nauru';
  String get nepal => 'Nepal';
  String get netherlands => 'Netherlands';
  String get nicaragua => 'Nicaragua';
  String get niger => 'Niger';
  String get nigeria => 'Nigeria';
  String get niue => 'Niue';
  String get norfolkIsland => 'Norfolk Island';
  String get norway => 'Norway';
  String get oman => 'Oman';
  String get pakistan => 'Pakistan';
  String get palau => 'Palau';
  String get panama => 'Panama';
  String get papuaNewGuinea => 'Papua New Guinea';
  String get paraguay => 'Paraguay';
  String get peru => 'Peru';
  String get philippines => 'Philippines';
  String get poland => 'Poland';
  String get portugal => 'Portugal';
  String get puertoRico => 'Puerto Rico';
  String get qatar => 'Qatar';
  String get reunion => 'Réunion';
  String get romania => 'Romania';
  String get rwanda => 'Rwanda';
  String get samoa => 'Samoa';
  String get sanMarino => 'San Marino';
  String get saudiArabia => 'Saudi Arabia';
  String get senegal => 'Senegal';
  String get seychelles => 'Seychelles';
  String get sierraLeone => 'Sierra Leone';
  String get slovakia => 'Slovakia';
  String get slovenia => 'Slovenia';
  String get solomonIslands => 'Solomon Islands';
  String get somalia => 'Somalia';
  String get southAfrica => 'South Africa';
  String get spain => 'Spain';
  String get sriLanka => 'Sri Lanka';
  String get sudan => 'Sudan';
  String get sweden => 'Sweden';
  String get switzerland => 'Switzerland';
  String get syria => 'Syria';
  String get tanzania => 'Tanzania';
  String get thailand => 'Thailand';
  String get tunisia => 'Tunisia';
  String get turkey => 'Turkey';
  String get ukraine => 'Ukraine';
  String get unitedArabEmirates => 'United Arab Emirates';
  String get uruguay => 'Uruguay';
  String get uzbekistan => 'Uzbekistan';
  String get vietnam => 'Vietnam';
  String get yemen => 'Yemen';
  String get zimbabwe => 'Zimbabwe';
  String get congoDemocratic => 'Democratic Republic of the Congo';
  String get diegoGarcia => 'Diego Garcia';
  String get marianaIslands => 'Mariana Islands';
  String get samoaEast => 'Eastern Samoa';
  String get samoaWest => 'Western Samoa';
  String get saoTomeAndPrincipe => 'Sao Tome and Principe';
  String get stLucia => 'Saint Lucia';
  String get stPierreAndMiquelon => 'Saint Pierre and Miquelon';
  String get suriname => 'Suriname';
  String get swaziland => 'Eswatini';
  String get togo => 'Togo';
  String get tokelau => 'Tokelau';
  String get tonga => 'Tonga';
  String get trinidadAndTobago => 'Trinidad and Tobago';
  String get turkmenistan => 'Turkmenistan';
  String get turksAndCaicos => 'Turks and Caicos Islands';
  String get tuvalu => 'Tuvalu';
  String get vanuatu => 'Vanuatu';
  String get venezuela => 'Venezuela';
  String get virginIslandsBritish => 'British Virgin Islands';
  String get virginIslandsUS => 'U.S. Virgin Islands';
  String get wakeIsland => 'Wake Island';
  String get wallisAndFutuna => 'Wallis and Futuna';
  String get zambia => 'Zambia';
  String get zanzibar => 'Zanzibar';
  String get serbia => 'Serbia';
  String get uganda => 'Uganda';
}

// Path: controller.bili.login
class TranslationsControllerBiliLoginEn {
  TranslationsControllerBiliLoginEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get captchaDataError => 'Captcha error: Human test not performed or failed';
  String get captchaDataGetError => 'Captcha not obtained or failed to retrieve';
  String get networkErrorPubError => 'Network error: Failed to get public key';
  String passwordLoginErrorForMessage({required Object message}) => 'Error: ${message}';
  String get toSms => 'Error! The current environment has security risks, please use phone number login or bind a phone number!';
  String passwordError({required Object e}) => 'Password login error: ${e}';
  String get qrStatusError => 'Failed to check QR code status, retrying...';
  String get qrGetError => 'Failed to retrieve QR code, retrying...';
  String get smsNetworkError => 'SMS login error: Network error';
  String get smsError => 'SMS verification code login error';
  String get webviewGetCookieError => 'Web login failed to get cookie';
  String get webviewError => 'Web login failed';
  String get captchaErrorNetwork => 'Error in obtaining captcha data: network issue';
  String get captchaErrorTest => 'Error in obtaining captcha data: Human machine testing error';
}

// Path: settingsPage.general.languageOptions
class TranslationsSettingsPageGeneralLanguageOptionsEn {
  TranslationsSettingsPageGeneralLanguageOptionsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get system => 'Follow System';
}
