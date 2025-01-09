import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';
import 'package:doctors_app/core/widgets/app_text_form_field.dart';

import '../../../bottom_nav/ui/widgets/bottom_nav_screen.dart';
import '../../config/list_dummy_massage_data.dart';
import '../widgets/message_card.dart';

class InboxScreen extends StatelessWidget implements BottomNavScreen {
  const InboxScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Massage'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AssetsManager.inboxAddMassage, width: 24.w),
        ),
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          //? Search Bar
          Row(
            children: [
              SizedBox(
                width: 300.w,
                child: AppTextFormField(
                  hintText: 'Search Message',
                  validator: (value) => null,
                  backgroundColor: AppColors.fillColor,
                  prefixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(start: 14.w, end: 12.w),
                    child: SvgPicture.asset(
                      AssetsManager.inboxSearchIcon,
                      width: 20.w,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetsManager.inboxFilterIcon,
                  width: 24.w,
                ),
              ),
            ],
          ),
          24.spacingVertical,
          //? Message List
          Expanded(
            child: ListView.builder(
              itemCount: ListDummyMassageData.messageData.length,
              // shrinkWrap: true,
              itemBuilder: (context, index) {
                final message = ListDummyMassageData.messageData[index];
                return MessageCard(
                  name: message['name'],
                  message: message['message'],
                  specialty: message['specialty'],
                  time: message['time'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }
}
