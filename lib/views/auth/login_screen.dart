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

            // Remember Me + Forgot Password Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
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
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: 500,
              height: 40,
              child: CustomButton(
                text: "Login",
                onPressed: () {
                  Get.snackbar("Success", "Login Successful");
                  Get.toNamed(AppRoutes.selectLanguage);
                },
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () => Get.toNamed(AppRoutes.signup),
              child: const Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
