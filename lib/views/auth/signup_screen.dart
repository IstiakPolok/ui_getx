import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CustomTextField(
              controller: nameController,

            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: emailController,

            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: passwordController,

              obscureText: true,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "Register",
              onPressed: () {
                Get.snackbar("Success", "Successfully Registered");
                Get.toNamed(AppRoutes.verifyCode);
              },
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Get.back(),
              child: const Text("Already have an account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
