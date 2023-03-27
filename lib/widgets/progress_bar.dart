import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({
    super.key,
  });

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double rightPadding = 220;
  double a = 44;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        if (rightPadding <= 0) a *= -1;
        if (rightPadding >= 220 && a == -44) a *= -1;
        rightPadding -= a;
      }),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(15.r),
        ),
        width: 220.w,
        height: 31.h,
        child: AnimatedPadding(
          padding: EdgeInsets.only(right: rightPadding.w),
          duration: const Duration(milliseconds: 500),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
      ),
    );
  }
}
