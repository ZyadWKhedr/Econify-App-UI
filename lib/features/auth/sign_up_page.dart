import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/core/widgets/custom_button.dart';
import 'package:mec/core/widgets/custom_text_field.dart';
import 'package:mec/features/auth/widgets/facebook_google.dart';
import 'package:mec/features/auth/widgets/or_row.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(child: Image.asset(AssetData.clapIcon)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                color: textColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'It was popularised in the 1960s with the release of \n       Letraset sheets containing Lorem Ipsum.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            const FacebookGoogle(),
            const SizedBox(
              height: 15,
            ),
            const OrRow(),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              hintText: 'Name',
            ),
            const CustomTextField(
              hintText: 'Email/phoneNumber',
            ),
            const CustomTextField(
              hintText: 'Password',
              isPassword: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _isTermsAccepted,
                    onChanged: (value) {
                      setState(() {
                        _isTermsAccepted = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "I’m agree to The ",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 14),
                        children: [
                          TextSpan(
                            text: "Terms of Service",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the Terms of Service page
                              },
                          ),
                          const TextSpan(
                            text: " and ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the Privacy Policy page
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Create Account',
              onPressed: () {},
              height: 70,
              width: 380,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Do you have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        '/login', 
                        arguments: {},
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
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
