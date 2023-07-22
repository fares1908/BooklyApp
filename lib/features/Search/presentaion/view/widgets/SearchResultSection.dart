import 'package:bookly_app/features/Search/presentaion/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
