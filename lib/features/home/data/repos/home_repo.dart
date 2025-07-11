import 'package:bookly_app_student/core/errors/failures.dart';
import 'package:bookly_app_student/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
}
