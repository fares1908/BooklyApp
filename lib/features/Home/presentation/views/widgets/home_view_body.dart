import 'package:bookly_app/CONSTANCE.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/BestSellerListVeiw.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/FeaturedListViewBestSeller.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/ListViewItem.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/featured_list_veiw.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

     return CustomScrollView(

       slivers: [
         SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 17),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const CustomAppBar(),
                 const FutureBooksListView(),
                 const SizedBox(
                   height: 19,
                 ),
                 const Text('Best Seller', style: Styles.textStyle18),
                 const SizedBox(
                   height: 15,
                 ),


               ],
             ),
           ),
         ),
         SliverToBoxAdapter(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 17),
             child: FeaturedListViewBestSeller(),
           ),
         ),
       ],
     );

  }
}


