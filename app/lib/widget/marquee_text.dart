import 'package:flutter/material.dart';

class MarqueeText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const MarqueeText({super.key,
    required this.text,
    this.style =  const TextStyle(fontWeight: FontWeight.bold),
  });

  @override
  _MarqueeTextState createState() => _MarqueeTextState();
}

class _MarqueeTextState extends State<MarqueeText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();

    // 初始化 AnimationController 和动画效果
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6),  // 控制滚动的速度
    )..repeat(reverse: true);  // 不停地滚动

    _offset = Tween<Offset>(
      begin: Offset(1.0, 0.0),  // 从右边开始
      end: Offset(-1.0, 0.0),   // 到达左边
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,  // 匀速滚动
    ));

    // 停顿效果
    Future.delayed(Duration(seconds: 6), () {
      _controller.forward(from: 0.0); // 停顿后重新开始滚动
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offset,
      child: Text(
        widget.text,
        style: widget.style,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
