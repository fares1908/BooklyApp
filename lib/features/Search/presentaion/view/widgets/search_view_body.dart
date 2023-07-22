import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/NewestListVeiwItem.dart';
import 'package:bookly_app/features/Search/presentaion/view/widgets/SearchResultSection.dart';
import 'package:bookly_app/features/Search/presentaion/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/Search/presentaion/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../CONSTANCE.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../Home/presentation/views/widgets/ListViewItem.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 13,
          ),
          Text(
            'Result',
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: SearchResultSection())
        ],
      ),
    );
  }
}
