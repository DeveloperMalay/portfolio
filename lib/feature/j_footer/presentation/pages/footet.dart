import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_portfolio/config/app_colors/app_colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      decoration: const BoxDecoration(color: AppColors.black),
      child: Row(
        children: [
          Text(
            'Get in touch with me',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              children: [
                const Icon(Icons.mail, color: AppColors.greenColor),
                SizedBox(width: 2.w),
                Text(
                  'developermalay@gmail.com',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.github,
                    color: AppColors.greenColor),
                SizedBox(width: 2.w),
                Text(
                  'Github',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.linkedin,
                    color: AppColors.greenColor),
                SizedBox(width: 2.w),
                Text(
                  'Linkedin',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.twitter,
                    color: AppColors.greenColor),
                SizedBox(width: 2.w),
                Text(
                  'Twitter',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}