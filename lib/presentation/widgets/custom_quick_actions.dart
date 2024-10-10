import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

Widget customQuickAction({required String label, required String imgPath}) {
  return Container(
    height: 75.h,
    width: 78.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.sp),
      color: AppColors.black28,
    ),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imgPath,
          height: 20.h,
          width: 20.w,
        ),
        SizedBox(height: 5.h,),
        CustomText(
          text: label,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w200,
        )
      ],
    ),
  );
}
