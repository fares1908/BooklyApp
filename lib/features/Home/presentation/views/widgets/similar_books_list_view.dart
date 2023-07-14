
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) =>   const ListViewItemImage(),
      ),
    );
  }
}