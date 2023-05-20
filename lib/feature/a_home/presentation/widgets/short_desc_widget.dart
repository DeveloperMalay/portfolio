import 'dart:async';

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
  bool _isFirstWidgetVisible = true;
  late AnimationController _animationController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      setState(() {
        _isFirstWidgetVisible = !_isFirstWidgetVisible;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSwitcher(
        duration: _animationController.duration!,
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: _isFirstWidgetVisible ? firstDesc() : secondDesc(),
      ),
    );
  }

  Widget firstDesc() => Container(
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
      );
  Widget secondDesc() => SizedBox(
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
      );
}
