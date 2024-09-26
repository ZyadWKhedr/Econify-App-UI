import 'package:flutter/material.dart';
import 'package:mec/const.dart';
import 'package:mec/features/on_boarding/welcome_pages/first_page.dart';
import 'package:mec/features/on_boarding/welcome_pages/second_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              controller: _controller,
              children: const [
                FirstPage(),
                SecondPage(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: const ExpandingDotsEffect(
                spacing: 8.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.fill,
                dotColor: Colors.grey,
                activeDotColor: mainColor),
          )
        ],
      ),
    );
  }
}
