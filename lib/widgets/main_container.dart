import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';
import 'package:task1_ui_implementation_hard_level/widgets/color_transition_container.dart';

class MainContainer extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double width;
  final double height;
  final double? angle;
  final Color? begin;
  final Color? end;
  final Duration duration;
  const MainContainer({super.key, 
    this.angle,
    this.child,
    this.padding,
    required this.width,
    required this.height,
    this.begin,
    this.end,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return ColorTransitionContainer(
      duration: duration,
      begin: begin,
      end: end,
      angle: angle,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(blurRadius: 6.r, color: AppColors.shadowColor)
            ]),
        padding: padding,
        child: child,
      ),
    );
  }
}
