import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/Search/data/repositories/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../Home/data/models/book_model/book_model.dart';
import '../../../data/models/search_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  SearchModel searchModel = SearchModel(
    searchText: '',
  );
  void changeSearchText(String searchText) {
    searchModel = searchModel.copyWith(searchText: searchText);
  }

  Future<void> getResultSearch(

  ) async {
    emit(SearchILoading());
    var result = await searchRepo.fetchSearch(searchModel);
    result.fold((failure) {
      emit(SearchError(failure.errMessage));
    }, (books) {
      emit(SearchSuccess(books: books));
    });
  }
}
