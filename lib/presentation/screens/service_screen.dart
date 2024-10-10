import 'package:flutter/material.dart';
import 'package:swd_app_test/presentation/widgets/custom_text.dart';
import 'package:swd_app_test/utils/gradient_color.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: linearGradient()),
          child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: CustomText(text: 'Services Screen'),
            ),
          ),
    );
  }
}