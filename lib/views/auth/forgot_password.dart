import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Enter your email to reset password",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: emailController,
              hintText: 'Email',
              icon: Icons.email,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "Send Reset Link",
              onPressed: () {
                Get.snackbar("Sent", "Reset link sent to your email");
                Get.toNamed(AppRoutes.resetPassword);
              },
            ),
          ],
        ),
      ),
    );
  }
}
