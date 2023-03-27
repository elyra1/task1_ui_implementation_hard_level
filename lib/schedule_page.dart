import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_text_styles.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: AppColors.darkGreen,),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Hero(
        tag: "tag",
        child: Center(
            child: Text(
          "Тут скоро появится расписание! :)",
          style: AppTextStyles.mainTextStyle.copyWith(fontSize: 26.sp),
          textAlign: TextAlign.center,
        )),
      ),
    );
  }
}
