import 'package:bookly_app/core/widgets/ShimmerSearchResult.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/Search/presentaion/manger/search_books/search_cubit.dart';
import 'package:bookly_app/features/Search/presentaion/view/widgets/search_listview_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../CONSTANCE.dart';
import '../../../../../core/utils/routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/data/models/book_model/book_model.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: context.size!.height * .3,
      child: BlocBuilder<SearchCubit, SearchState>(
        buildWhen: (previous, current) {
          if (current is SearchILoading ||
              current is SearchSuccess ||
              current is SearchError) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is SearchSuccess) {
            return ListView.separated(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchListViewItem(
                    bookModel: state.books[index],
                  ),
                ),
                separatorBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                  );
                },
                itemCount: state.books.length);
          } else if(state is SearchError){
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }else if(state is SearchILoading){
             return const ShimmerSearchResult();
            // return ShimmerSearchResult();
          }else{
            return Center(child: Text('Enter what you want  to search',
            style: Styles.textStyle20.copyWith(fontWeight:FontWeight.bold,color: Colors.grey),
            ));
          }
        },
      ),
    );
  }
}
