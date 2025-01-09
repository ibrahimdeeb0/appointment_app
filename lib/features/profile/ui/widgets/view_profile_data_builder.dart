import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:doctors_app/features/profile/logic/cubit/profile_state.dart';

class ViewProfileDataBuilder extends StatelessWidget {
  const ViewProfileDataBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) =>
          current is ProfileDataLoading ||
          current is ProfileDataSuccess ||
          current is ProfileDataError,
      builder: (context, state) {
        return state.maybeWhen(
          profileDataLoading: () => const SizedBox.shrink(),
          profileDataSuccess: (data) {
            return Column(
              children: [
                Text(
                  data[0].name ?? '',
                  style: AppTextStyles.profileTitle,
                ),
                8.spacingVertical,
                Text(
                  data[0].email ?? '',
                  style: AppTextStyles.body14GrayRegular,
                ),
              ],
            );
          },
          profileDataError: (apiErrorModel) {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
