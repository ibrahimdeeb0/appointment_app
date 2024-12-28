import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class DoctorsRecommendSeeAll extends StatelessWidget {
  const DoctorsRecommendSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recommendation Doctor',
          style: AppTextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: AppTextStyles.font12BlueRegular,
          ),
        ),
      ],
    );
  }
}
