import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:flutter/material.dart';


final imageColorProvider = FutureProvider.family<Color?, String>((ref, imageUrl) async {
  if(imageUrl.isEmpty || imageUrl == "null"){
    return Colors.grey;
  }

  bool isUrlLocal =  (imageUrl.startsWith('/')  || File(imageUrl).existsSync());

  ImageProvider? imageProvider;
  if (isUrlLocal) {
    imageProvider = FileImage(File(imageUrl));
  } else {
    imageProvider = imageUrl.isNotEmpty  ? CachedNetworkImageProvider(imageUrl): null;
  }
  if(imageProvider!= null){
    final PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
      imageProvider,
    );
    return paletteGenerator.dominantColor?.color;
  }
  return Colors.grey;

});