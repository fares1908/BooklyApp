part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchILoading extends SearchState {}

class SearchSuccess extends SearchState {
  List<BookModel>books;
  SearchSuccess({required this.books});
}

class SearchError extends SearchState {
  final String errorMessage;

  const SearchError(this.errorMessage);
}

