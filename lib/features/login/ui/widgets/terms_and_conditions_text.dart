import 'package:doctors_app/core/theme/app_text_styles.dart';
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
            style: AppTextStyles.caption13GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions ',
            style: AppTextStyles.caption13DartBlueMedium,
          ),
          TextSpan(
            text: 'and',
            style: AppTextStyles.caption13GrayRegular.copyWith(height: 1.8),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: AppTextStyles.caption13DartBlueMedium,
          ),
        ],
      ),
    );
  }
}
