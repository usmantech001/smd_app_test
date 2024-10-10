import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swd_app_test/presentation/widgets/custom_actions.dart';
import 'package:swd_app_test/presentation/widgets/custom_icon.dart';
import 'package:swd_app_test/presentation/widgets/custom_quick_actions.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/presentation/widgets/rotated_divider.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> quickActionsNames = [
      'Data',
      'Airtime',
      'Showmax',
      'GiftCards',
      'Betting',
      'Electricity',
      'Tv/Cable',
      'E-Pin'

    ];

    List<String> quickActionsImagePath = [
      'assets/images/data.png',
      'assets/images/airtime.png',
      'assets/images/showmax.png',
      'assets/images/gift-card.png',
      'assets/images/betting.png',
      'assets/images/electricity.png',
      'assets/images/tv.png',
      'assets/images/e-pin.png'

    ];
    return Scaffold(
      backgroundColor: AppColors.black14,
      floatingActionButton: Container(
        height: 52.h,
        width: 52.w,
        padding: EdgeInsets.all(10.sp),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            AppColors.primaryColor,
            AppColors.gradientColor2
          ])
        ),
        child: Image.asset('assets/images/message.png'),
      ),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 45.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(24.sp),
            bottomLeft: Radius.circular(24.sp),
          ),
        ),
        
        bottom: PreferredSize(preferredSize: Size.fromHeight(300.h), child: Container(
        
          padding: EdgeInsets.only(right: 20.w, left: 20.w ),
          height: 300.h,
          width: double.infinity,
          
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
               bottomRight: Radius.circular(24.sp),
            bottomLeft: Radius.circular(24.sp),
            
            )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(icon: Icons.person_3_outlined),
                  CustomText(text: 'Welcome, Sam 👋🏾', fontSize: 16,fontWeight: FontWeight.w300,color: AppColors.black14,),
                   CustomIcon(icon: Icons.notifications_none_outlined),
                ],
              ),

              Container(
              //  height: 100.h,
                padding: EdgeInsets.all(15.sp),
                margin: EdgeInsets.only(top: 24.h, bottom: 20.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.sp),
                    bottomRight: Radius.circular(16.sp)
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                    AppColors.primaryColor,
                    AppColors.gradientColor2
                  ])
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(text: 'WALLET BALANCE', fontSize: 10, color: AppColors.whiteColor,),
                        Row(
                          children: [
                            const CustomText(text: 'NGN 50,000',fontSize: 16, fontWeight: FontWeight.w700,),
                            SizedBox(width: 5.w,),
                            Icon(Icons.visibility_off, color: AppColors.whiteColor, size: 12.sp,)
                          ],
                        ),

                        Container(
                          height: 20.h,
                         // width: 101.w,
                         margin: EdgeInsets.only(top: 8.h),
                          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(40.sp)
                          ),
                          child: Row(
                            children: [
                              const CustomText(text: 'Cashback', fontSize: 10, color: AppColors.black28,),
                              SizedBox(width: 5.w,),
                              const CustomGradientText(text: 'N341.20', fontSize: 10, fontWeight: FontWeight.w700,)
                            ],
                          ),
                        )
                      ],
                    ),
                    
                    RotatedBox(quarterTurns: 1,child: SizedBox(
                      width: 70.h,
                      child: Divider(color: AppColors.redD0.withOpacity(0.6),thickness: 1,)),),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 11.w),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.sp),
                        bottomRight: Radius.circular(8.sp),
                        
                      )
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(text: 'MONIEPOINT', fontSize: 10, color: AppColors.whiteColor,),
                          Row(
                            children: [
                              const CustomText(text: '8192017482',fontSize: 16, fontWeight: FontWeight.w900,),
                              SizedBox(width: 5.w,),
                              Icon(Icons.copy, color: AppColors.whiteColor, size: 12.sp,)
                            ],
                          ),
                    const CustomText(text: 'Deposit Fee: N20', fontSize: 10,color: AppColors.whiteColor,),
                          
                        ],
                      ),
                  ),

                  ],
                ),
              ),

             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   customAction(label: 'Top Up', imgPath: 'plus'),
                   rotatedDivider(),
                   customAction(label: 'Transfer', imgPath: 'send'),
                   rotatedDivider(),
                   customAction(label: 'History', imgPath: 'history'),
                 ],
               ),
             )
              
            ],
          ),
        )),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 20.h),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20.w, right: 20.w, top: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(text: 'Quick Actions', fontSize: 18, fontWeight: FontWeight.w500,),
                  SizedBox(height: 15.h,),
                  Wrap(
                    runSpacing: 6.h,
                    spacing: 6.w,
                    children: List.generate(8, (index)=> customQuickAction(label: quickActionsNames[index], imgPath: quickActionsImagePath[index]),)
                  ),
                 Padding(
                   padding: EdgeInsets.only(top: 42.h, bottom: 16.h),
                   child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: 'News & Update', fontSize: 18, fontWeight: FontWeight.w500,),
                      CustomText(text: 'View all', color: AppColors.primaryColor, fontSize: 16,fontWeight: FontWeight.w500,)
                    ],
                   ),
                 )
                ],
              ),
            ),
             SizedBox(
                        height: 120.h,
                        child: ListView.builder(
                            itemCount: 4,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.only(left: 20.w, right: 20.w),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 16.w),
                                child: Image.asset('assets/images/news.png', fit: BoxFit.cover,),
                              );
                            }),
                      ),
          ],
        ),
      ),
      
    );
  }
}