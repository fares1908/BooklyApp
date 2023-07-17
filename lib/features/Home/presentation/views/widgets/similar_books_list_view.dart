import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListViewItemImage(imageUrl: 'https://image.cnbcfm.com/api/v1/image/107168566-1671481983597-gettyimages-1450398458-mj1_4451_ce4b38b2-9f26-404e-b214-cf8454d82d0f.jpeg?v=1671482283&w=740&h=416&ffmt=webp&vtcrop=y '),
        ),
      ),
    );
  }
}
