import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/config/app_colors/app_colors.dart';

class ServicesCardDesign extends StatelessWidget {
  const ServicesCardDesign(
      {super.key,
      required this.imageUrl,
      required this.desc,
      required this.title});
  final String imageUrl;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      decoration: BoxDecoration(
          color: AppColors.white,
          // boxShadow: const [
          //   BoxShadow(
          //     color: Color.fromARGB(255, 228, 228, 228),
          //     blurRadius: 10.0,
          //     spreadRadius: 2,
          //     offset: Offset(8, 5),
          //   )
          // ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(255, 228, 228, 228))),
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          )
        ],
      ),
    );
  }
}
