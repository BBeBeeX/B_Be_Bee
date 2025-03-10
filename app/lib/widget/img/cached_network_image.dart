
import 'package:cached_network_image/cached_network_image.dart' as image;
import 'package:flutter/material.dart';

class CachedNetworkImage extends image.CachedNetworkImage {
  CachedNetworkImage(
      {super.key,
      required String imageUrl,
      super.cacheManager,
      final Map<String, String>? headers,
      super.width,
      super.height,
      super.fit,
      super.filterQuality,
      Widget Function()? placeholder,
      Widget Function()? errorWidget,
      int? cacheWidth,
      int? cacheHeight})
      : super(
            imageUrl: imageUrl.startsWith('http://')
                ? imageUrl.replaceFirst('http://', 'https://')
                : imageUrl,
            httpHeaders: headers,
            placeholder:
                placeholder == null ? null : (context, url) => placeholder(),
            errorWidget:
                errorWidget == null ? null : (_, __, ___) => errorWidget(),
            memCacheWidth: cacheWidth,
            memCacheHeight: cacheHeight,
            fadeInDuration: const Duration(milliseconds: 200),
            fadeOutDuration: const Duration(milliseconds: 200),
            cacheKey: imageUrl);
}


