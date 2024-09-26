import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/core/widgets/custom_button.dart';
import 'package:mec/core/widgets/custom_text_field.dart';
import 'package:mec/features/auth/widgets/facebook_google.dart';
import 'package:mec/features/auth/widgets/or_row.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(child: Image.asset(AssetData.clapIcon)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login',
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
              hintText: 'Email/phoneNumber',
            ),
            const CustomTextField(
              hintText: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to Forgot Password page
                    Get.toNamed('/forgotPassword');
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Login',
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
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        '/Signup', // Navigate to the SignUp page
                        arguments: {},
                      );
                    },
                    child: const Text(
                      'Sign Up',
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
