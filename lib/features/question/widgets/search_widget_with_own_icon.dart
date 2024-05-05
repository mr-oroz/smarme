import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class SearchWidgetOwnIcon extends StatelessWidget {
  const SearchWidgetOwnIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        constraints: const BoxConstraints(
          maxHeight: 46,
        ),
        filled: true,
        fillColor: AppColors.lightGrey,
        hintText: 'Поиск',
        hintStyle: const TextStyle(color: AppColors.darkGrey),
        prefixIcon: const Icon(Icons.search, color: AppColors.darkGrey),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
