import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../CONSTANCE.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/data/models/book_model/book_model.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * .2,
      height: 125,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            
            
            child: AspectRatio(
                aspectRatio: 2.5 / 4.5,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                    imageUrl: bookModel
                        .volumeInfo.imageLinks!.thumbnail)),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
      width: MediaQuery.of(context).size.width*.6
            ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    '${bookModel.volumeInfo.title}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20
                        .copyWith(fontFamily: kGtSectraFine),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '${bookModel.volumeInfo.publisher}',
                  style: Styles.textStyle14
                      .copyWith(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 3,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Row(
                    children: [
                      Text('Free',
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold)),

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
