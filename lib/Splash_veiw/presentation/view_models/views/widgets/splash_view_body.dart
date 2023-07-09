import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
         AssetsData.log
        ),
        const SizedBox(
          height: 6,
        ),
        const Text('Read Free Books',
        textAlign: TextAlign.center,),
      ],
    );
  }
}
