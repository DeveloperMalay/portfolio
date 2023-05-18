import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/config/app_colors/app_colors.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 15.w,
              child: Divider(
                color: AppColors.greenColor,
                height: 10.h,
                thickness: 1,
              ),
            ),
            SizedBox(width: 2.w),
            Text('What I Do', style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
        Text(
          'I enjoy creating Beautiful\nand Aesthetic looking apps both\nfor Android and IOS',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontSize: 45.r),
        ),
        SizedBox(
          height: 100.h,
        ),
        Text(
          'Think. Make.\nSolve.',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontSize: 90.r),
        ),
        SizedBox(height: 60.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.blueColor),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contact Me',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: AppColors.white)),
              const Icon(
                Icons.arrow_forward,
                color: AppColors.white,
              )
            ],
          ),
        )

        // Text(
        //   'Services I Offer',
        //   style: Theme.of(context).textTheme.headlineLarge,
        // ),
        // SizedBox(
        //   width: 80.w,
        //   child: Divider(
        //     color: AppColors.greenColor,
        //     height: 10.h,
        //     thickness: 5,
        //   ),
        // ),
        // SizedBox(
        //   height: 500.h,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       shrinkWrap: true,
        //       itemCount: 3,
        //       itemBuilder: (context, index) {
        //         return ServicesCardDesign(
        //             imageUrl: servieesList[index].imageUrl,
        //             title: servieesList[index].title,
        //             desc: servieesList[index].desc);
        //       }),
        // ),
      ],
    );
  }
}
