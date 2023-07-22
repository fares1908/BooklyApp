import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../CONSTANCE.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/data/models/book_model/book_model.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) =>GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kDetailsView);
          },
          child: SizedBox(
            // height: MediaQuery.of(context).size.height * .2,
            height: 125,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: CachedNetworkImage(
                      imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail
                  )
                ),
                const SizedBox(
                  width: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        '${bookModel.volumeInfo.title}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '${bookModel.volumeInfo.publisher}',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Row(
                        children: [
                          Text('Free',
                              style: Styles.textStyle20
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Spacer(),

                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) {
          return Container(
            width: double.infinity,
          );
        },
        itemCount: 10);
  }
}