import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 10
      ),
      child: Row(
        children: [
          Image.asset(AssetsData.log,
            height: 15,
          ),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 14,
            ),
          )
        ],
      ),
    );
  }
}