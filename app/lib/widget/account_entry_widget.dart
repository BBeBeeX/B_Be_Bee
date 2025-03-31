import 'package:b_be_bee_app/controller/bili/bili_user_provider.dart';
import 'package:b_be_bee_app/controller/main_page_controller.dart';
import 'package:b_be_bee_app/gen/strings.g.dart';
import 'package:b_be_bee_app/model/enum/main_tab_enum.dart';
import 'package:b_be_bee_app/widget/dialogs/bili_login_dialog.dart';
import 'package:b_be_bee_app/widget/settings_entry.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routerino/routerino.dart';

import '../pages/bili/bili_my_page.dart';
import '../util/native/platform_check.dart';

class AccountEntryWidget extends ConsumerWidget {
  final bool isDesktopTopBar;

  const AccountEntryWidget({
    this.isDesktopTopBar = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final biliUserState = ref.watch(biliUserProvider);
    final biliUserController = ref.read(biliUserProvider.notifier);

    if (isDesktopTopBar) {
      return PopupMenuButton<String>(
        padding: const EdgeInsets.all(0),
        icon: const Icon(Icons.person_outline),
        onSelected: (value) async {
          if (value == 'bili') {
            if (biliUserState.isLogin) {
              if (checkPlatformIsDesktop()) {
                if (biliUserState.isLogin) {
                  context.push(() => MyBiliPage());
                }
              } else {
                await ref
                    .read(mainPageProvider.notifier)
                    .changeTab(MainTabEnum.settings);
              }
            } else {
              await BiliLoginDialog.show(context);
            }
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              enabled: false,
              child: Text(t.settingsPage.account.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            PopupMenuItem<String>(
                value: 'bili',
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: biliUserState.avatarUrl.isNotEmpty
                          ? CachedNetworkImageProvider(biliUserState.avatarUrl)
                          : null,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('BiliBili'),
                          Text(
                            biliUserState.isLogin
                                ? (biliUserState.username != ''
                                    ? biliUserState.username
                                    : t.widget.hasLogin)
                                : t.widget.noLogin,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (biliUserState.isLogin)
                      TextButton(
                        onPressed: () {
                          biliUserController.logout();
                          context.pop();
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.red,
                        ),
                        child: Text(t.widget.logout),
                      ),
                  ],
                )),
          ];
        },
      );
    } else {
      return SettingsSection(
        title: t.settingsPage.account.title,
        children: [
          _AccountEntry(
            platformName: 'BiliBili',
            username: biliUserState.username,
            avatarUrl: biliUserState.avatarUrl,
            isLogin: biliUserState.isLogin,
            onLogout: () {
              biliUserController.logout();
            },
          ),
        ],
      );
    }
  }
}

class _AccountEntry extends StatelessWidget {
  final String platformName;
  final String? username;
  final String? avatarUrl;
  final bool isLogin;
  final VoidCallback onLogout;

  const _AccountEntry({
    required this.platformName,
    this.username,
    this.avatarUrl,
    required this.isLogin,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: avatarUrl != null && avatarUrl!.isNotEmpty
                ? CachedNetworkImageProvider(avatarUrl!)
                : null,
            child: avatarUrl == null ? Icon(Icons.person) : null,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(platformName),
                Text(
                  isLogin ? username ?? t.widget.hasLogin : t.widget.noLogin,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          if (isLogin)
            TextButton(
              onPressed: onLogout,
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: Text(t.widget.logout),
            ),
        ],
      ),
    );
  }
}
