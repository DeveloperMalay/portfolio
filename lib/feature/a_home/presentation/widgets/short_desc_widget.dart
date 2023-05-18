import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/app_colors/app_colors.dart';

class ShortDescWidget extends StatefulWidget {
  const ShortDescWidget({super.key, required this.change});
  final bool change;

  @override
  State<ShortDescWidget> createState() => _ShortDescWidgetState();
}

class _ShortDescWidgetState extends State<ShortDescWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> aniamtion;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat();
    aniamtion = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.change
        ? AnimatedSwitcher(
            duration: const Duration(seconds: 10),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: FadeTransition(
              opacity: aniamtion,
              child: Container(
                alignment: Alignment.center,
                height: 250.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Android - Flutter -  App Developer',
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text('Malay Pandit',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 45.r)),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: 40.w,
                            child: Divider(
                                color: AppColors.greenColor,
                                height: 10.h,
                                thickness: 1)),
                        SizedBox(width: 5.w),
                        Text('Code - Coffee - Cosmos',
                            style: Theme.of(context).textTheme.displaySmall)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        : AnimatedSwitcher(
            duration: const Duration(seconds: 10),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: FadeTransition(
              opacity: aniamtion,
              child: SizedBox(
                height: 250.h,
                child: Column(
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
                        Text('Malay Pandit',
                            style: Theme.of(context).textTheme.displayMedium),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text("Hello, my\nname's Malay.\nI'm a App\nDeveloper.",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: 45.r)),
                  ],
                ),
              ),
            ),
          );
  }
}
