import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/features/sign_up/ui/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: AppTextStyles.body14DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppTextStyles.caption13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(SignUpRoutes.signUp);
              },
          ),
        ],
      ),
    );
  }
}
