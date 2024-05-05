import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/widgets/gl_bottom_navigation_bar.dart';
import 'package:w_sharme_beauty/core/widgets/gl_scaffold.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      body: navigationShell,
      bottomBar: GlBottomNavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onSelected: (value) {
          _goBranch(value);
        },
      ),
    );
  }
}
