import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_ui_implementation_hard_level/schedule_page.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_colors.dart';
import 'package:task1_ui_implementation_hard_level/utils/app_text_styles.dart';
import 'package:task1_ui_implementation_hard_level/widgets/app_button.dart';
import 'package:task1_ui_implementation_hard_level/widgets/infinity_rotation_animation.dart';
import 'package:task1_ui_implementation_hard_level/widgets/main_container.dart';
import 'package:task1_ui_implementation_hard_level/widgets/progress_bar.dart';
import 'package:task1_ui_implementation_hard_level/widgets/fade_animation.dart';
import 'package:task1_ui_implementation_hard_level/widgets/scale_animation.dart';
import 'package:task1_ui_implementation_hard_level/widgets/shake_animation.dart';
import 'package:task1_ui_implementation_hard_level/widgets/swap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScaleAnimation(
                    child: MainContainer(
                      duration: const Duration(seconds: 3),
                      begin: Colors.blue,
                      end: Colors.blueGrey,
                      angle: 5.79,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      width: 254.w,
                      height: 122.h,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Баланс монет: 1500 💸",
                              style: AppTextStyles.mainTextStyle,
                            ),
                            AppButton(
                              text: "Потратить",
                              height: 43.h,
                              margin: EdgeInsets.symmetric(horizontal: 34.w),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InfinityRotation(
                    child: MainContainer(
                      duration: const Duration(seconds: 2),
                      width: 113.w,
                      height: 90.h,
                      child: Center(
                          child: Text(
                        "Профиль",
                        style: AppTextStyles.mainTextStyle,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ShakeAnimation(
                duration: const Duration(seconds: 5),
                offsetX: 0,
                offsetY: 100.h,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: MainContainer(
                    duration: const Duration(seconds: 1),
                    begin: AppColors.palePurple,
                    end: AppColors.tekhelet,
                    angle: -4.58,
                    width: 302.w,
                    height: 122.h,
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Уровень достижений: 5",
                          style: AppTextStyles.mainTextStyle,
                        ),
                        const ProgressBar()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Hero(
                tag: "tag",
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SchedulePage())),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: MainContainer(
                      duration: const Duration(seconds: 4),
                      begin: AppColors.lavender,
                      end: AppColors.rosewood,
                      angle: 0.25,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 19.h),
                      width: 300.w,
                      height: 65.h,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "13:15 Обед",
                            style: AppTextStyles.mainTextStyle
                                .copyWith(fontSize: 26.sp),
                          ),
                          SvgPicture.asset(
                            "assets/icons/arrow_left.svg",
                            width: 30.sp,
                            height: 30.sp,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              FadeAnimation(
                child: MainContainer(
                  duration: const Duration(seconds: 4),
                  begin: AppColors.olive,
                  end: Colors.white,
                  angle: 2.76,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  width: 354.w,
                  height: 168.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Сейчас идёт",
                        style: AppTextStyles.mainTextStyle.copyWith(
                            color: AppColors.red,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp),
                      ),
                      Text(
                        "1 Смена 2022",
                        style: AppTextStyles.mainTextStyle
                            .copyWith(fontSize: 28.sp),
                      ),
                      Text(
                        "Корпус №3       Отряд №2",
                        style: AppTextStyles.mainTextStyle.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 15.sp),
                      ),
                      AppButton(text: "Чат отряда (3 сообщ.)", height: 40.h),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainContainer(
                    duration: const Duration(seconds: 1),
                    begin: AppColors.darkPurple,
                    end: Colors.white,
                    angle: 1.51,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                    width: 165.w,
                    height: 170.h,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Баланс кристаллов: 200 💎",
                            style: AppTextStyles.mainTextStyle,
                          ),
                          AppButton(
                            margin: EdgeInsets.symmetric(horizontal: 11.w),
                            height: 43.h,
                            text: "Потратить",
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 175.w,
                    height: 170.h,
                    child: SwapAnimation(
                      firstWidgetTop: 0.h,
                      secondWidgetTop: 90.h,
                      children: [
                        MainContainer(
                          duration: const Duration(milliseconds: 3000),
                          begin: Colors.black,
                          end: Colors.white,
                          angle: 3.75,
                          width: 175.w,
                          height: 74.h,
                          child: Center(
                              child: Text(
                            "Секции",
                            style: AppTextStyles.mainTextStyle,
                          )),
                        ),
                        MainContainer(
                          duration: const Duration(milliseconds: 3000),
                          begin: Colors.white,
                          end: Colors.black,
                          angle: -2.32,
                          width: 175.w,
                          height: 74.h,
                          child: Center(
                              child: Text(
                            "Мои смены",
                            style: AppTextStyles.mainTextStyle,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
