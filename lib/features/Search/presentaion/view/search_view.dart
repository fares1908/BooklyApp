import 'package:bookly_app/features/Search/presentaion/manger/search_books/search_cubit.dart';
import 'package:bookly_app/features/Search/presentaion/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Home/data/models/book_model/book_model.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchCubit>(context).get_search();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(bookModel:bookModel),
      ),
    );
  }

}
