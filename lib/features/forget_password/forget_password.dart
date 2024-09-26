import 'package:flutter/material.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/core/widgets/custom_button.dart';
import 'package:mec/core/widgets/custom_text_field.dart';

class ForgetPassword extends StatelessWidget {
  final VoidCallback onNext;
  const ForgetPassword(
      {super.key, required this.onNext}); // Include it in the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 150),
            Center(child: Image.asset(AssetData.mailIcon)),
            const SizedBox(height: 20),
            const Text(
              'Forget Password',
              style: TextStyle(
                fontSize: 36,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
                'It was popularised in the 1960s with the release of \n        Letraset sheets containing Lorem Ipsum.'),
            const SizedBox(height: 10),
            CustomTextField(hintText: 'Email I’D/ Mobile Number'),
            const SizedBox(height: 20),
            CustomButton(
              width: 400,
              height: 70,
              text: 'Continue',
              onPressed: onNext,
            ),
          ],
        ),
      ),
    );
  }
}
