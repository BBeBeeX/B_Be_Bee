import 'package:b_be_bee_app/common/constants.dart';
import 'package:b_be_bee_app/widget/img/network_image.dart';
import 'package:flutter/material.dart';

class CollectsItem extends StatelessWidget {
  final String title;
  final String count;
  final String? coverUrl;
  final VoidCallback? onTap;

  const CollectsItem({
    super.key,
    required this.title,
    required this.count,
    this.coverUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            // 封面图片
            const SizedBox(width: 8),

            Container(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: NetworkImageByCache(width: 60,
                    height: 60,
                    imageUrl: (coverUrl?.isNotEmpty ?? false) ? coverUrl! : Constants.bili_video_default_cover,
                    defaultUrl: '',
                    errorIcon: const Icon(Icons.music_note)),
              ),
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    count,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}