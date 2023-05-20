import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/feature/b_services/presentation/pages/services_section.dart';

import '../../../c_projects/presentation/pages/projects_section.dart';
import '../../../k_footer/presentation/pages/footet.dart';

import '../widgets/short_desc_widget.dart';
import 'expample.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool change = false;
  bool hoverService = false;
  changeDesc() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        change = !change;
      });
    });
  }

  @override
  void initState() {
    changeDesc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  SizedBox(width: 10.w),
                  Text(
                    'Portfolio',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const Spacer(),
                  InkWell(
                    onHover: (e) {},
                    child: Text(
                      'Services',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  InkWell(
                    onHover: (e) {
                      setState(() {
                        hoverService = e;
                      });
                    },
                    child: Text(
                      'Projects',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return ScaleTransition(
                                  scale: animation, child: child);
                            },
                            child: ShortDescWidget(change: change)),
                          
                        Image.asset(
                          'assets/videos/v1.gif',
                          // height: 300.h,
                          // fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              AutoFadeTransitionExample(),
              SizedBox(height: 40.h),
              FadeInDown(
                child: Padding(
                  padding: EdgeInsets.only(left: 50.w,right: 0),
                  child: const ServicesSection(),
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'I Build Apps \nDesigned For Sales',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontSize: 45.r),
                    ),
                    Image.asset(
                      'assets/videos/v3.gif',
                      height: 450.h,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              ProjectsSection(),
              const FooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
