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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              Image.asset("assets/images/1.png", height: 150),
              SizedBox(
                height: 30,
              ),
              Text(
                "Theory Test in my Language",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                "I must write the real test will be in English language and this app just helps you to understand the materials in your language",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
