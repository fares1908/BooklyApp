import 'package:bookly_app/CONSTANCE.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/features/Home/presentation/views/home_veiw.dart';
import 'package:bookly_app/features/Splash_veiw/presentation/views/widgets/sliding_text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigation();

  }






  @override
  void dispose() {
    super.dispose();
    animationController.dispose();


  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.log),
         const SizedBox(
           height: 6,
         ),
         SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin: const Offset(0,11),end: Offset.zero).animate(animationController);
    animationController.forward();
  }
  void navigation() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(const HomeScreen() ,duration:kDuration ,transition: Transition.downToUp,
      routeName: 'dddd',
      );
    });
  }
}


