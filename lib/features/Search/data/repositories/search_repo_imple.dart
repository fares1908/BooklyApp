import 'package:bookly_app/core/errors/Failur.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Search/data/models/search_model.dart';
import 'package:bookly_app/features/Search/data/repositories/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_services.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiServices apiServices;

  SearchRepoImpl(this.apiServices,);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearch(SearchModel searchModel)async {
    try {

      var data = await apiServices.get(
          endPoint:'?q=${searchModel.searchText}&orderBy=newest');
      // endPoint:'?q=computer&orderBy=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}