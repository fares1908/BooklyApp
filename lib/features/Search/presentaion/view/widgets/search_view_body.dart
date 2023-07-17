import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/BestSellerListVeiw.dart';
import 'package:bookly_app/features/Search/presentaion/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 13,
          ),
          Text('Result',
          style: Styles.textStyle20,
          ),
          SizedBox(
            height: 13,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BestSellerListViewItem( imageUrl: 'https://image.cnbcfm.com/api/v1/image/107168566-1671481983597-gettyimages-1450398458-mj1_4451_ce4b38b2-9f26-404e-b214-cf8454d82d0f.jpeg?v=1671482283&w=740&h=416&ffmt=webp&vtcrop=y'),
        separatorBuilder: (context, index) {
          return Container(
            width: double.infinity,
          );
        },
        itemCount: 10);
  }
}
