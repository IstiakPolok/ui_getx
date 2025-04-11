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
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text("Forgot Password", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
            const SizedBox(height: 5),
            const Text("Enter your email, we will send a"),
            const Text("verification code to email"),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Email address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: emailController,

            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 500,
              height: 60,
              child: CustomButton(
                text: "Continue",
                onPressed: () {
                  Get.snackbar("Sent", "Reset link sent to your email");
                  Get.toNamed(AppRoutes.resetPassword);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
