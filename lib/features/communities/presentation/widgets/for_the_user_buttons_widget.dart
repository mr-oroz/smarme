import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router_contants.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class ForTheUserButtonsWidget extends StatefulWidget {
  const ForTheUserButtonsWidget({super.key});

  @override
  _ForTheUserButtonsWidgetState createState() =>
      _ForTheUserButtonsWidgetState();
}

class _ForTheUserButtonsWidgetState extends State<ForTheUserButtonsWidget> {
  bool _isSubscribe = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSubscribe = !_isSubscribe;
            });
          },
          child: Container(
            height: 47,
            width: 172,
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
        ),
        GestureDetector(
          onTap: () {
            context.push('/home/${RouterContants.chat}');
          },
          child: Container(
            height: 47,
            width: 172,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.purple),
            ),
            child: Center(
              child: Text(
                'Перейти в чат',
                style: AppStyles.w400f16.copyWith(
                  color: AppColors.purple,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
