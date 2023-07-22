import 'package:bookly_app/features/Search/data/models/search_model.dart';
import 'package:bookly_app/features/Search/presentaion/manger/search_books/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
 CustomSearchTextField({super.key});
  var searchText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchText,
      onChanged: (value) {
        BlocProvider.of<SearchCubit>(context).changeSearchText(value);
      },
      onSubmitted: (value) {
        BlocProvider.of<SearchCubit>(context).getResultSearch();
      },
      decoration: InputDecoration(
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchCubit>(context).getResultSearch();
          },
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.grey,
            size: 14,
          ),
        ),

      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.white,
      ));
}
