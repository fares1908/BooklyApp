import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(

          children: [
            CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.26),
              child: ListViewItemImage(),
            ),
            SizedBox(
              height: 34,
            ),

            Text('The Jungle Book',
            style: Styles.textStyle30,
            ),
            SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              width: 120,
                child: BookingRate()),
          ],
        ),
      ),
    );
  }
}
