import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Search/data/repositories/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../Home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.search_repo) : super(SearchInitial());
  final SearchRepo search_repo;
  Future<void> get_search()async {
    var result=await search_repo.fetchSearch();
    result.fold((failure) {
      emit(SearchError(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }

}
