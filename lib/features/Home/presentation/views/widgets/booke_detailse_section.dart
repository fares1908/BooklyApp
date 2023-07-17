import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .3),
          child: ListViewItemImage(
              imageUrl: 'https://image.cnbcfm.com/api/v1/image/107168566-1671481983597-gettyimages-1450398458-mj1_4451_ce4b38b2-9f26-404e-b214-cf8454d82d0f.jpeg?v=1671482283&w=740&h=416&ffmt=webp&vtcrop=y'),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        SizedBox(width: 120, child: BookingRate()),
      ],
    );
  }
}
