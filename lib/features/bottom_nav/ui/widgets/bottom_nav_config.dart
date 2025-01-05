import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../appointments/ui/appointments_screen.dart';
import '../../../home/ui/home_screen.dart';
import '../../../inbox/ui/inbox_screen.dart';
import '../../../profile/ui/screens/profile_screen.dart';
import 'bottom_nav_screen.dart';

class BottomNavConfig {
  // List of BottomNavScreens
  static final List<BottomNavScreen> screens = [
    const HomeScreen(),
    const InboxScreen(),
    const AppointmentScreen(),
    const ProfileScreen(),
  ];

  // Bottom Navigation Items Configuration
  static final List<Map<String, String>> _bottomNavItems = [
    {'icon': 'assets/svgs/bottom_nav_home.svg', 'title': 'Home'},
    {'icon': 'assets/svgs/bottom_nav_inbox.svg', 'title': 'Inbox'},
    {'icon': 'assets/svgs/bottom_nav_appointments.svg', 'title': 'Appointment'},
    {'icon': 'assets/svgs/bottom_nav_profile.svg', 'title': 'Profile'},
  ];

  // Get TabItems for BottomNavigationBar
  static List<TabItem<SvgPicture>> get tabItems => _bottomNavItems.map((item) {
        return TabItem<SvgPicture>(
          icon: SvgPicture.asset(
            item['icon']!,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          title: item['title'],
        );
      }).toList();
}