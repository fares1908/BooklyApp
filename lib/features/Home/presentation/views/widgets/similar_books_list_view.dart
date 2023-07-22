import 'package:bookly_app/core/widgets/ShimmeSimilarBook.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/presentation/manger/similars_books/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/manger/similars_books/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kDetailsView,extra: state.books[index]);
                    // Navigator.popAndPushNamed(context, AppRouter.kDetailsView);
                  },
                  child: ListViewItemImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks!.thumbnail),
                ),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarBooksError) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return  ShimmerSimilarBooksListView();
        }
      },
    );
  }
}
