import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [

            const SizedBox(height: 20),
            const Text("Reset Password", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
            const SizedBox(height: 5),
            Center(child: const Text("Your password must be at least 8 characters")),
            Center(child: const Text("long and include a combination of letters, ")),
            Center(child: const Text("numbers")),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "New Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "New Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: confirmPasswordController,

              obscureText: true,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 500,
              height: 60,
              child: CustomButton(
                text: "Submit",
                onPressed: () {
                  if (passwordController.text == confirmPasswordController.text) {
                    //Get.snackbar("Success", "Password reset successfully");
                    Get.toNamed(AppRoutes.verifyCode);
                  } else {
                    Get.snackbar("Error", "Passwords do not match");
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
