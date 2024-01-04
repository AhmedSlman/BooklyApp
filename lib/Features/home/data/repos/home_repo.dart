import 'package:dartz/dartz.dart';
import 'package:my_bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:my_bookly/core/Errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeatyredBooks();
}
