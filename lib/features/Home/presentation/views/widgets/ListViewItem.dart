import 'package:bookly_app/core/utils/assetsdata.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewItemImage extends StatelessWidget {
  ListViewItemImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(
            imageUrl: imageUrl,
        fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          progressIndicatorBuilder: (context, url, progress) => Center(child: const CircularProgressIndicator())
        )
      ),
    );
  }
}

class BookingRate extends StatelessWidget {
  const BookingRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text('(245)',
            style: Styles.textStyle14.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}
