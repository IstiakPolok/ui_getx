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
            SizedBox(
              height: 300,
            ),
            Image.asset("assets/images/1.png", height: 100),
            Text(
              "Theory Test in my Language",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "I must write the real test will be in English language and this app just helps you to understand the materials in your language",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
