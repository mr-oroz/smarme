import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class GlCachedNetworImage extends StatelessWidget {
  const GlCachedNetworImage({
    super.key,
    this.urlImage,
    this.height,
    this.width,
  });

  final String? urlImage;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: height,
      height: width,
      imageUrl: urlImage ?? '',
      fit: BoxFit.cover,
      //placeholder: (context, url) => Container(
      //  color: AppColors.lightGrey,
      //),
      errorWidget: (context, url, error) => Container(
        decoration: const BoxDecoration(
          color: AppColors.lightGrey,
        ),
        child: const Icon(
          Icons.image,
          color: Colors.grey,
          size: 80,
        ),
      ),
    );
  }
}
