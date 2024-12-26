import 'package:doctors_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'widgets/bottom_nav_config.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentScreen = BottomNavConfig.screens[_selectedIndex];
    return Scaffold(
      appBar: currentScreen.buildAppBar(context),
      body: IndexedStack(
        index: _selectedIndex,
        children: BottomNavConfig.screens
            .map((screen) => screen.buildBody(context))
            .toList(),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.flip,
        initialActiveIndex: _selectedIndex,
        backgroundColor: AppColors.blue,
        items: BottomNavConfig.tabItems,
        onTap: _onTabTapped,
      ),
    );
  }
}
