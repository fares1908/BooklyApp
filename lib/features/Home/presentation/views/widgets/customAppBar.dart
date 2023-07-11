import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 34,
        horizontal: 7
      ),
      child: Row(
        children: [
          Image.asset(AssetsData.log,
            height: 15,
          ),
          const Spacer(),
          IconButton(onPressed: (){},
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