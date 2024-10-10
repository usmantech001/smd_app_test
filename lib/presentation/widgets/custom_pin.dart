// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pinput/pinput.dart';
// import 'package:swd_app_test/utils/constants/app_colors.dart';

// class CustomPin extends StatelessWidget {
//   const CustomPin({super.key, required this.codeController});
//   final TextEditingController codeController;

//   @override
//   Widget build(BuildContext context) {
//     return Pinput.builder(
//         length: 6,
//         controller: codeController,
//         onChanged: (value) {
//         },
//         separatorBuilder: (index) => index == 2
//             ? Container(
//                 margin: EdgeInsets.symmetric(horizontal: 8.w),
//                 width: 20.w,
//                 height: 4.h,
//                 color: AppColors.whiteColor,
//               )
//             : const SizedBox(),
//         builder: (context, state) {
//           //  print(state.index);

//           return Container(
//             margin: EdgeInsets.only(right: state.index == 2 ? 0.w : 8.w),
//             height: 48.h,
//             width: 39.w,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               border: Border.all(
//                   color: state.index < codeController.text.length
//                       ? AppColors.whiteColor
//                       : AppColors.greyB9),
//               borderRadius: BorderRadius.circular(8.sp),
//             ),
//             child: customText(
//                 text: state.index < codeController.text.length
//                     ? codeController.text[state.index]
//                     : '0',
//                 fontWeight: FontWeight.w500,
//                 color: state.index < codeController.text.length
//                     ? AppColors.lightGreen500
//                     : AppColors.grey300,
//                 fontSize: 25),
//           );
//         });
//   }
// }