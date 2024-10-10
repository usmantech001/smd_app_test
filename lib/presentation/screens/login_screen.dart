import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swd_app_test/config/app_route.dart';
import 'package:swd_app_test/presentation/widgets/custom_button.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/presentation/widgets/custom_text_field.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';
import 'package:swd_app_test/utils/gradient_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.w, left: 20.w),
      decoration: BoxDecoration(
          gradient: linearGradient()
          
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 122.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: AppColors.black1E),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h, bottom: 72.h),
                child: CustomText(
                  text: 'Welcome back 👋🏾',
                  fontSize: 34.sp,
                ),
              ),
              CustomTextField(
                  labelText: "Email Address",
                  hintText: "Enter email address",
                  controller: TextEditingController()),
              CustomTextField(
                labelText: "Password",
                hintText: "Enter Password",
                controller: TextEditingController(),
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  color: AppColors.whiteColor,
                ),
              ),
             Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 32.h),
               child: const Align(
                alignment: Alignment.centerLeft,
                child: CustomText(text: "Forgot password?", color: AppColors.greyB9,)),
             ),
             CustomButton(buttonText: "Sign In", onPressed: ()=>Get.offAllNamed(AppRoute.bottomNav)),
             SizedBox(height: 16.h,),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'I don\'t have account, ',
                    style: TextStyle(
                       color: AppColors.greyB9,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp)),
                TextSpan(
                    text: 'Create account',
                    recognizer: TapGestureRecognizer()
                    ..onTap=(){
                      Get.toNamed(AppRoute.createAccount);
                    },
                    style: TextStyle(
                       color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
