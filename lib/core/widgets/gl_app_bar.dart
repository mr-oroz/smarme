import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class GlAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlAppBar({
    super.key,
    this.title,
    this.leading,
    this.action,
    this.centerTitle,
  });

  final Widget? title;
  final Widget? leading;
  final Widget? action;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (leading != null)
                Align(
                  alignment: Alignment.centerLeft,
                  child: leading,
                ),
              if (title != null) Center(child: title),
              if (action != null)
                Align(
                  alignment: Alignment.centerRight,
                  child: action,
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
