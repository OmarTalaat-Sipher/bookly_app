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
            padding: const EdgeInsets.only(top: 32, bottom: 24),
            child: Text('Best Seller', style: Styles.titleMedium),
          ),
        ],
      ),
    );
  }
}
