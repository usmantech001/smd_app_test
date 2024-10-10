import 'package:get/get.dart';
import 'package:swd_app_test/presentation/screens/bottom_nav_screen.dart';
import 'package:swd_app_test/presentation/screens/create_account_screen.dart';
import 'package:swd_app_test/presentation/screens/login_screen.dart';
import 'package:swd_app_test/presentation/screens/verify_email.dart';

class AppRoute{
  static const String initial ='/';
  static const String createAccount ='/createAccount';
  static const String verifyEmail='/verifyEmail';
  static const String bottomNav ='/bottomNav';

  static List<GetPage> pages = [
    GetPage(name: initial, page: ()=> const LoginScreen()),
    GetPage(name: createAccount, page: ()=> const CreateAccountScreen()),
    GetPage(name: verifyEmail, page: ()=> const VerifyEmailScreen()),
    GetPage(name: bottomNav, page: ()=> const BottomNavScreen()),
  ];
}