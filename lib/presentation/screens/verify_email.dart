import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:swd_app_test/config/app_route.dart';
import 'package:swd_app_test/presentation/widgets/custom_app_bar.dart';
import 'package:swd_app_test/presentation/widgets/custom_button.dart';
import 'package:swd_app_test/presentation/widgets/custom_divider.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';
import 'package:swd_app_test/utils/gradient_color.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(top: 59.h, right: 20.w, left: 20.w),
      decoration: BoxDecoration(
          gradient: linearGradient()),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(hasSecondText: false,),
                  Padding(
                    padding: EdgeInsets.only(top: 56.h, bottom: 15.h),
                    child: const CustomText(text: "Verify your email", fontSize: 29, fontWeight: FontWeight.w300,),
                  ),
                    Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Please enter the OTP sent to ',
                    style: TextStyle(
                       color: AppColors.greyB9,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp)),
                TextSpan(
                    text: 'tolu.ab19@gmail.com',
                   
                    style: TextStyle(
                       color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp))
              ])),
              
                    Padding(
                      padding: EdgeInsets.only(top: 32.h),
                      child: Center(
                        child: SizedBox(
              height: 52.w,
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                length: 6,
              //  obscureText: true,
                
                onChanged: (value) => null,
                separatorBuilder: (index) => index==2?const CustomText(text: '-'):const SizedBox(),
                defaultPinTheme: PinTheme(
                    width: 46.w,
                    height: 52.w,
                    textStyle: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 21.sp),
                    decoration: BoxDecoration(
                      color: AppColors.black29,
                        border: Border.all(color: AppColors.black51),
                        borderRadius: BorderRadius.circular(8.sp))),
                disabledPinTheme:  PinTheme(
                 width: 46.w,
                    height: 52.w,
                    textStyle: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 21.sp),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyB9,
                      
                    ),
                    
                     borderRadius: BorderRadius.circular(8.sp)
                  )
                ),
                submittedPinTheme: PinTheme(
                 width: 46.w,
                    height: 52.w,
                    textStyle: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 21.sp),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.greyB9,
                      
                    ),
                    
                     borderRadius: BorderRadius.circular(8.sp)
                  )
                ),
                focusedPinTheme: PinTheme(
                   width: 46.w,
                    height: 52.w,
                    textStyle: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 21.sp),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyB9),
                        borderRadius: BorderRadius.circular(8.sp))),
              ),
                        ),
                      ),
                    ),
              
                      Padding(
                  padding: EdgeInsets.only(top: 332.h, bottom: 32.h),
                  child: CustomButton(buttonText: "Verify email", onPressed: () => Get.offAllNamed(AppRoute.bottomNav)),
                ),
                 cusTomDivider(index: 1),
                SizedBox(height: 15.5.h,),
                const Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "Email Verification",
                    color: AppColors.greyA4,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                )
                ],
              ),
            ),
          ),
    );
  }
}