import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  void registerUser() {
    Get.dialog(_showSuccessPopup(), barrierDismissible: false);
  }

  Widget _showSuccessPopup() {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 60),
          const SizedBox(height: 12),
          const Text("Successfully Registered", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.back();
              Get.toNamed('/verify-code');
            },
            child: const Text("Continue"),
          )
        ],
      ),
    );
  }
}
