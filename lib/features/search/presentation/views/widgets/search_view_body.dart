import 'package:bookly_app_student/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 32, left: 16, right: 16),
            child: CustomSearchTextField(),
          ),
        ),
      ],
    );
  }
}
