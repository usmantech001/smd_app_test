import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swd_app_test/config/app_route.dart';
import 'package:swd_app_test/presentation/widgets/custom_app_bar.dart';
import 'package:swd_app_test/presentation/widgets/custom_button.dart';
import 'package:swd_app_test/presentation/widgets/custom_divider.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/presentation/widgets/custom_text_field.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';
import 'package:swd_app_test/utils/gradient_color.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( right: 20.w, left: 20.w),
      //height: MediaQuery.sizeOf(context).height,
      decoration: BoxDecoration(
          gradient: linearGradient()),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 59.h,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(top: 25.h, bottom: 25.h),
                child: CustomText(
                  text: 'Create Account',
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Row(
               
                children: [
                  Flexible(
                    child: CustomTextField(
                        labelText: "First Name",
                        hintText: "First name",
                        controller: TextEditingController()),
                  ),
                  SizedBox(width: 10.w,),
                  Flexible(
                    child: CustomTextField(
                        labelText: "Last Name",
                        hintText: "Last name",
                        controller: TextEditingController()),
                  )
                ],
              ),
              CustomTextField(
                  labelText: "Email Address",
                  hintText: "Enter email address",
                  controller: TextEditingController()),
              CustomTextField(
                labelText: "Create Password",
                hintText: "Enter Password",
                controller: TextEditingController(),
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  color: AppColors.whiteColor,
                ),
              ),
              CustomTextField(
                labelText: "Referral Code (Optional)",
                hintText: "Enter Referral Code",
                controller: TextEditingController(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h, bottom: 32.h),
                child: CustomButton(buttonText: "Next", onPressed: () => Get.toNamed(AppRoute.verifyEmail)),
              ),
               cusTomDivider(),
              SizedBox(height: 15.5.h,),
              const CustomText(
                text: "Account Information",
                color: AppColors.greyA4,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
