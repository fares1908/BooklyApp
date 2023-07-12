import 'package:bookly_app/core/utils/assetsdata.dart';
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.2),
                  child: ListViewItemImage(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
