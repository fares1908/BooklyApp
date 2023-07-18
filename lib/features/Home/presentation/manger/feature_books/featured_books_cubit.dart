import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/widgets/ShimmerFeatureBiiks.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async {
    emit(FeaturedBooksLoading());
    const ShimmerFutureBooksListView();
    var result =await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksError(failure.errMessage));

    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
