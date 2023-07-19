import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .3),
          child: ListViewItemImage(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          '${bookModel.volumeInfo.title}',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            '${bookModel.volumeInfo.publisher}',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        SizedBox(
            width: 120,
            child: BookingRate(
              count: bookModel.volumeInfo.pageCount!,
              rating: '0',
            )),
      ],
    );
  }
}
