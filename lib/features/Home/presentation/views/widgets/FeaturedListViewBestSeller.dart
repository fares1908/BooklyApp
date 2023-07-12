import 'package:bookly_app/features/Home/presentation/views/widgets/BestSellerListVeiw.dart';
import 'package:flutter/material.dart';

class FeaturedListViewBestSeller extends StatelessWidget {
  const FeaturedListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .44,
      child: ListView.separated(
          itemBuilder: (context, index) => BestSellerListViewItem(),
          separatorBuilder: (context, index) {
            return Container(
              width: double.infinity,
            );
          },
          itemCount: 6),
    );
  }
}
