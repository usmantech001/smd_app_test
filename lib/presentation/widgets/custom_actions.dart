import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';

import '../../utils/constants/app_colors.dart';

Widget customAction(
  {
    required String label, required String imgPath
  }
){
  return  SizedBox(
                height: 48.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/$imgPath.png', height: 20.h, width: 20.w,),
                    CustomText(text: label, color: AppColors.black4B, fontWeight: FontWeight.w500,)
                  ],
                ),
              );
}