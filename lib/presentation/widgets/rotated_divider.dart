import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

Widget rotatedDivider() {
  return RotatedBox(
    quarterTurns: 1,
    child: SizedBox(
        width: 17.h,
        child: const Divider(
          color: AppColors.greyD6,
          thickness: 1,
        )),
  );
}
