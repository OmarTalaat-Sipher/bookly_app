import 'package:bookly_app_student/core/errors/failures.dart';
import 'package:bookly_app_student/core/utilities/api_service.dart';
import 'package:bookly_app_student/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_student/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
