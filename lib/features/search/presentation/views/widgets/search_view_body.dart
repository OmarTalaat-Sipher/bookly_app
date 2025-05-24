import 'package:bookly_app_student/core/utilities/styles.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app_student/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 32),
              child: CustomSearchTextField(),
            ),
          ),
          SizedBox(height: 16),

          Text('Search Result', style: Styles.textStyle20),
          SizedBox(height: 8),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: BookListViewItem(),
        );
      },
    );
  }
}
