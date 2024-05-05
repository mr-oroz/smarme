import 'package:flutter/material.dart';

class GlScaffold extends StatelessWidget {
  const GlScaffold({
    super.key,
    this.appBar,
    this.bottomBar,
    this.horizontalPadding,
    this.body,
  });

  final PreferredSizeWidget? appBar;
  final Widget? bottomBar;
  final double? horizontalPadding;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0),
          child: body,
        ),
        bottomNavigationBar: bottomBar,
      ),
    );
  }
}
