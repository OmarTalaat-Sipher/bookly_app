import 'package:bookly_app_student/core/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffffdd4f), size: 18),
        SizedBox(width: 6),
        Text(
          '4.8',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 3),
        Text(
          '(2390)',
          style: Styles.textStyle16.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
