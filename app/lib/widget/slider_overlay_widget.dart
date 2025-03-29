import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliderOverlayWidget extends ConsumerStatefulWidget {
  final String title;
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final Function(double) onChanged;
  final Function(double) onChangeEnd;
  final VoidCallback onDismiss;

  const SliderOverlayWidget({
    super.key,
    required this.title,
    required this.value,
    required this.min,
    required this.max,
    this.divisions,
    required this.onChanged,
    required this.onChangeEnd,
    required this.onDismiss,
  });

  @override
  ConsumerState<SliderOverlayWidget> createState() => _SliderOverlayWidgetState();
}

class _SliderOverlayWidgetState extends ConsumerState<SliderOverlayWidget> {
  late double currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onDismiss,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {}, // 防止点击内部时关闭
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: currentValue,
                              min: widget.min,
                              max: widget.max,
                              divisions: widget.divisions,
                              onChanged: (value) {
                                setState(() {
                                  currentValue = value;
                                });
                                widget.onChanged(value);
                              },
                              onChangeEnd: widget.onChangeEnd,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              currentValue.toStringAsFixed(2),
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 