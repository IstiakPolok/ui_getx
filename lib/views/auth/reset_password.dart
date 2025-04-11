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
      appBar: AppBar(title: const Text("Reset Password")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CustomTextField(
              controller: passwordController,

              obscureText: true,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: confirmPasswordController,

              obscureText: true,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "Reset Password",
              onPressed: () {
                if (passwordController.text == confirmPasswordController.text) {
                  Get.snackbar("Success", "Password reset successfully");
                  Get.toNamed(AppRoutes.login);
                } else {
                  Get.snackbar("Error", "Passwords do not match");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
