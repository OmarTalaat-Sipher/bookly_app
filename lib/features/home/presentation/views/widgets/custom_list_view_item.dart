import 'package:bookly_app_student/core/utilities/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 33 / 50,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            ),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
