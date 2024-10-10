import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swd_app_test/controller/bottom_nav_controller.dart';
import 'package:swd_app_test/presentation/screens/home_screen.dart';
import 'package:swd_app_test/presentation/screens/referral_screen.dart';
import 'package:swd_app_test/presentation/screens/service_screen.dart';
import 'package:swd_app_test/presentation/screens/setting_screen.dart';
import 'package:swd_app_test/presentation/screens/statistics_screen.dart';
import 'package:swd_app_test/utils/constants/app_colors.dart';

class BottomNavScreen extends GetView<BottomNavController> {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const[
      HomeScreen(),
      ServiceScreen(),
      StatisticsScreen(),
      ReferralScreen(),
      SettingScreen(),
    ];
    return Obx(
    ()=> Scaffold(
        body: screens[controller.index.value],
        bottomNavigationBar:BottomNavigationBar(
          backgroundColor: AppColors.black14,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.whiteColor,
          unselectedItemColor: AppColors.black36,
          currentIndex: controller.index.value,
          onTap: (value) => controller.changeIndex(value),
          items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label:  'Services'),
          BottomNavigationBarItem(icon: Icon(Icons.swap_vert), label:  'Statistics'),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: 'Referrals'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings' ),
        ])
      ),
    );
  }
}