import 'package:bookly_app/CONSTANCE.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView,extra: bookModel);
      },
      child: SizedBox(
        // height: MediaQuery.of(context).size.height * .2,
        height: 125,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
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
                  const SizedBox(height: 10),
                  Text(
                    '${bookModel.volumeInfo.publisher}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle16.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      const Spacer(),
                      BookingRate(
                          rating: '0',
                          count: bookModel.volumeInfo.pageCount!),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
