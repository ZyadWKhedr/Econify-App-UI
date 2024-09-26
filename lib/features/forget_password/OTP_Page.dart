import 'package:flutter/material.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/core/widgets/custom_button.dart';
import 'package:mec/features/forget_password/otp_input.dart';

class OTPPage extends StatefulWidget {
  final VoidCallback onNext;

  OTPPage({super.key, required this.onNext}); // Accept callback

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<String> _otp = List.generate(4, (_) => '');

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty) {
      _otp[index] = value;
      if (index < 3) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        _focusNodes[index].unfocus(); // Hide keyboard when last input is done
      }
    }
  }

  void _submitOtp() {
    final otpString = _otp.join();
    if (otpString == "1234") {
      widget.onNext(); // Use the callback for navigation
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid OTP!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetData.mailIcon),
            SizedBox(
              height: 30,
            ),
            const Text(
              'Enter OTP ',
              style: TextStyle(
                  fontSize: 32, color: textColor, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
                '        Enter the OTP code we just sent \nyou on your registered Email/Phone number'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: OtpInput(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    onChanged: (value) => _onOtpChanged(value, index),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Reset password',
              onPressed: widget.onNext,
              height: 65,
            )
          ],
        ),
      ),
    );
  }
}
