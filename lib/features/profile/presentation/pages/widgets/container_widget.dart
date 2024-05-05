import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.text,
    required this.widget,
    this.onTap,
  });
  final String text;
  final Widget widget;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: const Color(0xffF3F3F3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              children: [
                widget,
                const SizedBox(width: 7),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
