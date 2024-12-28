import 'package:doctors_app/core/theme/assets_manager.dart';
import 'package:flutter/material.dart';

final List<ProfileOption> profileOptions = [
  ProfileOption(
    title: 'Personal Information',
    iconPath: AssetsManager.profilePersonalInfo,
    onTap: () {
      // Handle tap
    },
  ),
  const ProfileOption(
    title: 'My Test & Diagnostic',
    iconPath: AssetsManager.profileMyTestIcon,
  ),
  const ProfileOption(
    title: 'Payment',
    iconPath: AssetsManager.profilePaymentIcon,
  ),
];

class ProfileOption {
  final String title;
  final String iconPath;
  final VoidCallback? onTap;

  const ProfileOption({
    required this.title,
    required this.iconPath,
    this.onTap,
  });
}
