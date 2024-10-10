import 'package:flutter/material.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

Gradient linearGradient(){
  return  LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            AppColors.gradientColor2.withOpacity(0.2),
            AppColors.black14,
          ],
              stops: const [
            0.0,
            0.13
          ]);
}