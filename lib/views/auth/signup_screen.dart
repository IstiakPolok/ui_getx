import 'package:flutter/gestures.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),


        body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [

            Container(alignment: Alignment.centerLeft, child: const Text("Welcome to Eduline", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900))),
            const SizedBox(height: 5),
            const Text("Let’s join to Eduline learning ecosystem & meet our professional mentor. It’s Free!",style: TextStyle(fontSize: 15)),
            const SizedBox(height: 30),

            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Email Address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: nameController,


            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Full Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: emailController,

            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 15),
            CustomTextField(
              controller: passwordController,

              obscureText: true,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 500,
              height: 60,
              child: CustomButton(
                text: "Label",
                onPressed: () {
                  Get.snackbar("Success", "Successfully Registered");
                  Get.toNamed(AppRoutes.verifyCode);
                },
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Already have an account?',
                style: const TextStyle(color: Colors.grey, fontSize: 14),
                children: [
                  TextSpan(
                    text: ' Sign In',
                    style: const TextStyle(
                      color: Color(0xFF1B6EF7),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(AppRoutes.login);
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
