import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, required this.onPressed});
 final VoidCallback onPressed;
 final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.sp),
      gradient: const LinearGradient(
        end: Alignment.bottomRight,
        stops: [
          0.7,
          1.0
        ],
        colors: [
        AppColors.primaryColor,
        AppColors.gradientColor2
      ])
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
           // minimumSize: Size(width.w, 44.h),
           fixedSize: Size(double.infinity, 50.h),
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              
            )),
        child:   CustomText(text: buttonText, fontSize: 16),
      ),
    );
  }
}