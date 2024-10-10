import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swd_app_test/config/app_route.dart';
import 'package:swd_app_test/presentation/screens/login_screen.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.hasSecondText = true});
final bool hasSecondText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: const Row(
            children: [
              Icon(
                Icons.navigate_before,
                color: AppColors.greyB9,
              ),
              CustomText(
                text: "Back",
                fontSize: 16,
                color: AppColors.greyB9,
              )
            ],
          ),
        ),
       !hasSecondText?SizedBox(): TextButton(
          onPressed: () => Get.toNamed(AppRoute.initial),
          child: const CustomGradientText(
            text: 'Sign in instead',
            fontSize: 16,
            textDecoration: TextDecoration.underline,
          ),
        )
      ],
    );
  }
}
