import 'package:bookly_app_student/core/utilities/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: 8),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 13),
        ),
      ],
    );
  }
}
