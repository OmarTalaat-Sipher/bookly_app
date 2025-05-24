import 'package:bookly_app_student/core/utilities/app_router.dart';
import 'package:bookly_app_student/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 16),
        child: Row(
          children: [
            Image.asset(AssetsData.logo, height: 24),
            Spacer(),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
            ),
          ],
        ),
      ),
    );
  }
}
