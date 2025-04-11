import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enable Location")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/location.png', height: 200),
            const SizedBox(height: 30),
            const Text(
              "Enable your location to get better service and find nearby test centers.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: "Enable Location",
              onPressed: () {
                Get.snackbar("Location", "Location access granted");
                // Navigate to next screen or dashboard if available
              },
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Get.snackbar("Location", "Skipped location access");
                // You can route somewhere else if needed
              },
              child: const Text("Skip for now"),
            ),
          ],
        ),
      ),
    );
  }
}
