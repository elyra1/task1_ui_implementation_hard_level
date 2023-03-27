import 'package:flutter/material.dart';


class SwapAnimation extends StatefulWidget {
  final List<Widget> children;
  final double firstWidgetTop;
  final double secondWidgetTop;
  const SwapAnimation({Key? key, required this.children, required this.firstWidgetTop, required this.secondWidgetTop}) : super(key: key);

  @override
  _SwapAnimationState createState() => _SwapAnimationState();
}

class _SwapAnimationState extends State<SwapAnimation>
    with TickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;
  animationListener() => setState(() {});

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);

    animation = Tween(
      begin: 0.0,
      end: widget.secondWidgetTop - widget.firstWidgetTop,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 1.0, curve: Curves.easeInOutQuart),
    ))
      ..addListener(animationListener);

  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tweenValue = animation.value;
    return Stack(
      children: [
        Positioned(top: widget.firstWidgetTop + tweenValue, child: widget.children[0]),
        Positioned(top: widget.secondWidgetTop - tweenValue, child: widget.children[1])
      ],
    );
  }
}
