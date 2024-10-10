import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      
      required this.labelText,
      required this.hintText,
      required this.controller,
      this.suffixIcon,
      this.secondText,
      this.prefixIcon,
      this.keyboardType,
      this.onChanged,
      this.obscureText = false,
      this.focusNode,
      this.minLines,
      this.maxLines,
      this.hasFocusShadow = true});

  final TextEditingController controller;
  final String labelText;
  final FocusNode? focusNode;
  final String hintText;
  final Widget? prefixIcon;
  final String? secondText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final bool obscureText;
  final bool hasFocusShadow;
  final int? minLines;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: labelText,
             fontSize: 16,),
          SizedBox(
            height: 8.h,
          ),
          Container(
          //  width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.black29,
                borderRadius: BorderRadius.circular(8.sp),
               
                    ),
            child: TextField(
              cursorColor: AppColors.whiteColor,
              controller: controller,
              focusNode: focusNode,
            //  cursorColor: AppColors.primary500,
              keyboardType: keyboardType,
              onChanged: onChanged,
              obscureText: obscureText,
              minLines: minLines,
              maxLines: maxLines,
              cursorOpacityAnimates: true,
              style: const TextStyle(color: AppColors.whiteColor),
              decoration: InputDecoration(
                 
                  hintText: hintText,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,
                  isDense: true,
                  enabledBorder: outlineInputBorder(),
                  focusedBorder:
                      outlineInputBorder(color: AppColors.primaryColor),
                  hintStyle: TextStyle(
                      color: AppColors.greyA4,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          secondText != null
              ? SizedBox(
                  height: 5.h,
                )
              : SizedBox(
                  width: 0.w,
                  height: 0.h,
                ),

         
        ],
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder({Color color = AppColors.black51}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.sp),
      borderSide: BorderSide(
        color: color,
      ));
}