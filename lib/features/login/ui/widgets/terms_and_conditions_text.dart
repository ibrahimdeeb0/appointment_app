import 'package:doctors_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppTextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            style: AppTextStyles.font13DartBlueMedium,
          ),
          TextSpan(
            text: 'and',
            style: AppTextStyles.font13GreyRegular.copyWith(height: 1.8),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: AppTextStyles.font13DartBlueMedium,
          ),
        ],
      ),
    );
  }
}
