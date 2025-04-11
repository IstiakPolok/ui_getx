import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/images/3.png", height: 300),
            const SizedBox(height: 30),
            const Text("Start Your Journey", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Choose your preferred courses and begin learning today.", textAlign: TextAlign.center),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD6E9FF),
                       // Blue dot
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10), // Space between the dots
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1B6EF7),// Light blue dot
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
                onPressed: () => Get.toNamed('/signup'),
                child: const Text("Get Started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
