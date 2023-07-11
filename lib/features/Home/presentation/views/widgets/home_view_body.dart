import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FutureBooksListView(),
          Text('Best Seller', style: Styles.titleMedium),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),

        ],
      ),
    );
  }
}
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * .2,
      height: 125,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetsData.test),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 4
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  'fraes',
                  maxLines: 2,
                ),


                Text(
                  'samy',
                  style: TextStyle(color: Colors.grey),
                ),

                Row(

                  children: [
                    Text(
                      '19,9 \$',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    // Spacer(),
                    Text(' rrrrr')
                  ],
                )

                // Row(
                //      // mainAxisAlignment: MainAxisAlignment.start,
                //      // crossAxisAlignment: CrossAxisAlignment.start,
                //      children: [
                //        Text(
                //          '19,9 \$',
                //          style: TextStyle(
                //            fontSize: 20,
                //            fontWeight: FontWeight.bold
                //          ),
                //        ),
                //        Spacer(),
                //        Text('')
                //      ],
                //    ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
