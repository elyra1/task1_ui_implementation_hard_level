import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';

class ColorTransitionContainer extends StatefulWidget {
  final Widget? child;
  final Color? begin;
  final Color? end;
  final double? angle;
  final Duration duration;
  const ColorTransitionContainer(
      {Key? key,
      this.child,
      this.begin,
      this.end,
      this.angle,
      required this.duration})
      : super(key: key);

  @override
  _ColorTransitionContainerState createState() =>
      _ColorTransitionContainerState();
}

class _ColorTransitionContainerState extends State<ColorTransitionContainer>
    with TickerProviderStateMixin {
  animationListener() => setState(() {});
  late AnimationController controller;
  late Animation<Color?> animation;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat(reverse: true);
    animation = ColorTween(begin: widget.begin, end: widget.end)
        .animate(controller)
      ..addListener(animationListener);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color? tweenColor = animation.value;
    return Transform(
      alignment: Alignment.center,
      transform: widget.angle == null
          ? Matrix4.rotationZ(0)
          : Matrix4.rotationZ(widget.angle! * -pi / 180),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: tweenColor ?? AppColors.shadowColor,
              blurRadius: 6.r,
            )
          ],
        ),
        child: widget.child,
      ),
    );
  }
}
