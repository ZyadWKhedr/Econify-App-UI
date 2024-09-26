import 'dart:ffi';

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/features/auth/sign_up_page.dart';
import 'package:mec/features/on_boarding/widgets/arrow_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adjust padding for consistency
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AssetData.onboarding2,
              ),
            ),
            const SizedBox(height: 100),
            _buildText(), // Refactored text into a separate method
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: mainColor,
                        width: 1,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.to(() => SignUpPage(),
                            transition: Transition.circularReveal,
                            duration: KTransitionDuration);
                      },
                      icon: const Icon(FontAwesomeIcons.chevronRight),
                      color: mainColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Refactor the text into its own method
  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0), // Added horizontal padding
      child: Column(
        children: [
          const Text(
            'The Best Design',
            style: TextStyle(
              fontSize: 34,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Strategy!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(AssetData.holdingPencilIcon),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
