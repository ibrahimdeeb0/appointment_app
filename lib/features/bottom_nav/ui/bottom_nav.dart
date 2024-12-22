import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../appointments/ui/appointments_screen.dart';
import '../../home/ui/home_screen.dart';
import '../../home/logic/home_cubit.dart';
import '../../inbox/ui/inbox_screen.dart';
import '../../profile/ui/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [];

  final List<Map<String, String>> bottomNavItems = [
    {'icon': 'assets/svgs/bottom_nav_home.svg', 'title': 'Home'},
    {'icon': 'assets/svgs/bottom_nav_inbox.svg', 'title': 'Inbox'},
    {
      'icon': 'assets/svgs/bottom_nav_appointments.svg',
      'title': 'Appointments',
    },
    {'icon': 'assets/svgs/bottom_nav_profile.svg', 'title': 'Profile'},
  ];

  @override
  void initState() {
    super.initState();

    _screens.addAll([
      BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: const HomeScreen(),
      ),
      const InboxScreen(),
      const AppointmentScreen(),
      const ProfileScreen(),
    ]);
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<TabItem> tabItems = bottomNavItems.map((item) {
      return TabItem(
        icon: SvgPicture.asset(
          item['icon']!,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        title: item['title'],
      );
    }).toList();
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.flip,
        initialActiveIndex: _selectedIndex,
        backgroundColor: AppColors.blue,
        items: tabItems,
        onTap: _onTabTapped,
      ),
    );
  }
}
