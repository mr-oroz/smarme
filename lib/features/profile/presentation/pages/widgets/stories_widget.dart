import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/features/profile/data/models/stories_model.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    super.key,
    required this.storiesModel,
  });

  final List<StoriesModel> storiesModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: storiesModel.length,
        itemBuilder: (item, index) {
          final StoriesModel story = storiesModel[index];
          return Column(
            children: [
              Image.asset(
                story.image,
                color: AppColors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                story.title,
                style: AppStyles.w500f16.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
