import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:b_be_bee_app/controller/bili/login/bili_my_login_page_controller.dart';
import 'package:b_be_bee_app/controller/bili/login/bili_qr_code_login_controller.dart';
import 'package:b_be_bee_app/controller/bili/login/bili_sms_login_controller.dart';
import 'package:b_be_bee_app/controller/bili/login/bili_password_login_controller.dart';
import 'package:b_be_bee_app/pages/bili/login/qr_code_login_view.dart';
import 'package:b_be_bee_app/pages/bili/login/sms_login_view.dart';
import 'package:b_be_bee_app/pages/bili/login/password_login_view.dart';

import '../gen/strings.g.dart';
import '../pages/bili/login/bili_login_webview.dart';

class BiliLoginDialogWidget extends ConsumerStatefulWidget {
  const BiliLoginDialogWidget({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const BiliLoginDialogWidget(),
    );
  }

  @override
  _BiliLoginDialogWidgetState createState() => _BiliLoginDialogWidgetState();
}

class _BiliLoginDialogWidgetState extends ConsumerState<BiliLoginDialogWidget> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: 400,
        height: 500,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t.widget.loginBiliBili,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TabBar(
              controller: _tabController,
              tabs:  [
                Tab(text: t.widget.qrcodeLogin),
                Tab(text: t.widget.webLogin),
                // Tab(text: '短信登录'),
                // Tab(text: '密码登录'),
              ],
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // 扫码登录
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: QrcodeLoginView(),
                  ),

                  // webview登录
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: BiliLoginWebView(),
                  ),

                  // gt3 不支持桌面端
                  // // 短信登录
                  // Padding(
                  //   padding: const EdgeInsets.all(16.0),
                  //   child: SmsLoginView(),
                  // ),
                  //
                  // // 密码登录
                  // Padding(
                  //   padding: const EdgeInsets.all(16.0),
                  //   child: PasswordLoginView(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}