import 'package:bookly_app_student/core/utilities/assets.dart';
import 'package:bookly_app_student/core/utilities/styles.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 8),
            child: Text('Best Seller', style: Styles.textStyle20),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

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
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
