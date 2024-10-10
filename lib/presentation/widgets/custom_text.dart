import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.color = AppColors.whiteColor,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w400,
      this.textOverflow,
      this.textDecoration = TextDecoration.none});
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign = TextAlign.start;
  final TextOverflow? textOverflow;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: TextStyle(
          color: color,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          decorationColor: AppColors.primaryColor,
          decoration: textDecoration),
    );
  }
}

class CustomGradientText extends StatelessWidget {
  const CustomGradientText(
      {super.key,
      required this.text,
      
      this.fontSize = 14,
      this.fontWeight = FontWeight.w400,
      this.textOverflow,
      this.textDecoration = TextDecoration.none});
  final String text;
 
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign = TextAlign.start;
  final TextOverflow? textOverflow;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>const LinearGradient(colors: [
        AppColors.primaryColor,
        AppColors.gradientColor2
      ]).createShader(Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
      child: Text(
        text,
        textAlign: textAlign,
        overflow: textOverflow,
        style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
            decorationColor: AppColors.primaryColor,
            decoration: textDecoration),
      ),
    );
  }
}


