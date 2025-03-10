// import 'package:flutter/material.dart';
//
// class WaveVolumeIcon extends StatefulWidget {
//   @override
//   _WaveVolumeIconState createState() => _WaveVolumeIconState();
// }
//
// class _WaveVolumeIconState extends State<WaveVolumeIcon> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 500),
//       vsync: this,
//     )..repeat(reverse: true); // 循环动画，反向播放
//
//     _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller); // 从 0.0 到 1.0 的变化
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) {
//         return CustomPaint(
//           size: Size(20, 20), // 设置图标的大小
//           painter: WaveVolumePainter(_animation.value),
//         );
//       },
//     );
//   }
// }
//
// class WaveVolumePainter extends CustomPainter {
//   final double animationValue;
//
//   WaveVolumePainter(this.animationValue);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.black // 你可以根据需要更改颜色
//       ..style = PaintingStyle.fill;
//
//     // 计算波动的高度
//     double waveHeight = 2.0 * animationValue;
//
//     // 绘制三条竖线
//     for (int i = 0; i < 3; i++) {
//       double x = size.width / 4 * (i + 1); // 每条线的 x 位置
//       double y1 = size.height - waveHeight - 10; // 线的起始 y 位置
//       double y2 = size.height - waveHeight + 10; // 线的结束 y 位置
//
//       // 绘制线条
//       canvas.drawLine(Offset(x, y1), Offset(x, y2), paint);
//     }
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true; // 每次重绘
//   }
// }