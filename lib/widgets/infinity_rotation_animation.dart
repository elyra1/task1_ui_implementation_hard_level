import 'package:flutter/material.dart';

class InfinityRotation extends StatefulWidget {
  final Widget? child;
  const InfinityRotation({Key? key, this.child}) : super(key: key);

  @override
  _InfinityRotationState createState() => _InfinityRotationState();
}

class _InfinityRotationState extends State<InfinityRotation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat(reverse: false);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: widget.child,
    );
  }
}
