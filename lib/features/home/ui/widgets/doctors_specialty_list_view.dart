import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specializations_response_model.dart';
import 'doctors_specialty_list_view_item.dart';

class DoctorsSpecialtyListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorsSpecialtyListView(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialtyListViewItem(
            specializationsData: specializationDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
