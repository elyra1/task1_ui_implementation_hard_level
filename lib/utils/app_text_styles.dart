import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle mainTextStyle = TextStyle(
      color: AppColors.darkGreen,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat");
  static TextStyle buttonTextStyle = TextStyle(
      color: AppColors.blue,
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Spartan");
}
