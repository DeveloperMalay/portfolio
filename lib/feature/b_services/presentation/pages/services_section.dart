import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/config/app_colors/app_colors.dart';
import 'package:web_portfolio/feature/b_services/presentation/widgets/services_card_design.dart';

import '../../data/model/services_details_model.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Services I Offer',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          width: 80.w,
          child: Divider(
            color: AppColors.greenColor,
            height: 10.h,
            thickness: 5,
          ),
        ),
        SizedBox(
          height: 500.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ServicesCardDesign(
                    imageUrl: servieesList[index].imageUrl,
                    title: servieesList[index].title,
                    desc: servieesList[index].desc);
              }),
        ),
      ],
    );
  }
}
