import 'package:bookly_app/core/widgets/ShimmerNewestBooks.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/NewestListVeiwItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  NewestListViewItem(bookModel: state.books[index]),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15,
                );
              },
              itemCount: state.books.length);
        } else if (state is NewestBooksError) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return
            SizedBox(
              height: MediaQuery.of(context).size.height*3,
                child: const ShimmerNewestBooks()
            );
        }
      },
    );
  }
}
