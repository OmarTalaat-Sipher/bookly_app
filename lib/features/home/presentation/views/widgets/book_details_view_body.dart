import 'package:bookly_app_student/core/utilities/styles.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app_student/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.only(
                    left: width * .17,
                    right: width * .17,
                  ),
                  child: CustomBookImage(),
                ),
                SizedBox(height: 16),
                Text('The Jungle Book', style: Styles.textStyle32),
                Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 16),
                BookRating(mainAxisAlignment: MainAxisAlignment.center),
                SizedBox(height: 32),
                BooksAction(),
                Expanded(child: SizedBox(height: 48)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You may also like',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                SimilarBooksListView(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
