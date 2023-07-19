part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();
  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBookSuccess extends SimilarBooksState {
  List<BookModel> books;
  SimilarBookSuccess({required this.books});
}

class SimilarBooksError extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksError(this.errorMessage);
}
