import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_text_styles.dart';
import 'package:task1_ui_implementation_hard_level/widgets/shake_animation.dart';

class AppButton extends StatelessWidget {
  final double height;
  final Function()? onTap;
  final EdgeInsets? margin;
  final String text;
  const AppButton({
    this.onTap,
    super.key,
    required this.height,
    this.margin,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ShakeAnimation(
      duration: const Duration(seconds: 3),
      offsetX: 10.w,
      offsetY: 0,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(15.r),
          ),
          margin: margin,
          height: height,
          child: Center(
              child: Text(
            text,
            style: AppTextStyles.buttonTextStyle,
          )),
        ),
      ),
    );
  }
}
