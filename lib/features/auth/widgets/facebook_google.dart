import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:mec/const.dart';

class FacebookGoogle extends StatelessWidget {
  const FacebookGoogle({super.key});

  get secondaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSignInOption(
          context,
          icon: FontAwesomeIcons.google,
          color: Colors.red, // Google icon color
          text: 'Google',
          onTap: () {
            // Add Google sign-in functionality
          },
        ),
        const SizedBox(width: 16), // Space between buttons
        _buildSignInOption(
          context,
          icon: FontAwesomeIcons.facebook,
          color: Colors.blue, // Facebook icon color
          text: 'Facebook',
          onTap: () {
            // Add Facebook sign-in functionality
          },
        ),
      ],
    );
  }

  Widget _buildSignInOption(
    BuildContext context, {
    required IconData icon,
    required Color color,
    required String text,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 160, // Set the width of the sign-in option
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
