import 'package:flutter/material.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0), // Add padding for better spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(AssetData.onboarding1 // Image asset
                  ),
            ),
            const SizedBox(height: 80),
            _buildText(), // Refactored welcome text as a separate method
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }

  // Refactor the welcome text into its own method
  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0), // Added horizontal padding
      child: Column(
        children: [
          const Text(
            'The simple way to',
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
                'find the best!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(AssetData.okIcon),
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
