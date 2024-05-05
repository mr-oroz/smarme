import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    this.imageUrls,
  });

  final List<String>? imageUrls;

  @override
  Widget build(BuildContext context) {
    return imageUrls!.length == 1
        ? ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: GlCachedNetworImage(
              height: 394.h,
              urlImage: imageUrls![0],
            ),
          )
        : SizedBox(
            height: 240.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: List.generate(
                  imageUrls!.length,
                  (index) {
                    return GlCachedNetworImage(
                      urlImage: imageUrls![index],
                    );
                  },
                ),
              ),
            ),
          );
  }
}
