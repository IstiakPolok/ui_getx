import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAllNamed(AppRoutes.onboarding1);
    });

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/2.png ', height: 300),
            Text(
              "Theory Test in my",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
