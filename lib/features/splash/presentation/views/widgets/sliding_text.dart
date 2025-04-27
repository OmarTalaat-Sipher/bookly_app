import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // <= this code is to optimize resources usage and only rebuild this part of the screen
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: TextStyle(letterSpacing: 13),
          ),
        );
      },
    );
  }
}
