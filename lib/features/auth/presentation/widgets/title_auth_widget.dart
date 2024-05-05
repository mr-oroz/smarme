import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class TitleAuthWidget extends StatelessWidget {
  const TitleAuthWidget({
    super.key, required this.title,
  });

  final String title;  

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.w500f38,
    );
  }
}
