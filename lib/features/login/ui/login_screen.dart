import 'package:doctors_app/core/helpers/spacing.dart';
import 'package:doctors_app/core/theming/styles.dart';
import 'package:doctors_app/core/widgets/app_text_form_field.dart';
import 'package:doctors_app/core/widgets/app_text_button.dart';
import 'package:doctors_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctors_app/features/login/ui/widgets/by_logging_you_agree_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  void toggleObscureText() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30.h,
            horizontal: 30.w,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: AppTextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: AppTextStyles.font14GreyRegular,
              ),
              verticalSpace(36),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const AppTextFormField(
                      hintText: 'Email',
                    ),
                    verticalSpace(16),
                    AppTextFormField(
                      hintText: 'Password',
                      isObscureText: isObscureText,
                      suffixIcon: IconButton(
                        onPressed: toggleObscureText,
                        icon: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorsManager.lightGray,
                        ),
                      ),
                    ),
                    verticalSpace(25),
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      onPressed: () {},
                      buttonText: 'Login',
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpace(20),
                    const ByLoggingYouAgreeText(),
                    verticalSpace(40),
                    AlreadyHaveAccountText(
                      onPressSignUp: () {},
                    ), 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
