import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => {
        emit(
          NewestBooksFailure(failure.errorMessage),
        )
      },
      (books) => {
        emit(
          NewestBookSuccess(books),
        )
      },
    );
  }
}
