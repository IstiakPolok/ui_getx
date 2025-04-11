import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.controller,

    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),

        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
