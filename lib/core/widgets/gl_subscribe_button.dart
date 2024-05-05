import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class GlSubscribeButton extends StatefulWidget {
  const GlSubscribeButton({super.key});

  @override
  State<GlSubscribeButton> createState() => _GlSubscribeButtonState();
}

class _GlSubscribeButtonState extends State<GlSubscribeButton> {
  bool _isSubscribe = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSubscribe = !_isSubscribe;
        });
      },
      child: Container(
        height: 32,
        width: 112,
        decoration: BoxDecoration(
          color: _isSubscribe ? Colors.white : AppColors.purple,
          borderRadius: BorderRadius.circular(10),
          border: _isSubscribe ? Border.all(color: AppColors.grey) : null,
        ),
        child: Center(
          child: Text(
            _isSubscribe ? 'Вы подписаны' : 'Подписаться',
            style: AppStyles.w400f16.copyWith(
              color: _isSubscribe ? AppColors.grey : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
