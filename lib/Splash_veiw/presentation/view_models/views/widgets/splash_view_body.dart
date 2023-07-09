import 'package:bookly_app/Splash_veiw/presentation/view_models/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';

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
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation=Tween<Offset>(begin: const Offset(0,11),end: Offset.zero).animate(animationController);
    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.log),
         SizedBox(
           height: 6,
         ),
         SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}


