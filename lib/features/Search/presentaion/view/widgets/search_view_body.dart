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
        itemBuilder: (context, index) => const BestSellerListViewItem(),
        separatorBuilder: (context, index) {
          return Container(
            width: double.infinity,
          );
        },
        itemCount: 10);
  }
}
