import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/app_colors/app_colors.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget(
      {super.key, required this.title, required this.details});
  final String title;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'App create using Flutter and Dart',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            )),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(
            'Flutter,Dart',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(right: 10.w, left: 10.w, top: 5.h, bottom: 60.h),
          child: Text(details),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.white)),
          child: Text(
            'Check Project',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 30.h)
      ]),
    );
  }
}
