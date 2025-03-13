import 'dart:io';

import 'package:b_be_bee_app/config/init.dart';
import 'package:b_be_bee_app/controller/settings_controller.dart';
import 'package:b_be_bee_app/provider/logging/common_logs_provider.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:b_be_bee_app/util/toast_util.dart';
import 'package:b_be_bee_app/util/version_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../controller/download_installation_package_controller.dart';
import '../v1/pages/login/common/api/github_api.dart';
import '../v1/pages/login/common/api/github_releases_item.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../widget/dialogs/install_dialog.dart';
import '../widget/dialogs/update_ask_dialog.dart';
import '../widget/dialogs/update_incompatible_dialog.dart';
import 'native/permission_helper.dart';
import 'package:path_provider/path_provider.dart';



class UpdateUtils{
  static GithubReleasesItemModel? model;
  static Ref? ref;

  static Future<void> getGithubDetail()async{
    model = await GithubApi.requestLatestRelease();
  }

  static Future<(int,String)> isNewestVersion()async{
    if(model == null){
      await getGithubDetail();
    }
    final githubVersion = model?.tagName?.replaceFirst('v', '');

    PackageInfo version = await VersionUtils.getVersion();
    final localVersion = version.version;

    final compare = VersionUtils.toCompare(githubVersion!, localVersion);
    return (compare,githubVersion);
  }

  static Future<void> getLatestVersion(Ref? ref,{bool isActive = false}) async {
    UpdateUtils.ref ??= ref;

    try{
      final (compare,githubVersion) = await isNewestVersion();

      if(isActive){
        if(compare >= 1){
          await onlineUpdate(true);
        }
      }else{
        if(ref!.read(settingsProvider).isAutoUpdate){
          if(compare >= 1){
            await onlineUpdate(true);
          }
        }else{
          if(compare == 2 && ref.read(settingsProvider).isUpdateRemind ){

            await UpdateAskDialog.open(
                Routerino.navigatorKey.currentContext!,
                '版本 $githubVersion', model?.body ??'');
          }
        }
      }

    }catch(e){
      container.read(commonLoggerProvider.notifier).addLog('get latest version error: ${e.toString()}');
    }
  }

  static Future<void> onlineUpdate(bool isSilent)async {
    try{
      if(checkPlatform([TargetPlatform.android])){
        await updateInAndroid(isSilent);
      }else if(checkPlatform([TargetPlatform.iOS])){
        //TODO
      }else if(checkPlatform([TargetPlatform.windows])){
        await updateInWindows(isSilent);
      }else if(checkPlatform([TargetPlatform.linux])){
        //TODO
      }else if(checkPlatform([TargetPlatform.macOS])){
        //TODO
      }

    }catch(e){
      container.read(commonLoggerProvider.notifier).addLog('onlineUpdate error: ${e.toString()}');
    }
  }

  static Future<void> updateInWindows(bool isSilent)async{
    if(model == null){
      await getGithubDetail();
    }

    final downloadUrl = model?.assets?.firstWhere((asset) => asset?.name?.contains('windows-x86-64.zip') ?? false
        ,orElse: () => Asset())?.browserDownloadUrl;

    await update(downloadUrl,isSilent,TargetPlatform.windows);

  }

  static Future<void> updateInAndroid(bool isSilent)async {
    if(model == null){
      await getGithubDetail();
    }

    String osVersion = Platform.operatingSystemVersion.toLowerCase();
    String? downloadUrl;

    if (osVersion.contains("armv8") || osVersion.contains("aarch64")) {
      //arm64-v8a
      downloadUrl = model?.assets?.firstWhere((asset) => asset?.name?.contains('arm64') ?? false
      ,orElse: () => Asset())?.browserDownloadUrl;

    } else if (osVersion.contains("armv7")) {
      //armeabi-v7a
      downloadUrl = model?.assets?.firstWhere((asset) => asset?.name?.contains('arm32') ?? false
          ,orElse: () => Asset())?.browserDownloadUrl;

    } else if (osVersion.contains("x86_64")||osVersion.contains("i686") || osVersion.contains("x86")) {
      //x86_64
      downloadUrl = model?.assets?.firstWhere((asset) => asset?.name?.contains('android-x86_64') ?? false
          ,orElse: () => Asset())?.browserDownloadUrl;

    } else{
      await UpdateIncompatibleDialog.open(Routerino.navigatorKey.currentContext!);
    }

    await update(downloadUrl,isSilent,TargetPlatform.android);

  }

  static Future<void> update(String? downloadUrl,bool isSilent,TargetPlatform platform)async{
    if(downloadUrl!=null && downloadUrl.isNotEmpty){
      await getFilePermission();

      final savePath = await getSavePath(downloadUrl,platform);

      container.read(commonLoggerProvider.notifier).addLog('download installation package $downloadUrl}');
      UpdateUtils.ref?.read(downloadInstallationPackageProvider.notifier).startDownload(downloadUrl, savePath,platform);


      if(!isSilent){
        await showDialog(
          context: Routerino.navigatorKey.currentContext!,
          barrierDismissible: false,
          builder: (context) => InstallDialog(
            url: downloadUrl ??'',
            savePath: savePath,
            platform: platform,
          ),
        );
      }
    }else{
      await ToastUtil.show('查询安装包错误');
    }
  }

  static Future<String> getSavePath(String downloadUrl,TargetPlatform platform) async{
    Directory? dir;
    if(platform == TargetPlatform.android){
      dir = await getExternalStorageDirectory();
    }else{
      dir = await getDownloadsDirectory();
    }
    if (dir != null) {
      String? suffix;
      int dotIndex = downloadUrl.lastIndexOf('.');
      if (dotIndex != -1) {
        suffix =  downloadUrl.substring(dotIndex + 1);
      }
      return  '${dir.path}/downloaded_app.$suffix';
    }else{
      return '';
    }
  }

}