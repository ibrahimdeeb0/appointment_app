import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctors_app/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:doctors_app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../logic/sign_up_cubit.dart';
import 'widgets/already_have_account_text.dart';
import 'widgets/terms_and_conditions_text.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: AppTextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
