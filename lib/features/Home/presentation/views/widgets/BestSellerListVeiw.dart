import 'package:bookly_app/CONSTANCE.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetsData.test),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'j.k Rowling',
                style: Styles.textStyle14.copyWith(color: Colors.grey),

              ),
              SizedBox(
                height: 3,
              ),

              Row(
                children: [
                  Text(
                      '19,9 \$',
                      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}