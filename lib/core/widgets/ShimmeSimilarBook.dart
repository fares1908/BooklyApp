import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/Home/presentation/manger/feature_books/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSimilarBooksListView extends StatelessWidget {
  const ShimmerSimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

            return Shimmer.fromColors(
                highlightColor:Colors.grey ,
                baseColor: Colors.grey,
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Container(
                    height:60,
                    width: 60.1,
                  ),
                )
            );
          }),
    );
  }
}
