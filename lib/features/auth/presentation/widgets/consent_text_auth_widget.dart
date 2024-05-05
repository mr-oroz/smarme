import 'package:flutter/material.dart';

class ConsentTextAuthWidget extends StatefulWidget {
  const ConsentTextAuthWidget({super.key});

  @override
  State<ConsentTextAuthWidget> createState() => _ConsentTextAuthWidgetState();
}

class _ConsentTextAuthWidgetState extends State<ConsentTextAuthWidget> {
  bool _toggle = false;
  void toggleClick() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    const mainColor = Color(0xFFBA75FE);
    return Row(
      children: [
        Container(
          width: 26,
          height: 26,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: mainColor,
              ),
              shape: BoxShape.circle,),
          child: InkWell(
            onTap: toggleClick,
            child: _toggle
                ? Container(
                    width: 26,
                    height: 26,
                    decoration:
                        const BoxDecoration(color: mainColor, shape: BoxShape.circle),
                  )
                : null,
          ),
        ),
        const SizedBox(width: 6),
        RichText(
          text:  const TextSpan(
            text: 'Я даю согласие на',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF0A0A0A),
            ),
            children: <InlineSpan>[
              WidgetSpan(
                child: SizedBox(
                  width: 3,
                ),
              ),
              TextSpan(
                text: 'рассылку уведомлений.',
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
