import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mec/const.dart';
import 'package:mec/core/utils/assets.dart';
import 'package:mec/features/on_boarding/welcome_page.dart';
import 'package:mec/features/splash_view/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    NavigateToHome();
  }

  @override
  void dispose() {
    // Dispose of the animation controller to free resources
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.logo),
          SlidingText(slidingAnimation: slidingAnimation),
          const SizedBox(height: 4),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    // Initialize the AnimationController
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Set appropriate duration
    );

    // Initialize the sliding animation
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    // Start the animation
    animationController.forward();
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => WelcomePage(),
          transition: Transition.fade, duration: KTransitionDuration);
    });
  }
}
