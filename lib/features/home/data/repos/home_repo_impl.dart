import 'package:bookly_app_student/core/errors/failures.dart';
import 'package:bookly_app_student/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_student/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
