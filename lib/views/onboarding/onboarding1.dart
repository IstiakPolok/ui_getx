import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/2.png", height: 400),


            const Text(
              "Best online courses ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              "in the word",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Now you can learn anywhere, anytime, even if there is no internet access!",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(

                      color: Color(0xFF1B6EF7),
                      // Blue dot
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD6E9FF),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 500,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B6EF7),
                  foregroundColor: Colors.white,
                ),

                onPressed: () => Get.toNamed(AppRoutes.onboarding2),
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
