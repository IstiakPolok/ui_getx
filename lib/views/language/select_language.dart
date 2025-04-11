import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../widgets/custom_button.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  String? selectedLanguage;

  final List<String> languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Arabic',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Language")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              "Please select your preferred language",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            ...languages.map((lang) => RadioListTile<String>(
              title: Text(lang),
              value: lang,
              groupValue: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value;
                });
              },
            )),
            const SizedBox(height: 30),
            CustomButton(
              text: "Continue",
              onPressed: () {
                if (selectedLanguage != null) {
                  Get.snackbar("Language Selected", selectedLanguage!);
                  Get.toNamed(AppRoutes.enableLocation);
                } else {
                  Get.snackbar("Error", "Please select a language");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
