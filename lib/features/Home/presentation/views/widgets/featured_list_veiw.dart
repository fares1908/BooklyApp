import 'package:bookly_app/core/widgets/ShimmerFeatureBiiks.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/presentation/manger/feature_books/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';

class FutureBooksListView extends StatelessWidget {
  const FutureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kDetailsView,extra: state.books[index]);
                  },
                  child: ListViewItemImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail
                  ),
                ),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksError) {
          return CustomErrorWidget(errorMessage: state.message);
        } else {
          return const ShimmerFutureBooksListView();
        }
      },
    );
  }
}
