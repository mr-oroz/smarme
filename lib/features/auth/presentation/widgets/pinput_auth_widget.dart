import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinputAuthWidget extends StatefulWidget {
  const PinputAuthWidget({
    super.key,
  });

  @override
  State<PinputAuthWidget> createState() => _PinputAuthWidgetState();
}

class _PinputAuthWidgetState extends State<PinputAuthWidget> {
  final defaultPinTheme = PinTheme(
    width: 80,
    height: 70,
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
      color: Color(0xFF0A0A0A),
    ),
    decoration: BoxDecoration(
      color: const Color(0xFFF3F3F3),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 80,
    height: 70,
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
      color: Color(0xFF0A0A0A),
    ),
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0xFFBA75FE)),
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        onChanged: (val) {},
      ),
    );
  }
}
