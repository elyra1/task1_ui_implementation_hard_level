import 'package:flutter/material.dart';
import 'package:task1_ui_implementation_hard_level/curves/sine_curve.dart';

class ShakeAnimation extends StatefulWidget {
  final Widget? child;
  final double offsetX;
  final double offsetY;
  final Duration duration;
  const ShakeAnimation(
      {Key? key,
      this.child,
      required this.offsetX,
      required this.offsetY,
      required this.duration})
      : super(key: key);

  @override
  _ShakeAnimationState createState() => _ShakeAnimationState();
}

class _ShakeAnimationState extends State<ShakeAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: widget.duration, vsync: this);
  late final Animation<double> _animation =
      Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
    parent: _controller,
    curve: const SineCurve(count: 2),
  ));

  void shake() {
    _controller.forward();
  }

  @override
  void initState() {
    super.initState();
    // 1. register a status listener
    _controller.addStatusListener(_updateStatus);
  }

  @override
  void dispose() {
    // 2. dispose it when done
    _controller.removeStatusListener(_updateStatus);
    super.dispose();
  }

  void _updateStatus(AnimationStatus status) {
    // 3. reset animationController when the animation is complete
    if (status == AnimationStatus.completed) {
      _controller.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        child: widget.child,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(_animation.value * widget.offsetX,
                _animation.value * widget.offsetY),
            child: GestureDetector(onTap: () => shake(), child: child),
          );
        });
  }
}
