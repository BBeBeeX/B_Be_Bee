import 'dart:ui';
import 'package:flutter/material.dart';


class GlassWidget extends StatelessWidget {
  final Widget child;
  final double sigmaX;
  final double sigmay;

  const GlassWidget({
    required this.child,
    this.sigmaX = 60,
    this.sigmay = 60,

  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            // border: Border.all(color: Colors.white.withOpacity(0.3),width: 1)
        ),
        // margin: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmay),
              child: Stack(
                children: [
                  child
                ],
              )
          ),
        ),
      ),
    );
  }
}
