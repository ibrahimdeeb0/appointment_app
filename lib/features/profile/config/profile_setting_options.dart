import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:doctors_app/core/helpers/shared_pref_helper.dart';
import 'package:doctors_app/core/widgets/app_dialog.dart';
import 'package:doctors_app/features/login/ui/routes.dart';
import 'package:flutter/material.dart';

import 'package:doctors_app/core/theme/assets_manager.dart';

import '../data/models/profile_tile_model.dart';

enum SettingType {
  notification,
  fqa,
  language,
  logout,
}

class ProfileSettingsConfig {
  static const List<ProfileListTileModel<SettingType>> settingOptions = [
    ProfileListTileModel(
      title: 'Notification',
      iconPath: AssetsManager.notifications,
      type: SettingType.notification,
    ),
    ProfileListTileModel(
      title: 'FQA',
      iconPath: AssetsManager.settingFQA,
      type: SettingType.fqa,
    ),
    ProfileListTileModel(
      title: 'Language',
      iconPath: AssetsManager.settingLanguage,
      type: SettingType.language,
    ),
    ProfileListTileModel(
      title: 'Logout',
      iconPath: AssetsManager.settingLogout,
      type: SettingType.logout,
    ),
  ];

  static final Map<SettingType, ProfileSettingHandler> settingHandlersTap = {
    SettingType.notification: NotificationHandler(),
    SettingType.fqa: FAQHandler(),
    SettingType.language: LanguageHandler(),
    SettingType.logout: LogoutHandler(),
  };
}

abstract class ProfileSettingHandler {
  void onTap(BuildContext context);
}

class NotificationHandler extends ProfileSettingHandler {
  @override
  void onTap(BuildContext context) {
    debugPrint('Notification Option');
  }
}

class FAQHandler extends ProfileSettingHandler {
  @override
  void onTap(BuildContext context) {
    debugPrint('FQA Option');
  }
}

class LanguageHandler extends ProfileSettingHandler {
  @override
  void onTap(BuildContext context) {
    debugPrint('Language Option');
  }
}

class LogoutHandler extends ProfileSettingHandler {
  @override
  void onTap(BuildContext context) async {
    debugPrint('Logout Option');
    bool isLogout = await AppDialog.showConfirmation(
      context: context,
      title: 'Logout',
      message:
          'You’ll need to enter your username and password next time you want to login',
    );

    if (isLogout) {
      // Clear all saved data
      SharedPrefHelper.clearAllData();
      SharedPrefHelper.clearAllSecuredData();

      // Navigate to login screen and remove all other screens
      context.name(
        LoginRoutes.login, // login route name
        predicate: (Route<dynamic> route) => false, // Remove all routes
      );
    }
  }
}
