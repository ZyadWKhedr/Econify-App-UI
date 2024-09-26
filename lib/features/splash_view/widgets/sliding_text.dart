import 'package:flutter/material.dart';
import 'package:mec/const.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> slidingAnimation;

  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Econify',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      },
    );
  }
}
