import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://avatars.githubusercontent.com/u/44917974?s=280&v=4',width: 120),
            const SizedBox(height: 30),
            const Text("Enable location", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            const SizedBox(height: 15),
            const Text(
              "Kindly allow us to access your location to provide you with suggestions for nearby salons",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 500,
              height: 60,
              child: CustomButton(
                text: "Enable",
                onPressed: () {
                  Get.snackbar("Success", "Enable Location");
                  Get.toNamed(AppRoutes.selectLanguage);
                },
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Get.snackbar("Location", "Skipped location access");
                Get.toNamed(AppRoutes.selectLanguage);
              },
              child: const Text("Skip, Not Now",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
