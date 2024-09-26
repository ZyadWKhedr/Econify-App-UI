import 'package:flutter/material.dart';
import 'package:mec/const.dart';
import 'package:mec/features/forget_password/OTP_Page.dart';
import 'package:mec/features/forget_password/forget_password.dart';
import 'package:mec/features/forget_password/reset_passwrd.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ForgetPasswordFlow extends StatelessWidget {
  ForgetPasswordFlow({super.key});

  final PageController _controller = PageController();

  void _nextPage() {
    _controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                spacing: 8.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.fill,
                dotColor: Colors.grey,
                activeDotColor: mainColor,
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  ForgetPassword(onNext: _nextPage),
                  OTPPage(onNext: _nextPage),
                  ResetPasswordPage(), // Add navigation logic if needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
