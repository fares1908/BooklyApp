import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/widgets/ShimmerNewestBooks.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    const ShimmerNewestBooks();
    var result =await homeRepo.fetchNewestBooks();
   result.fold((failure) {
     emit(NewestBooksError(failure.errMessage));
   }, (books) {
      emit(NewestBooksSuccess(books));
   });
  }
}
