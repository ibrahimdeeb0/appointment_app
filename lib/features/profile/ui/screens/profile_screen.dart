import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bottom_nav/ui/widgets/bottom_nav_screen.dart';
import '../../logic/cubit/profile_cubit.dart';
import '../widgets/profile_appbar.dart';
import '../widgets/profile_body_widget.dart';
import '../widgets/profile_header_image_widget.dart';

class ProfileScreen extends StatelessWidget implements BottomNavScreen {
  const ProfileScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const ProfileAppBar();
  }

  @override
  Widget buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>()..getProfileData(),
      child: Container(
        color: AppColors.mainBlue,
        child: Stack(
          children: [
            // body
            const ProfileBodyWidget(),

            // Header Circle Image
            ProfileHeaderImageWidget(
              onEdit: () {},
              imagePath: AssetsManager.profileHeaderImg,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }
}
