part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class  FeaturedBooksLoading extends FeaturedBooksState{}

class  FeaturedBooksError extends FeaturedBooksState{
  final String message;

  const FeaturedBooksError(this.message);
}

class  FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel>books ;

  const FeaturedBooksSuccess(this.books);
}
