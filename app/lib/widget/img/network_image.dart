import 'dart:io';

import 'package:b_be_bee_app/widget/img/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageByCache extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final Widget? errorIcon;
  final String? imageUrl;
  final String? defaultUrl;

  const NetworkImageByCache({
     this.width,
     this.height,
    required this.imageUrl,
     this.defaultUrl,
    this.boxFit = BoxFit.cover,
    this.errorIcon = const Icon(Icons.broken_image, color: Colors.grey),
  });

  @override
  Widget build(BuildContext context) {

    final url = (imageUrl?.isNotEmpty  ?? false) ? imageUrl! : defaultUrl ?? '';
    bool isUrlEmpty = url.isNotEmpty ;
    bool isUrlLocal =  url != '' && (url.startsWith('file://') || File(url).existsSync());

    if(isUrlEmpty){
      if(isUrlLocal){
        print('local image: $url');

        return Image.file(
          File(url),
          width: width,
          height: height,
          fit: boxFit,
        );
      }else{
        return CachedNetworkImage(
            imageUrl: url,
            width: width,
            height: height,
            fit: boxFit,
            placeholder: () =>
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: width,
                    height: height,
                    color: Colors.white,
                  ),
                ),
            errorWidget: () =>
                _buildErrorWidget(context)
        );
      }
    }

    return  _buildErrorWidget(context);
  }

  Widget _buildErrorWidget(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Theme.of(context).cardColor,
      child: errorIcon,
    );
  }


}

