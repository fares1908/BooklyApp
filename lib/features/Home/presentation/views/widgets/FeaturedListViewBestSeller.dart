import 'package:bookly_app/features/Home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/BestSellerListVeiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewBestSeller extends StatelessWidget {
  const FeaturedListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(
      builder: (context, state) {
        return SizedBox(
          // height: MediaQuery.of(context).size.height * .44,
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>  BestSellerListViewItem(),
              separatorBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                );
              },
              itemCount: 6),
        );
      },
    );
  }
}
