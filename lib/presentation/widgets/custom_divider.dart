import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

Widget cusTomDivider({
  int index = 0,
}) {
  return Row(
    children: [
      const Flexible(
          child: Divider(
        color: AppColors.whiteColor,
        thickness: 3,
      )),
      SizedBox(
        width: 8.w,
      ),
       Flexible(
          child: Divider(
        color: index == 1 ? AppColors.whiteColor : AppColors.black37,
        thickness: 3,
      )),
    ],
  );
}
