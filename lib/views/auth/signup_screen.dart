import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  int strengthLevel = 0;

  int calculatePasswordLevel(String password) {
    if (password.isEmpty) return 0;
    bool hasLetters = RegExp(r'[A-Za-z]').hasMatch(password);
    bool hasNumbers = RegExp(r'\d').hasMatch(password);
    bool hasSymbols = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);

    int score = 0;
    if (password.length >= 8) score++;
    if (hasLetters && hasNumbers) score++;
    if (hasSymbols) score++;
    if (password.length >= 12) score++;

    return score.clamp(0, 4);
  }

  bool passwordMeetsRule(String password) {
    final hasLetters = RegExp(r'[A-Za-z]').hasMatch(password);
    final hasNumbers = RegExp(r'\d').hasMatch(password);
    return password.length >= 8 && hasLetters && hasNumbers;
  }

  void checkPasswordStrength(String password) {
    setState(() {
      strengthLevel = calculatePasswordLevel(password);
    });
  }

  Widget _buildSuccessDialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 30),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    shape: BoxShape.circle,
                  ),
                ),
                const Icon(Icons.check_circle, size: 60, color: const Color(0xFF1B6EF7)),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Successfully Registered",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your account has been registered successfully, now let’s enjoy our features!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(

                  onPressed: () => Get.toNamed('/enable-location'),

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B6EF7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Continue",style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final strengthLabels = ["Very Weak", "Weak", "Moderate", "Strong", "Very Strong"];
    final strengthColors = [Colors.red, Colors.orange, Colors.amber, Colors.blue, Colors.green];
    final strengthText = strengthLabels[strengthLevel];
    final strengthColor = strengthColors[strengthLevel];

    bool rulePassed = passwordMeetsRule(passwordController.text);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Welcome to Eduline",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Let’s join to Eduline learning ecosystem & meet our professional mentor. It’s Free!",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 30),

              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Email Address",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 15),
              CustomTextField(controller: nameController),
              const SizedBox(height: 15),

              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Full Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 15),
              CustomTextField(controller: emailController),
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
                onChanged: checkPasswordStrength,
              ),

              const SizedBox(height: 12),
              Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Expanded(
                      child: Container(
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: i < strengthLevel ? Colors.blue : Colors.grey[300],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  const Spacer(),
                  Text(
                    strengthText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: strengthColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    rulePassed ? Icons.check_circle : Icons.radio_button_unchecked,
                    color: rulePassed ? Colors.green : Colors.grey,
                    size: 18,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      "At least 8 characters with a combination of letters and numbers",
                      style: TextStyle(fontSize: 13, color: rulePassed ? Colors.green : Colors.grey),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: CustomButton(
                  text: "Label",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => _buildSuccessDialog(context),
                    );
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
      ),
    );
  }
}
