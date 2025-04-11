import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset("assets/images/4.png", height: 100),
            const SizedBox(height: 20),
            const Text("Welcome Back!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
            const SizedBox(height: 5),
            const Text("Please login first to start your Theory Test."),
            const SizedBox(height: 30),

            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Email address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: emailController,
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: const Color(0xFF1B6EF7),
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                    const Text(
                      "Remember Me",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.forgotPassword);
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: 500,
              height: 60,
              child: CustomButton(
                text: "Sign In",
                onPressed: () {
                  Get.snackbar("Success", "Login Successful");
                  Get.toNamed(AppRoutes.enableLocation);
                },
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                text: 'New to Theory Test? ',
                style: const TextStyle(color: Colors.grey, fontSize: 14),
                children: [
                  TextSpan(
                    text: 'Create Account',
                    style: const TextStyle(
                      color: Color(0xFF1B6EF7),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(AppRoutes.signup);
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
