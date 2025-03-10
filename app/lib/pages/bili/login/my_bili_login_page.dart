

import 'package:b_be_bee_app/controller/bili/login/bili_my_login_page_controller.dart';
import 'package:b_be_bee_app/model/enum/bili_login_model_enum.dart';
import 'package:b_be_bee_app/pages/bili/login/password_login_view.dart';
import 'package:b_be_bee_app/pages/bili/login/qr_code_login_view.dart';
import 'package:b_be_bee_app/pages/bili/login/sms_login_view.dart';
import 'package:b_be_bee_app/util/native/platform_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../gen/strings.g.dart';
import 'bili_login_webview.dart';

class MyBiliLoginPage extends ConsumerStatefulWidget {
  const MyBiliLoginPage({super.key});

  @override
  ConsumerState<MyBiliLoginPage> createState() => _MyBiliLoginPageState();
}

class _MyBiliLoginPageState extends ConsumerState<MyBiliLoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    if(checkPlatformIsDesktop()){
      _tabController = TabController(length: 2, vsync: this);
    }else{
      _tabController = TabController(length: 4, vsync: this);
    }
     ref.read(biliMyLoginTabProvider.notifier).setTabController(_tabController);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginTabState = ref.watch(biliMyLoginTabProvider);

    return DefaultTabController(
      length: _tabController.length,
      initialIndex: loginTabState.currentTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title:  Text(t.general.login),
          bottom: TabBar(
            controller: _tabController,
            tabs: checkPlatformIsDesktop()
                ? [Tab(text: LoginModeEnum.qrcode.getLabel()),Tab(text: LoginModeEnum.web.getLabel())]
                : LoginModeEnum.values.map((mode) =>
              Tab(text: mode.getLabel())
            ).toList(),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            if(!checkPlatformIsDesktop())
            const PasswordLoginView(),
            if(!checkPlatformIsDesktop())
              const SmsLoginView(),
            const QrcodeLoginView(),
            const BiliLoginWebView()
            ],
        ),
      ),
    );
  }
}