
import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:b_be_bee_app/widget/label_bage.dart';
import 'package:flutter/material.dart';

import '../../gen/strings.g.dart';

class UserInfoCard extends StatelessWidget {
  final String bilibiliName;
  final String level;
  final String faceUrl;
  final bool isLogin;
  final VoidCallback onTap;

  const UserInfoCard({
    required this.bilibiliName,
    required this.isLogin,
    required this.faceUrl,
    required this.onTap,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // color: Theme.of(context).colorScheme.onSecondaryContainerIfDark,

      child: InkWell(
        onTap: isLogin ? null : onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              NetworkImageByCache(
                width: 65,
                height: 65,
                imageUrl: isLogin ? faceUrl : Constants.bili_up_default_cover,
                defaultUrl: Constants.bili_up_default_cover,
              ),
              const SizedBox(width: 15),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      child: Text(
                          isLogin ? bilibiliName : t.widget.clickToLoginBili,
                          style: TextStyle(fontSize: 20)),
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      children: [
                        isLogin ? LabelBadge(
                          backgroundColor: Theme
                              .of(context)
                              .colorScheme
                              .onSecondaryContainer
                              .withOpacity(0.5),
                          foregroundColor: Theme
                              .of(context)
                              .primaryColor,
                          label: level,
                        ) :
                        LabelBadge(
                          backgroundColor: Theme
                              .of(context)
                              .colorScheme
                              .onSecondaryContainer
                              .withOpacity(0.5),
                          foregroundColor: Colors.transparent,
                          label: '                    ',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}