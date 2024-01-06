import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksloading());
    var result = await homeRepo.fetchFeatyredBooks();
    result.fold(
      (failure) => {
        emit(
          FeaturedBooksFailure(failure.errorMessage),
        ),
      },
      (books) => {
        emit(
          FeaturedBooksSuccess(books),
        )
      },
    );
  }
}
