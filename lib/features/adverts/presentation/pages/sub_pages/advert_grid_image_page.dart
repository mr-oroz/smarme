import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

List<String> images = [
  Assets.images.serviceImg1.path,
  Assets.images.serviceImg2.path,
  Assets.images.serviceImg3.path,
  Assets.images.serviceImg4.path,
  Assets.images.serviceImg5.path,
  Assets.images.serviceImg6.path,
];

final List<double> heights = [220, 150, 190, 206, 190, 230];

class AdverGridImagePage extends StatelessWidget {
  const AdverGridImagePage({super.key});

  double getHeightForIndex(int index) {
    return heights[index % heights.length];
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      padding: const EdgeInsets.only(top: 15),
      itemCount: images.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      itemBuilder: (context, index) {
        final double height = getHeightForIndex(index);
        return GestureDetector(
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
            height: height,
          ),
        );
      },
    );
  }
}
