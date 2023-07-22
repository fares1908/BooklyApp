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
                  padding: const EdgeInsets.only(top:12 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Shimmer.fromColors(
                            highlightColor:Colors.grey ,
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
                          highlightColor:Colors.grey ,
                          baseColor: Colors.grey,
                          child: Card(
                            child: Container(
                              height: 15,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                          )
                      )
            ,

                      Row(
                        children: [
                          Shimmer.fromColors(
                              highlightColor:Colors.grey ,
                              baseColor: Colors.grey,
                              child:  Card(
                                child: Container(
                                  height: 14,
                                  width: MediaQuery.of(context).size.width * .12,
                                ),
                              )),

                          SizedBox(
                         width: MediaQuery.of(context).size.width*.3,
                          ),
                          Shimmer.fromColors(
                              highlightColor:Colors.grey ,
                              baseColor: Colors.grey,
                              child: Card(
                                child: Container(
                                  height: 15,
                                  width: MediaQuery.of(context).size.width * .2,
                                ),
                              )
                          )


                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
