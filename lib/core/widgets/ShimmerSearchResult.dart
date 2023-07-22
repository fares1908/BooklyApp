import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSearchResult extends StatelessWidget {
  const ShimmerSearchResult({super.key});

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
                    highlightColor: Colors.grey,
                    baseColor: Colors.grey,
                    child: Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Container(
                        height: 125,
                        width: 69.4,
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Shimmer.fromColors(
                            highlightColor: Colors.grey,
                            baseColor: Colors.grey,
                            child: Card(

                              child: Container(
                                height: 20,
                                width: 25,
                              ),
                            )),
                      ),
                      const SizedBox(height: 10),
                      Shimmer.fromColors(
                          highlightColor: Colors.grey,
                          baseColor: Colors.grey,
                          child: Card(
                            child: Container(
                              height: 15,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Shimmer.fromColors(
                          highlightColor: Colors.grey,
                          baseColor: Colors.grey,
                          child: Card(

                            child: Container(
                              height: 14,
                              width: MediaQuery.of(context).size.width * .12,
                            ),
                          )),
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
