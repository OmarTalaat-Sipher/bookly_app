import 'package:bookly_app_student/constants.dart';
import 'package:bookly_app_student/core/utilities/assets.dart';
import 'package:bookly_app_student/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 33 / 50,
            child: Padding(
              padding: const EdgeInsets.only(right: 12, top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.red,
                ),
              ),
            ),
          ),
          // SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle22.copyWith(fontFamily: kGTSectraFine),
                ),
              ),
              SizedBox(height: 3),
              Text(
                'J.K. Rowling',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle16,
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textStyle22.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
