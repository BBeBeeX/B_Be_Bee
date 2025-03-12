class ApiConstants {
  static const String githubLatestRelease =
      'https://api.github.com/repos/BBeBeeX/B_Be_Bee/releases/latest';

  static const String bilibiliBase = 'https://www.bilibili.com';

  static const String apiBase = 'https://api.bilibili.com';

  static const String apiLiveBase = 'https://api.live.bilibili.com';

  static const String passportBase = 'https://passport.bilibili.com';

  static const String sSearchBase = 'https://s.search.bilibili.com';

  static const String appBase = 'https://app.bilibili.com';

  static const String accountBase = 'https://api.vc.bilibili.com';

  static const String recommendItems = '$apiBase/x/web-interface/wbi/index/top/feed/rcmd';

  ///申请人机验证验证码
  static const String captcha = '$passportBase/x/passport-login/captcha';

  ///申请短信验证码
  static const String smsCode = '$passportBase/x/passport-login/web/sms/send';

  ///短信验证码登录
  ///post请求
  static const String smsLogin = '$passportBase/x/passport-login/web/login/sms';

  ///生成二维码
  ///直接get请求
  static const String qrcodeGenerate = '$passportBase/x/passport-login/web/qrcode/generate';

  ///扫码登录
  static const String qrcodeLogin = '$passportBase/x/passport-login/web/qrcode/poll';

  ///密码登录前，获取publicKey和hash
  static const String passwordPublicKeyHash = '$passportBase/x/passport-login/web/key';

  ///密码登录
  static const String passwordLogin = '$passportBase/x/passport-login/web/login';

  ///Cookie是否需要刷新
  static const String cookieInfo = '$passportBase/x/passport-login/web/cookie/info';

  ///获取refresh_csrf
  static const String getRefreshCSRF = '$bilibiliBase/correspond/1/';

  ///刷新cookie
  static const String postRefreshCookiePath = '$passportBase/x/passport-login/web/cookie/refresh';

  ///获取用户信息
  static const String userInfo = '$apiBase/x/web-interface/nav';

  ///获取用户创建的收藏夹
  static const String createdList = '$apiBase/x/v3/fav/folder/created/list';

  ///获取用户创建的收藏夹
  static const String createdListAll = '$apiBase/x/v3/fav/folder/created/list-all';

  ///获取收藏夹明细列表
  static const String resourceList = '$apiBase/x/v3/fav/resource/list';

  ///获取收藏夹信息
  static const String resourceInfo = '$apiBase/x/v3/fav/folder/info';

  ///获取视频信息
  static const String videoInfo = '$apiBase/x/web-interface/view';

  ///获取合集信息
  static const String collect2ListAll = '$apiBase/x/v3/fav/folder/collected/list';

  ///获取视频分P列表和信息 (bvid -> cid)
  static const String audioPagelist = '$apiBase/x/player/pagelist';

  ///获取用户数据
  static const String usercard = '$accountBase/account/v1/user/cards';

  ///获取音频榜单每期列表
  static const String audioToplist = '$apiBase/x/copyright-music-publicity/toplist/all_period';

  ///获取音频榜单单期
  static const String audioTopMusicList = '$apiBase/x/copyright-music-publicity/toplist/music_list';

  ///获取用户公告
  static const String upperNotice = '$apiBase/x/space/notice';

  static const String getSeasonsAndSeries = '$apiBase/x/polymer/web-space/seasons_series_list';

  static const String getAllVideosByUid = '$apiBase/x/series/recArchivesByKeywords';

  static const String getSeries = '$apiBase/x/series/archives';

  ///获取合集视频
  static const String getSeasons = '$apiBase/x/polymer/web-space/seasons_archives_list';

  ///视频播放
  ///test: https://api.bilibili.com/x/player/playurl?cid=1053323351&bvid=BV14L411k7zn&fnval=16
  ///test: https://api.bilibili.com/x/player/playurl?cid=993730189&avid=351273106&fnval=16&fourk=1
  static const String videoPlay = '$apiBase/x/player/wbi/playurl';

  ///视频分p信息
  ///test: https://api.bilibili.com/x/player/pagelist?aid=170001
  static const String videoParts = '$apiBase/x/player/pagelist';

  ///相关视频
  ///
  ///bvid, aid 任选其一
  ///
  ///[bvid]:String (不可以是aid转字符串，即不允许bvid=170001这种做法)
  ///
  ///[aid]:int
  ///
  ///test: https://api.bilibili.com/x/web-interface/archive/related?aid=170001
  static const String relatedVideo = '$apiBase/x/web-interface/archive/related';

  ///分类搜索
  ///test video: https://api.bilibili.com/x/web-interface/search/type?keyword=你好&search_type=video&page=5&page_size=45
  ///test bangumi: https://api.bilibili.com/x/web-interface/search/type?keyword=三国&search_type=media_bangumi&page=1&page_size=45
  static const String searchWithType = '$apiBase/x/web-interface/search/type';

  static const String getSubtitle = '$apiBase/x/player/wbi/v2';

}
