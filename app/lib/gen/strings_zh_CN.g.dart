///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsZhCn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.zhCn,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <zh-CN>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsZhCn _root = this; // ignore: unused_field

  // Translations
  @override
  String get locale => '简体中文';
  @override
  String get appName => 'b_be_bee';
  @override
  late final _TranslationsGeneralZhCn general = _TranslationsGeneralZhCn._(_root);
  @override
  late final _TranslationsControllerZhCn controller = _TranslationsControllerZhCn._(_root);
  @override
  late final _TranslationsBiliPageZhCn biliPage = _TranslationsBiliPageZhCn._(_root);
  @override
  late final _TranslationsSearchPageZhCn searchPage = _TranslationsSearchPageZhCn._(_root);
  @override
  late final _TranslationsSettingsPageZhCn settingsPage = _TranslationsSettingsPageZhCn._(_root);
  @override
  late final _TranslationsAudioPageZhCn audioPage = _TranslationsAudioPageZhCn._(_root);
  @override
  late final _TranslationsBatchPageZhCn batchPage = _TranslationsBatchPageZhCn._(_root);
  @override
  late final _TranslationsCollectsPageZhCn collectsPage = _TranslationsCollectsPageZhCn._(_root);
  @override
  late final _TranslationsDownloadPageZhCn downloadPage = _TranslationsDownloadPageZhCn._(_root);
  @override
  late final _TranslationsHomePageZhCn homePage = _TranslationsHomePageZhCn._(_root);
  @override
  late final _TranslationsAudioPlayerPageZhCn audioPlayerPage = _TranslationsAudioPlayerPageZhCn._(_root);
  @override
  late final _TranslationsPlaylistPageZhCn playlistPage = _TranslationsPlaylistPageZhCn._(_root);
  @override
  late final _TranslationsUtilsZhCn utils = _TranslationsUtilsZhCn._(_root);
  @override
  late final _TranslationsWidgetZhCn widget = _TranslationsWidgetZhCn._(_root);
  @override
  late final _TranslationsSharePageZhCn sharePage = _TranslationsSharePageZhCn._(_root);
  @override
  late final _TranslationsScanPageZhCn scanPage = _TranslationsScanPageZhCn._(_root);
  @override
  late final _TranslationsLocalPageZhCn localPage = _TranslationsLocalPageZhCn._(_root);
  @override
  late final _TranslationsModelZhCn model = _TranslationsModelZhCn._(_root);
  @override
  late final _TranslationsCommonZhCn common = _TranslationsCommonZhCn._(_root);
  @override
  late final _TranslationsAboutPageZhCn aboutPage = _TranslationsAboutPageZhCn._(_root);
  @override
  late final _TranslationsChangelogPageZhCn changelogPage = _TranslationsChangelogPageZhCn._(_root);
  @override
  late final _TranslationsTrayZhCn tray = _TranslationsTrayZhCn._(_root);
}

// Path: general
class _TranslationsGeneralZhCn extends TranslationsGeneralEn {
  _TranslationsGeneralZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get add => '添加';
  @override
  String get advanced => '高级';
  @override
  String get cancel => '取消';
  @override
  String get close => '关闭';
  @override
  String get confirm => '确认';
  @override
  String get continueStr => '继续';
  @override
  String get copy => '复制';
  @override
  String get copiedToClipboard => '已复制到剪贴板';
  @override
  String get decline => '拒绝';
  @override
  String get done => '完成';
  @override
  String get delete => '删除';
  @override
  String get edit => '编辑';
  @override
  String get error => '错误';
  @override
  String get files => '文件';
  @override
  String get finished => '已完成';
  @override
  String get hide => '隐藏';
  @override
  String get off => '关';
  @override
  String get on => '开';
  @override
  String get open => '打开';
  @override
  String get queue => '队列';
  @override
  String get reset => '重置';
  @override
  String get restart => '重启';
  @override
  String get settings => '设置';
  @override
  String get skipped => '已跳过';
  @override
  String get start => '开始';
  @override
  String get stop => '停止';
  @override
  String get save => '保存';
  @override
  String get unknown => '未知';
  @override
  String get noItemInClipboard => '剪贴板为空';
  @override
  String get login => '登录';
  @override
  String get longLogin => '   登录   ';
  @override
  String get networkError => '网络错误';
  @override
  String get loginSuccess => '登录成功!';
  @override
  String get account => '账号';
  @override
  String get inputAccount => '请输入账号';
  @override
  String get password => '密码';
  @override
  String get inputPassword => '请输入密码';
  @override
  String get passwordLogin => '密码登录';
  @override
  String get regionCode => '地区/国家代码';
  @override
  String get phoneNumber => '手机号';
  @override
  String get captcha => '验证码';
  @override
  String get inputCaptcha => '请输入验证码';
  @override
  String get getCaptcha => '获取验证码';
  @override
  String get retry => '重试';
  @override
  String get playAll => '播放全部';
  @override
  String get more => '更多';
  @override
  String get allVideos => '所有视频';
  @override
  String get deselectAll => '取消全选';
  @override
  String get selectAll => '全选';
  @override
  String get addTo => '添加到';
  @override
  String get download => '下载';
  @override
  String get noAvailableNow => '暂无内容';
  @override
  String get favorite => '收藏';
  @override
  String get cancelCollection => '取消收藏';
  @override
  String get unnamedPlaylist => '未命名歌单';
  @override
  String get unnamedVideo => '未命名视频';
  @override
  String get unknownUser => '未知用户';
  @override
  String loadFail({required Object error}) => '加载失败: ${error}';
  @override
  String get play => '播放';
  @override
  String get playAndPause => '暂停/播放';
  @override
  String get next => '下一首';
  @override
  String get previous => '上一首';
  @override
  String get nextPlay => '下一首播放';
  @override
  String get changePlayMode => '播放模式切换';
  @override
  String get volumeUp => '调高音量';
  @override
  String get volumeDown => '调低音量';
  @override
  String get share => '分享';
  @override
  String get back => '返回';
  @override
  String get synchronized => '已同步';
  @override
  String get synchronizedFailed => '同步失败';
  @override
  String get quit => '退出';
  @override
  String get about => '关于';
}

// Path: controller
class _TranslationsControllerZhCn extends TranslationsControllerEn {
  _TranslationsControllerZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsControllerBiliZhCn bili = _TranslationsControllerBiliZhCn._(_root);
  @override
  String get downloadingSelectedSongs => '正在下载已选中的歌曲...';
  @override
  String get myLikeSongs => '我喜欢的音乐';
  @override
  String get localPlaylistNotExist => '本地歌单不存在';
  @override
  String get playlistNotExist => '歌单不存在';
  @override
  String get collectsPageParamsAssert => '收藏夹模式需要collectId，合集模式需要seasonId，系列模式需要seriesId，播放列表模式需要playlistInfo';
  @override
  String get loadDataError => '加载数据失败';
  @override
  String get fileFormatConversionError => '文件格式转换出错';
  @override
  String get setRingtone => '设置铃声中...';
  @override
  String get setRingtoneFailedForCopyingFileError => '设置铃声失败,复制文件出错';
  @override
  String get setRingtoneFailed => '设置铃声失败,请重试';
  @override
  String get setRingtoneSuccess => '设置铃声成功';
  @override
  String get switchQualityError => '切换音质失败';
  @override
  String currentPlaying({required Object label}) => '当前播放的是: ${label}';
  @override
  String get timerExpiresStopMusic => '定时器到期，停止音乐播放';
  @override
  String get loadFolderFail => '加载文件夹失败';
}

// Path: biliPage
class _TranslationsBiliPageZhCn extends TranslationsBiliPageEn {
  _TranslationsBiliPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get musicRank => '音乐榜单';
  @override
  String currentPeriod({required Object currentPeriod}) => '第 ${currentPeriod} 期';
  @override
  String get biliTipsText1 => '登录B站账户才能获取更高音质的资源';
  @override
  String get biliTipsText2 => '建议将资源保存到本地，可以和其他资源同时使用';
  @override
  String get biliTipsText3 => '如果觉得本软件使用体验好，建议将其分享给你的好朋友';
  @override
  String get upperNoResourceHead => 'UP主页面';
  @override
  String get upperNoResourceTitle => '资源不可用';
  @override
  String get upperNoResourceDescribe => 'UP主ID不能为空';
}

// Path: searchPage
class _TranslationsSearchPageZhCn extends TranslationsSearchPageEn {
  _TranslationsSearchPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get wantHear => '想听什么?';
  @override
  String get searchPageTipsText1 => '播放你喜爱的内容';
  @override
  String get searchPageTipsText2 => '千万曲库，搜索你想听的音乐';
}

// Path: settingsPage
class _TranslationsSettingsPageZhCn extends TranslationsSettingsPageEn {
  _TranslationsSettingsPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '设置';
  @override
  late final _TranslationsSettingsPageGeneralZhCn general = _TranslationsSettingsPageGeneralZhCn._(_root);
  @override
  late final _TranslationsSettingsPagePlayZhCn play = _TranslationsSettingsPagePlayZhCn._(_root);
  @override
  late final _TranslationsSettingsPageDownloadZhCn download = _TranslationsSettingsPageDownloadZhCn._(_root);
  @override
  late final _TranslationsSettingsPageNetworkZhCn network = _TranslationsSettingsPageNetworkZhCn._(_root);
  @override
  late final _TranslationsSettingsPageAccountZhCn account = _TranslationsSettingsPageAccountZhCn._(_root);
  @override
  late final _TranslationsSettingsPageOtherZhCn other = _TranslationsSettingsPageOtherZhCn._(_root);
  @override
  String get advancedSettings => '高级设置';
}

// Path: audioPage
class _TranslationsAudioPageZhCn extends TranslationsAudioPageEn {
  _TranslationsAudioPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get noSongsPlaying => '没有正在播放的歌曲';
}

// Path: batchPage
class _TranslationsBatchPageZhCn extends TranslationsBatchPageEn {
  _TranslationsBatchPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String selectNum({required Object length}) => '已选择 ${length} 项';
}

// Path: collectsPage
class _TranslationsCollectsPageZhCn extends TranslationsCollectsPageEn {
  _TranslationsCollectsPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '我的歌单';
  @override
  String get createCollects => '创建歌单';
  @override
  String get biliCollectsTitle => 'BiliBili 收藏夹';
  @override
  String get biliSeasonTitle => 'BiliBili 合集';
  @override
  String get biliSeriesTitle => 'BiliBili 系列';
  @override
  String get playlistTitle => '播放列表';
  @override
  String get localTitle => '本地收藏夹';
  @override
  String get localAudiosTitle => '本地音频文件';
  @override
  String get addToCollectsSuccess => '添加歌单成功';
  @override
  String playAllMedias({required Object length}) => '播放全部 (${length})';
  @override
  String get defaultSort => '默认排序';
  @override
  String get songTitleSort => '按歌曲名A-Z';
  @override
  String get singerNameSort => '按歌手名A-Z';
  @override
  String get searchCurrentCollect => '搜索该收藏夹内内容';
  @override
  String get inputKeyWord => '输入关键词搜索视频或up主';
  @override
  String get noSearchData => '未找到相关内容';
}

// Path: downloadPage
class _TranslationsDownloadPageZhCn extends TranslationsDownloadPageEn {
  _TranslationsDownloadPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '下载管理';
  @override
  String get fileLoss => '文件已丢失';
  @override
  String get error => '下载失败';
  @override
  String get canceled => '已取消';
  @override
  String get pending => '等待下载';
  @override
  String get downloading => '下载中';
  @override
  String get downloadSuccess => '下载完成';
  @override
  String get converting => '转换中';
  @override
  String get convertSuccess => '转换完成';
  @override
  String get image => '下载封面';
  @override
  String get imageSuccess => '封面完成';
  @override
  String get completed => '已完成';
}

// Path: homePage
class _TranslationsHomePageZhCn extends TranslationsHomePageEn {
  _TranslationsHomePageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '首页';
  @override
  String get scanQr => '扫描二维码';
  @override
  String get clipboard => '从剪贴板导入';
  @override
  String get clipboardNull => '剪贴板为空';
  @override
  String get textFormatException => '文本格式异常';
}

// Path: audioPlayerPage
class _TranslationsAudioPlayerPageZhCn extends TranslationsAudioPlayerPageEn {
  _TranslationsAudioPlayerPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get song => '歌曲';
  @override
  String get lyrics => '歌词';
}

// Path: playlistPage
class _TranslationsPlaylistPageZhCn extends TranslationsPlaylistPageEn {
  _TranslationsPlaylistPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get playlist => '播放列表';
  @override
  String get playlistHistory => '播放历史';
  @override
  String get playlistNull => '播放列表为空';
  @override
  String get playlistHistoryNull => '暂无播放历史';
}

// Path: utils
class _TranslationsUtilsZhCn extends TranslationsUtilsEn {
  _TranslationsUtilsZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get noBiliApp => '该设备上未安装与bilibili相关应用';
  @override
  String get storagePermissionDenied => '存储权限被拒绝';
  @override
  String get needPermission => '此应用需要存储权限以访问音频文件，请授予权限';
  @override
  String toHourMinute({required Object hour, required Object minute}) => '${hour} 小时 ${minute} 分钟';
  @override
  String toMinute({required Object minute}) => '${minute} 分钟';
  @override
  String dayBefore({required Object day}) => '${day} 天前';
  @override
  String weekBefore({required Object week}) => '${week} 周前';
  @override
  String yyyyMMDD({required Object year, required Object month, required Object day}) => '${year} 年 ${month} 月 ${day} 日';
  @override
  String get clipboardText => '剪贴板内容';
  @override
  String get downloading => '正在下载';
  @override
  String get downloadFFmpegSuccess => '下载 FFmpeg 成功';
  @override
  String get downloadFFmpegFailed => '下载 FFmpeg 失败';
  @override
  String get downloadingFFmpeg => '下载 ffmpeg 中';
  @override
  String get newCollect => '新建歌单';
}

// Path: widget
class _TranslationsWidgetZhCn extends TranslationsWidgetEn {
  _TranslationsWidgetZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get biliMusicRank => 'BiliBili 音乐榜单';
  @override
  String get noDataNow => '暂无数据';
  @override
  String myCreateCollectsNum({required Object count}) => '我创建的收藏夹 (${count} 个)';
  @override
  String videosNum({required Object count}) => '${count} 个视频';
  @override
  String get noCollects => '暂无收藏夹';
  @override
  String get myCreateCollects => '我创建的收藏夹';
  @override
  String get mySubscribe => '我追的合集';
  @override
  String get seeLater => '稍后再看';
  @override
  String mySubscribeNum({required Object count}) => '我追的合集 (${count} 个)';
  @override
  String seeLaterNum({required Object count}) => '稍后播放 (${count} 个)';
  @override
  String get clickToLoginBili => '点击登录Bilibili账户';
  @override
  String get addToPlaylist => '添加到播放列表';
  @override
  String get addToCollects => '加入歌单';
  @override
  String get enterNewValue => '输入新的值';
  @override
  String get removeCollect => '删除歌单';
  @override
  String removeCollectConfirm({required Object title}) => '确定要删除歌单 ${title} 吗？';
  @override
  String get renameCollect => '重命名歌单';
  @override
  String get collectName => '歌单名称';
  @override
  String get inputCollectName => '请输入歌单名称';
  @override
  String get createCollect => '新建歌单';
  @override
  String get create => '创建';
  @override
  String audiosNum({required Object count}) => '${count} 首歌曲';
  @override
  String get saveTo => '保存至';
  @override
  String get mostRelevant => '最相关';
  @override
  String removeFrom({required Object title}) => '已从 ${title} 中移除';
  @override
  String addTo({required Object title}) => '已添加到 ${title}';
  @override
  String get pin => '置顶';
  @override
  String get cancelPin => '取消置顶';
  @override
  String get rename => '重命名';
  @override
  String downloadingTitle({required Object title}) => '正在下载 ${title}';
  @override
  String copyToClipboard({required Object name}) => '复制 ${name} 到剪贴板';
  @override
  String get removeFromFav => '从已点赞的歌曲移除';
  @override
  String get addToFav => '添加至已点赞的歌曲';
  @override
  String get removeFromThis => '从此歌单中删除';
  @override
  String get jumpToUpper => '转至Upper';
  @override
  String get setSleepTimer => '设置睡眠定时器';
  @override
  String sleepTimerTime({required Object minute}) => '睡眠定时器 - 剩余 ${minute} 分钟';
  @override
  String get closeSleepTimer => '关闭定时器';
  @override
  String get setRingtone => '设为铃声';
  @override
  String get playSetting => '播放设置';
  @override
  String get quality => '音质';
  @override
  String get playStyle => '播放器样式';
  @override
  String get sourceAudio => '原视频';
  @override
  String get hasLogin => '已登录';
  @override
  String get noLogin => '未登录';
  @override
  String get logout => '登出';
  @override
  String get noLyrics => '此歌曲暂时没有歌词';
  @override
  String get loginBiliBili => '登录 BiliBili';
  @override
  String get qrcodeLogin => '扫码登录';
  @override
  String get webLogin => '网页登录';
  @override
  String get searchCollect => '搜索歌单';
  @override
  String get library => '音乐库';
}

// Path: sharePage
class _TranslationsSharePageZhCn extends TranslationsSharePageEn {
  _TranslationsSharePageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get copyLink => '复制链接';
  @override
  String get copyFail => '复制失败';
  @override
  String get saveImage => '保存图片';
  @override
  String get shareFail => '分享失败';
  @override
  String get linkCopy => '链接已复制';
  @override
  String get saveImageToGallery => '图片已保存到相册';
  @override
  String get saveFail => '保存失败';
}

// Path: scanPage
class _TranslationsScanPageZhCn extends TranslationsScanPageEn {
  _TranslationsScanPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get scan => '扫描';
  @override
  String get invalidQrCode => '无效二维码';
  @override
  String get scanFailed => '扫码失败';
  @override
  String get noQrCodeFound => '未发现二维码';
}

// Path: localPage
class _TranslationsLocalPageZhCn extends TranslationsLocalPageEn {
  _TranslationsLocalPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '本地';
  @override
  String get addFolder => '添加文件夹';
  @override
  String get noAudioFiles => '没有音频文件';
}

// Path: model
class _TranslationsModelZhCn extends TranslationsModelEn {
  _TranslationsModelZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get all => '全部';
  @override
  String get user => '用户';
  @override
  String get video => '视频';
  @override
  String get unknown => '未知';
  @override
  String get lowQuality => '低品质';
  @override
  String get standardQuality => '标准品质';
  @override
  String get highQuality => '高品质';
  @override
  String get dolby => '杜比全景声';
  @override
  String get hiRes => 'Hi-Res无损';
  @override
  String get passwordLogin => '密码登录';
  @override
  String get smsLogin => '短信登录';
  @override
  String get qrcodeLogin => '扫码登录';
  @override
  String get webLogin => '网页登录';
  @override
  String get free => '无';
  @override
  String get vip => '大会员';
  @override
  String get annualVip => '年度大会员';
  @override
  String get tenannualVip => '十年大会员';
  @override
  String get hundredannual => '百年大会员';
  @override
  String get repeatModelNone => '顺序播放';
  @override
  String get repeatModelOne => '单曲循环';
  @override
  String get repeatModelAll => '列表循环';
  @override
  String get repeatModelRandom => '随机播放';
  @override
  String get sortMethodDefault => '默认排序';
  @override
  String get sortMethodTitleAZ => '按歌曲名A-Z';
  @override
  String get sortMethodArtistAZ => '按歌手名A-Z';
  @override
  String get sortMethodRecentPlay => '最近播放';
  @override
  String get sortMethodAlphabet => '按字母排序';
}

// Path: common
class _TranslationsCommonZhCn extends TranslationsCommonEn {
  _TranslationsCommonZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsCommonBiliErrorZhCn biliError = _TranslationsCommonBiliErrorZhCn._(_root);
  @override
  late final _TranslationsCommonCountryZhCn country = _TranslationsCommonCountryZhCn._(_root);
}

// Path: aboutPage
class _TranslationsAboutPageZhCn extends TranslationsAboutPageEn {
  _TranslationsAboutPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '关于 b_be_bee';
  @override
  List<String> get description => [
        'b_be_bee 是一款免费的开源应用程序，可让您获取大量音频资源。',
        '本程序可在 Android、macOS、Windows 和 Linux 上使用。您可以在官方主页找到所有下载选项。',
      ];
  @override
  String get author => '作者';
  @override
  String get contributors => '贡献者';
  @override
  String get packagers => '打包者';
  @override
  String get translators => '翻译者';
}

// Path: changelogPage
class _TranslationsChangelogPageZhCn extends TranslationsChangelogPageEn {
  _TranslationsChangelogPageZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '更新日志';
}

// Path: tray
class _TranslationsTrayZhCn extends TranslationsTrayEn {
  _TranslationsTrayZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get open => _root.general.open;
  @override
  String get close => '退出 B Be Bee';
  @override
  String get closeWindows => '离开';
}

// Path: controller.bili
class _TranslationsControllerBiliZhCn extends TranslationsControllerBiliEn {
  _TranslationsControllerBiliZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsControllerBiliLoginZhCn login = _TranslationsControllerBiliLoginZhCn._(_root);
  @override
  String get noRankData => '暂无榜单数据';
  @override
  String get getUserDataError => '获取用户相关数据错误';
  @override
  String get loadBiliAudioFail => '加载BiliBili音频资源失败';
}

// Path: settingsPage.general
class _TranslationsSettingsPageGeneralZhCn extends TranslationsSettingsPageGeneralEn {
  _TranslationsSettingsPageGeneralZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '通用';
  @override
  String get language => '语言';
  @override
  String get brightness => '亮度';
  @override
  late final _TranslationsSettingsPageGeneralLanguageOptionsZhCn languageOptions = _TranslationsSettingsPageGeneralLanguageOptionsZhCn._(_root);
  @override
  late final _TranslationsSettingsPageGeneralBrightnessOptionsZhCn brightnessOptions = _TranslationsSettingsPageGeneralBrightnessOptionsZhCn._(_root);
  @override
  String get saveWindowPlacement => '退出时保存窗口位置';
  @override
  String get saveWindowPlacementWindows => '离开时保存窗口位置';
  @override
  String get minimizeToTray => '关闭时最小化到系统托盘';
  @override
  String get launchAtStartup => '登录系统后自动启动程序';
  @override
  String get launchMinimized => '启动时最小化到任务栏';
  @override
  String get enableMessageBar => '是否开启消息栏';
  @override
  String get autoSyncPlaylist => '自动同步歌单(同步本地歌单和原始歌单)';
  @override
  String get animations => '动画效果';
  @override
  String get isAutoUpdate => '应用自动更新';
  @override
  String get isUpdateRemind => '应用更新提醒';
}

// Path: settingsPage.play
class _TranslationsSettingsPagePlayZhCn extends TranslationsSettingsPagePlayEn {
  _TranslationsSettingsPagePlayZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '播放';
  @override
  String get fadeInOutTime => '淡入淡出时间';
  @override
  String get playQuality => '播放音质';
}

// Path: settingsPage.download
class _TranslationsSettingsPageDownloadZhCn extends TranslationsSettingsPageDownloadEn {
  _TranslationsSettingsPageDownloadZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '下载';
  @override
  String get downloadLyrics => '同时下载歌词';
  @override
  String get downloadCover => '同时下载歌曲封面';
  @override
  String get downloadQuality => '下载音质';
  @override
  String get downloadByMobile => '通过移动流量下载';
  @override
  String get downloadFileFormat => '下载文件格式';
  @override
  String get downloadDestination => '文件保存路径';
}

// Path: settingsPage.network
class _TranslationsSettingsPageNetworkZhCn extends TranslationsSettingsPageNetworkEn {
  _TranslationsSettingsPageNetworkZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '网络';
  @override
  String get support => '支持 b_be_bee';
  @override
  String get donate => '捐赠';
  @override
  String get privacyPolicy => '隐私政策';
  @override
  String get termsOfUse => '使用条款';
}

// Path: settingsPage.account
class _TranslationsSettingsPageAccountZhCn extends TranslationsSettingsPageAccountEn {
  _TranslationsSettingsPageAccountZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '账户管理';
  @override
  String get support => '支持 b_be_bee';
  @override
  String get donate => '捐赠';
  @override
  String get privacyPolicy => '隐私政策';
  @override
  String get termsOfUse => '使用条款';
}

// Path: settingsPage.other
class _TranslationsSettingsPageOtherZhCn extends TranslationsSettingsPageOtherEn {
  _TranslationsSettingsPageOtherZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '其他';
  @override
  String get support => '支持 b_be_bee';
  @override
  String get donate => '捐赠';
  @override
  String get privacyPolicy => '隐私政策';
  @override
  String get termsOfUse => '使用条款';
}

// Path: common.biliError
class _TranslationsCommonBiliErrorZhCn extends TranslationsCommonBiliErrorEn {
  _TranslationsCommonBiliErrorZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get case0 => '操作成功';
  @override
  String get case_1 => '操作失败';
  @override
  String get case_2 => 'Access Key 错误';
  @override
  String get case_3 => 'API 校验密匙错误';
  @override
  String get case_4 => '调用方对该 Method 没有权限';
  @override
  String get case_101 => '账号未登录';
  @override
  String get case_102 => '账号被封停';
  @override
  String get case_103 => '积分不足';
  @override
  String get case_104 => '硬币不足';
  @override
  String get case_105 => '验证码错误';
  @override
  String get case_106 => '账号非正式会员或在适应期';
  @override
  String get case_107 => '应用不存在或者被封禁';
  @override
  String get case_108 => '未绑定手机';
  @override
  String get case_110 => '未绑定手机';
  @override
  String get case_111 => 'csrf 校验失败';
  @override
  String get case_112 => '系统升级中';
  @override
  String get case_113 => '账号尚未实名认证';
  @override
  String get case_114 => '请先绑定手机';
  @override
  String get case_115 => '请先完成实名认证';
  @override
  String get case_304 => '木有改动';
  @override
  String get case_307 => '撞车跳转';
  @override
  String get case_352 => '风控校验失败 (UA 或 wbi 参数不合法)';
  @override
  String get case_400 => '请求错误';
  @override
  String get case_401 => '未认证 (或非法请求)';
  @override
  String get case_403 => '访问权限不足';
  @override
  String get case_404 => '啥都木有';
  @override
  String get case_405 => '不支持该方法';
  @override
  String get case_409 => '冲突';
  @override
  String get case_412 => '请求被拦截 (客户端 ip 被服务端风控)';
  @override
  String get case_500 => '服务器错误';
  @override
  String get case_503 => '过载保护,服务暂不可用';
  @override
  String get case_504 => '服务调用超时';
  @override
  String get case_509 => '超出限制';
  @override
  String get case_616 => '上传文件不存在';
  @override
  String get case_617 => '上传文件太大';
  @override
  String get case_625 => '登录失败次数太多';
  @override
  String get case_626 => '用户不存在';
  @override
  String get case_628 => '密码太弱';
  @override
  String get case_629 => '用户名或密码错误';
  @override
  String get case_632 => '操作对象数量限制';
  @override
  String get case_643 => '被锁定';
  @override
  String get case_650 => '用户等级太低';
  @override
  String get case_652 => '重复的用户';
  @override
  String get case_653 => '用户名或密码不能为空';
  @override
  String get case_658 => 'Token 过期';
  @override
  String get case_662 => '提交超时,请重新提交,密码时间戳过期';
  @override
  String get case_688 => '地理区域限制';
  @override
  String get case_689 => '版权限制';
  @override
  String get case_701 => '扣节操失败';
  @override
  String get case_799 => '请求过于频繁，请稍后再试';
  @override
  String get case_2001 => '缺少必要的的参数';
  @override
  String get case_2100 => '需验证手机号或邮箱';
  @override
  String get case_8888 => '对不起，服务器开小差了~ (ಥ﹏ಥ)';
  @override
  String get case1002 => '手机号格式错误';
  @override
  String get case1003 => '验证码已经发送';
  @override
  String get case1025 => '该手机号在哔哩哔哩有过永久封禁记录，无法再次注册或绑定新账号';
  @override
  String get case2400 => '登录密钥错误';
  @override
  String get case2406 => '验证极验服务出错';
  @override
  String get case86000 => 'RSA解密失败';
  @override
  String get case86101 => '未扫码';
  @override
  String get case86090 => '已扫码但未确认';
  @override
  String get case86038 => '二维码已失效';
  @override
  String get case86103 => '请下载最新版本哔哩哔哩App完成注册或继续登录';
  @override
  String get case86203 => '短信发送次数已达到上限';
  @override
  String kDefault({required Object code}) => '发生错误  ${code}';
}

// Path: common.country
class _TranslationsCommonCountryZhCn extends TranslationsCommonCountryEn {
  _TranslationsCommonCountryZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get chinaMainland => '中国大陆';
  @override
  String get chinaHongKong => '中国香港特别行政区';
  @override
  String get chinaMacau => '中国澳门特别行政区';
  @override
  String get chinaTaiwan => '中国台湾';
  @override
  String get unitedStates => '美国';
  @override
  String get belgium => '比利时';
  @override
  String get australia => '澳大利亚';
  @override
  String get france => '法国';
  @override
  String get canada => '加拿大';
  @override
  String get japan => '日本';
  @override
  String get singapore => '新加坡';
  @override
  String get southKorea => '韩国';
  @override
  String get malaysia => '马来西亚';
  @override
  String get unitedKingdom => '英国';
  @override
  String get italy => '意大利';
  @override
  String get germany => '德国';
  @override
  String get russia => '俄罗斯';
  @override
  String get newZealand => '新西兰';
  @override
  String get afghanistan => '阿富汗';
  @override
  String get albania => '阿尔巴尼亚';
  @override
  String get algeria => '阿尔及利亚';
  @override
  String get andorra => '安道尔';
  @override
  String get angola => '安哥拉';
  @override
  String get antiguaAndBarbuda => '安提瓜岛和巴布达';
  @override
  String get argentina => '阿根廷';
  @override
  String get armenia => '亚美尼亚';
  @override
  String get ascensionIsland => '阿森松岛';
  @override
  String get austria => '奥地利';
  @override
  String get azerbaijan => '阿塞拜疆';
  @override
  String get bahamas => '巴哈马群岛';
  @override
  String get bahrain => '巴林';
  @override
  String get bangladesh => '孟加拉国';
  @override
  String get barbados => '巴巴多斯';
  @override
  String get belarus => '白俄罗斯';
  @override
  String get belize => '伯利兹';
  @override
  String get benin => '贝宁';
  @override
  String get bermuda => '百慕大群岛';
  @override
  String get bhutan => '不丹';
  @override
  String get bolivia => '玻利维亚';
  @override
  String get bosniaAndHerzegovina => '波黑';
  @override
  String get botswana => '博茨瓦纳';
  @override
  String get brazil => '巴西';
  @override
  String get brunei => '文莱';
  @override
  String get bulgaria => '保加利亚';
  @override
  String get burkinaFaso => '布基纳法索';
  @override
  String get burundi => '布隆迪';
  @override
  String get cambodia => '柬埔寨';
  @override
  String get cameroon => '喀麦隆';
  @override
  String get capeVerde => '佛得角';
  @override
  String get caymanIslands => '开曼群岛';
  @override
  String get centralAfrica => '非洲中部';
  @override
  String get chad => '乍得';
  @override
  String get chile => '智利';
  @override
  String get colombia => '哥伦比亚';
  @override
  String get comoros => '科摩罗';
  @override
  String get congo => '刚果';
  @override
  String get cookIslands => '库克岛';
  @override
  String get costaRica => '哥斯达黎加';
  @override
  String get croatia => '克罗地亚';
  @override
  String get cuba => '古巴';
  @override
  String get cyprus => '塞浦路斯';
  @override
  String get czechia => '捷克';
  @override
  String get denmark => '丹麦';
  @override
  String get djibouti => '吉布提';
  @override
  String get dominica => '多米尼加';
  @override
  String get dominicanRepublic => '多米尼加代表';
  @override
  String get ecuador => '厄瓜多尔';
  @override
  String get egypt => '埃及';
  @override
  String get elSalvador => '萨尔瓦多';
  @override
  String get equatorialGuinea => '赤道几内亚';
  @override
  String get eritrea => '厄立特里亚';
  @override
  String get estonia => '爱沙尼亚';
  @override
  String get ethiopia => '埃塞俄比亚';
  @override
  String get falklandIslands => '福克兰岛';
  @override
  String get faroeIslands => '法罗岛';
  @override
  String get fiji => '斐济';
  @override
  String get finland => '芬兰';
  @override
  String get frenchGuiana => '法属圭亚那';
  @override
  String get frenchPolynesia => '法属波利尼西亚';
  @override
  String get gabon => '加蓬';
  @override
  String get gambia => '冈比亚';
  @override
  String get georgia => '格鲁吉亚';
  @override
  String get ghana => '加纳';
  @override
  String get gibraltar => '直布罗陀';
  @override
  String get greece => '希腊';
  @override
  String get greenland => '格陵兰岛';
  @override
  String get grenada => '格林纳达';
  @override
  String get guadeloupe => '瓜德罗普岛';
  @override
  String get guam => '关岛';
  @override
  String get guinea => '几内亚';
  @override
  String get guineaBissau => '几内亚比绍';
  @override
  String get haiti => '海地';
  @override
  String get honduras => '洪都拉斯';
  @override
  String get hungary => '匈牙利';
  @override
  String get iceland => '冰岛';
  @override
  String get india => '印度';
  @override
  String get indonesia => '印尼';
  @override
  String get iran => '伊朗';
  @override
  String get iraq => '伊拉克';
  @override
  String get ireland => '爱尔兰';
  @override
  String get israel => '以色列';
  @override
  String get ivoryCoast => '科特迪瓦';
  @override
  String get jamaica => '牙买加';
  @override
  String get jordan => '约旦';
  @override
  String get kenya => '肯尼亚';
  @override
  String get kiribati => '基里巴斯';
  @override
  String get northKorea => '朝鲜';
  @override
  String get kuwait => '科威特';
  @override
  String get kyrgyzstan => '吉尔吉斯斯坦';
  @override
  String get laos => '老挝';
  @override
  String get latvia => '拉脱维亚';
  @override
  String get lebanon => '黎巴嫩';
  @override
  String get lesotho => '莱索托';
  @override
  String get liberia => '利比里亚';
  @override
  String get libya => '利比亚';
  @override
  String get lithuania => '立陶宛';
  @override
  String get luxembourg => '卢森堡';
  @override
  String get macedonia => '马其顿';
  @override
  String get madagascar => '马达加斯加';
  @override
  String get malawi => '马拉维';
  @override
  String get maldives => '马尔代夫';
  @override
  String get mali => '马里';
  @override
  String get malta => '马耳他';
  @override
  String get marshallIslands => '马绍尔群岛';
  @override
  String get martinique => '马提尼克岛';
  @override
  String get mauritania => '毛里塔尼亚';
  @override
  String get mauritius => '毛里求斯';
  @override
  String get mexico => '墨西哥';
  @override
  String get micronesia => '密克罗尼西亚';
  @override
  String get moldova => '摩尔多瓦';
  @override
  String get monaco => '摩纳哥';
  @override
  String get mongolia => '蒙古';
  @override
  String get montserrat => '蒙特塞拉特岛';
  @override
  String get morocco => '摩洛哥';
  @override
  String get mozambique => '莫桑比克';
  @override
  String get myanmar => '缅甸';
  @override
  String get namibia => '纳米比亚';
  @override
  String get nauru => '瑙鲁';
  @override
  String get nepal => '尼泊尔';
  @override
  String get netherlands => '荷兰';
  @override
  String get nicaragua => '尼加拉瓜';
  @override
  String get niger => '尼日尔';
  @override
  String get nigeria => '尼日利亚';
  @override
  String get niue => '纽埃岛';
  @override
  String get norfolkIsland => '诺福克岛';
  @override
  String get norway => '挪威';
  @override
  String get oman => '阿曼';
  @override
  String get pakistan => '巴基斯坦';
  @override
  String get palau => '帕劳';
  @override
  String get panama => '巴拿马';
  @override
  String get papuaNewGuinea => '巴布亚新几内亚';
  @override
  String get paraguay => '巴拉圭';
  @override
  String get peru => '秘鲁';
  @override
  String get philippines => '菲律宾';
  @override
  String get poland => '波兰';
  @override
  String get portugal => '葡萄牙';
  @override
  String get puertoRico => '波多黎各';
  @override
  String get qatar => '卡塔尔';
  @override
  String get reunion => '聚会岛';
  @override
  String get romania => '罗马尼亚';
  @override
  String get rwanda => '卢旺达';
  @override
  String get samoa => '萨摩亚';
  @override
  String get sanMarino => '圣马力诺';
  @override
  String get saudiArabia => '沙特阿拉伯';
  @override
  String get senegal => '塞内加尔';
  @override
  String get seychelles => '塞舌尔共和国';
  @override
  String get sierraLeone => '塞拉利昂';
  @override
  String get slovakia => '斯洛伐克';
  @override
  String get slovenia => '斯洛文尼亚';
  @override
  String get solomonIslands => '所罗门群岛';
  @override
  String get somalia => '索马里';
  @override
  String get southAfrica => '南非';
  @override
  String get spain => '西班牙';
  @override
  String get sriLanka => '斯里兰卡';
  @override
  String get sudan => '苏丹';
  @override
  String get sweden => '瑞典';
  @override
  String get switzerland => '瑞士';
  @override
  String get syria => '叙利亚';
  @override
  String get tanzania => '坦桑尼亚';
  @override
  String get thailand => '泰国';
  @override
  String get tunisia => '突尼斯';
  @override
  String get turkey => '土耳其';
  @override
  String get ukraine => '乌克兰';
  @override
  String get unitedArabEmirates => '阿联酋';
  @override
  String get uruguay => '乌拉圭';
  @override
  String get uzbekistan => '乌兹别克斯坦';
  @override
  String get vietnam => '越南';
  @override
  String get yemen => '也门';
  @override
  String get zimbabwe => '津巴布韦';
  @override
  String get congoDemocratic => '刚果(金)';
  @override
  String get diegoGarcia => '迪戈加西亚岛';
  @override
  String get marianaIslands => '马里亚纳岛';
  @override
  String get samoaEast => '萨摩亚，东部';
  @override
  String get samoaWest => '萨摩亚，西部';
  @override
  String get saoTomeAndPrincipe => '圣多美和普林西比';
  @override
  String get stLucia => '圣卢西亚';
  @override
  String get stPierreAndMiquelon => '圣皮埃尔和密克隆群岛';
  @override
  String get suriname => '苏里南';
  @override
  String get swaziland => '斯威士兰';
  @override
  String get togo => '多哥';
  @override
  String get tokelau => '托克劳岛';
  @override
  String get tonga => '汤加';
  @override
  String get trinidadAndTobago => '特立尼达和多巴哥';
  @override
  String get turkmenistan => '土库曼斯坦';
  @override
  String get turksAndCaicos => '特克斯和凯科斯';
  @override
  String get tuvalu => '图瓦卢';
  @override
  String get vanuatu => '瓦努阿图';
  @override
  String get venezuela => '委内瑞拉';
  @override
  String get virginIslandsBritish => '维珍群岛(英属)';
  @override
  String get virginIslandsUS => '维珍群岛(美属)';
  @override
  String get wakeIsland => '维克岛';
  @override
  String get wallisAndFutuna => '瓦利斯群岛和富图纳群岛';
  @override
  String get zambia => '赞比亚';
  @override
  String get zanzibar => '桑给巴尔岛';
  @override
  String get serbia => '塞尔维亚';
  @override
  String get uganda => '乌干达';
}

// Path: controller.bili.login
class _TranslationsControllerBiliLoginZhCn extends TranslationsControllerBiliLoginEn {
  _TranslationsControllerBiliLoginZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get captchaDataError => '获取验证码错误:未进行人机测试或人机测试失败';
  @override
  String get captchaDataGetError => '验证码未获取或获取失败';
  @override
  String get networkErrorPubError => '网络错误:获取公钥错误';
  @override
  String passwordLoginErrorForMessage({required Object message}) => '错误: ${message}';
  @override
  String get toSms => '错误! 当前环境有安全风险，请使用手机号码登录或绑定手机号!!';
  @override
  String passwordError({required Object e}) => '密码登录错误: ${e}';
  @override
  String get qrStatusError => '检查二维码状态失败，正在重试...';
  @override
  String get qrGetError => '获取二维码失败，正在重试...';
  @override
  String get smsNetworkError => '短信登录错误:网络错误';
  @override
  String get smsError => '短信验证码登录错误';
  @override
  String get webviewGetCookieError => '网页登录获取cookie错误';
  @override
  String get webviewError => '网页登录失败';
  @override
  String get captchaErrorNetwork => '获取captcha数据错误:网络问题';
  @override
  String get captchaErrorTest => '获取captcha数据错误:人机测试错误';
}

// Path: settingsPage.general.languageOptions
class _TranslationsSettingsPageGeneralLanguageOptionsZhCn extends TranslationsSettingsPageGeneralLanguageOptionsEn {
  _TranslationsSettingsPageGeneralLanguageOptionsZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get system => '跟随系统';
}

// Path: settingsPage.general.brightnessOptions
class _TranslationsSettingsPageGeneralBrightnessOptionsZhCn extends TranslationsSettingsPageGeneralBrightnessOptionsEn {
  _TranslationsSettingsPageGeneralBrightnessOptionsZhCn._(TranslationsZhCn root)
      : this._root = root,
        super.internal(root);

  final TranslationsZhCn _root; // ignore: unused_field

  // Translations
  @override
  String get system => '跟随系统';
  @override
  String get light => '亮色';
  @override
  String get dark => '暗色';
}
