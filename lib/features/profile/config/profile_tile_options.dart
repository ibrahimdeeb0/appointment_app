import 'package:flutter/material.dart';

import 'package:doctors_app/core/theme/assets_manager.dart';

import '../data/models/profile_tile_model.dart';

enum ProfileOptionType {
  personalInfo,
  myTest,
  payment,
}

class ProfileOptionsConfig {
  static const List<ProfileListTileModel<ProfileOptionType>> profileOptions = [
    ProfileListTileModel(
      title: 'Personal Information',
      iconPath: AssetsManager.profilePersonalInfo,
      type: ProfileOptionType.personalInfo,
    ),
    ProfileListTileModel(
      title: 'My Test & Diagnostic',
      iconPath: AssetsManager.profileMyTestIcon,
      type: ProfileOptionType.myTest,
    ),
    ProfileListTileModel(
      title: 'Payment',
      iconPath: AssetsManager.profilePaymentIcon,
      type: ProfileOptionType.payment,
    ),
  ];

  static final Map<ProfileOptionType, ProfileOptionHandler> handleOptionPress =
      {
    ProfileOptionType.personalInfo: PersonalInfoOption(),
    // ProfileOptionType.myTest: MyTestOption(),
    // ProfileOptionType.payment: PaymentOption(),
  };
}

abstract class ProfileOptionHandler {
  void onTap();
}

class PersonalInfoOption extends ProfileOptionHandler {
  @override
  void onTap() {
    debugPrint('Personal Info Press');
  }
}

class MyTestOption extends ProfileOptionHandler {
  @override
  void onTap() {
    debugPrint('My Test Press');
  }
}

class PaymentOption extends ProfileOptionHandler {
  @override
  void onTap() {
    debugPrint('Payment Press');
  }
}
