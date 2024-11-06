import 'package:doctors_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  final VoidCallback onPressSignUp;
  const AlreadyHaveAccountText({
    super.key,
    required this.onPressSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: AppTextStyles.font13DarkBlueRegular,
          ),
          WidgetSpan(
            child: GestureDetector(
              onTap: onPressSignUp,
              child: Text(
                'Sign Up',
                style: AppTextStyles.font13BlueSemiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
