import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:flutter/material.dart';

class ListVeiwItem extends StatelessWidget {
  const ListVeiwItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            fit: BoxFit.cover,
       image: AssetImage(AssetsData.test)
          ),
        ),
      ),
    );
  }
}