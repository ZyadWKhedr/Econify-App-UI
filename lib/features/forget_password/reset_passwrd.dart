import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/core/widgets/custom_button.dart';
import 'package:mec/core/widgets/custom_text_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(AssetData.lockIcon),
              SizedBox(
                height: 30,
              ),
              const Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 32,
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'It was popularised in the 1960s with the release of \n        Letraset sheets containing Lorem Ipsum.',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Enter new Password',
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Submit',
                height: 70,
                width: 500,
                onPressed: () {
                  if (passwordController.text ==
                      confirmPasswordController.text) {
                    // Navigate back to the login page and show a success message
                    Get.back(); // Navigate to the previous page (Login page)
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Password changed successfully!'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Passwords do not match!'),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
