import 'package:flutter/material.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/gradient_color.dart';

class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: linearGradient()),
          child: const Scaffold(
            body: Center(
              child: CustomText(text: 'Referral Screen'),
            ),
          ),
    );
  }
}