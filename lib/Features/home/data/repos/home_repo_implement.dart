import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo.dart';
import 'package:my_bookly/core/Errors/failure.dart';
import 'package:my_bookly/core/utils/api_service.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService apiService;

  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:movies&Sorting=newest');

      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeatyredBooks() {
    throw UnimplementedError();
  }
}
