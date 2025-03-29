import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlurTransition extends AnimatedWidget {
  const BlurTransition({
    super.key,
    required this.sigma,
    this.child,
  }) : super(listenable: sigma);

  final Animation<double> sigma;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigma.value, sigmaY: sigma.value),
      child: child,
    );
  }
}
