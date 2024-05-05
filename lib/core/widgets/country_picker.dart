import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class CountyPicker extends StatelessWidget {
  const CountyPicker({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      initialCountryCode: 'KG',
      controller: controller,
      decoration: const InputDecoration(
        counterText: '',
        contentPadding: EdgeInsets.all(20),
        hintText: 'Номер телефона',
        fillColor: AppColors.lightGrey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
