import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerNewestBooks extends StatelessWidget {
  const ShimmerNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,

        itemBuilder: (context, index) {


          return SizedBox(
            // height: MediaQuery.of(context).size.height * .2,
            height: 125,
            child: Row(

              children: [
                    Shimmer.fromColors(
                        highlightColor:Colors.grey ,
                        baseColor: Colors.grey,
                        child: Card(
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Container(
                            height: 126,
                            width: 78.1,
                          ),
                        )
                    ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:34 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Shimmer.fromColors(
                            highlightColor:Colors.grey ,
                            baseColor: Colors.grey,
                            child: Card(
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Container(
                                height: 2,
                               width: 25,
                              ),
                            )
                        ),

                      ),
                      const SizedBox(height: 10),
                      Shimmer.fromColors(
                          highlightColor:Colors.grey ,
                          baseColor: Colors.grey,
                          child: Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Container(
                              height: 2,
                              width: 25,
                            ),
                          )
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Shimmer.fromColors(
                          highlightColor:Colors.grey ,
                          baseColor: Colors.grey,
                          child: Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Container(
                              height: 2,
                              width:MediaQuery.of(context).size.width*.4,
                            ),
                          )
                      ),
                      // Row(
                      //   children: [
                      //     Text(
                      //       'Free',
                      //       style: Styles.textStyle16.copyWith(
                      //           fontWeight: FontWeight.bold, color: Colors.grey),
                      //     ),
                      //     const Spacer(),
                      //     BookingRate(
                      //         rating: bookModel.volumeInfo.maturityRating!,
                      //         count: bookModel.volumeInfo.pageCount!),
                      //   ],
                      // ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
