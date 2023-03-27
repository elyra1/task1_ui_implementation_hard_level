import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  final Widget? child;
  const ScaleAnimation({Key? key, this.child}) : super(key: key);

  @override
  _ScaleAnimationState createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation>
    with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);
  late final Animation<double> animation =
      CurvedAnimation(parent: controller, curve: Curves.easeInOutQuart);

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: widget.child,
    );
  }
}
