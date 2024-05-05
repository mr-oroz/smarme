import 'package:flutter/material.dart';

class BottomSheetUtil {
  static void showAppBottomSheet(
    BuildContext context,
    Widget child,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext bc) {
        return child;
      },
    );
  }
}
