import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/material.dart';

class FutureBooksListView extends StatelessWidget {
  const FutureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) =>   const ListVeiwItem(),
      ),
    );
  }
}